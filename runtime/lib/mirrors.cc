// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

#include "lib/invocation_mirror.h"
#include "vm/bootstrap_natives.h"
#include "vm/class_finalizer.h"
#include "vm/compiler.h"
#include "vm/dart_entry.h"
#include "vm/exceptions.h"
#include "vm/object_store.h"
#include "vm/parser.h"
#include "vm/port.h"
#include "vm/resolver.h"
#include "vm/symbols.h"

namespace dart {

static RawInstance* CreateMirror(const String& mirror_class_name,
                                 const Array& constructor_arguments) {
  const Library& mirrors_lib = Library::Handle(Library::MirrorsLibrary());
  const String& constructor_name = Symbols::Dot();

  const Object& result = Object::Handle(
      DartLibraryCalls::InstanceCreate(mirrors_lib,
                                       mirror_class_name,
                                       constructor_name,
                                       constructor_arguments));
  ASSERT(!result.IsError());
  return Instance::Cast(result).raw();
}


static void ThrowMirroredCompilationError(const String& message) {
  Array& args = Array::Handle(Array::New(1));
  args.SetAt(0, message);

  Exceptions::ThrowByType(Exceptions::kMirroredCompilationError, args);
  UNREACHABLE();
}


static void ThrowInvokeError(const Error& error) {
  if (error.IsLanguageError()) {
    // A compilation error that was delayed by lazy compilation.
    const LanguageError& compilation_error = LanguageError::Cast(error);
    String& message = String::Handle(compilation_error.message());
    ThrowMirroredCompilationError(message);
    UNREACHABLE();
  }
  Exceptions::PropagateError(error);
  UNREACHABLE();
}


// Conventions:
// * For throwing a NSM in a class klass we use its runtime type as receiver,
//   i.e., klass.RareType().
// * For throwing a NSM in a library, we just pass the null instance as
//   receiver.
static void ThrowNoSuchMethod(const Instance& receiver,
                              const String& function_name,
                              const Function& function,
                              const InvocationMirror::Call call,
                              const InvocationMirror::Type type) {
  const Smi& invocation_type = Smi::Handle(Smi::New(
      InvocationMirror::EncodeType(call, type)));

  const Array& args = Array::Handle(Array::New(6));
  args.SetAt(0, receiver);
  args.SetAt(1, function_name);
  args.SetAt(2, invocation_type);
  // Parameter 3 (actual arguments): We omit this parameter to get the same
  // error message as one would get by invoking the function non-reflectively.
  // Parameter 4 (named arguments): We omit this parameters since we cannot
  // invoke functions with named parameters reflectively (using mirrors).
  if (!function.IsNull()) {
    const int total_num_parameters = function.NumParameters();
    const Array& array = Array::Handle(Array::New(total_num_parameters));
    String& param_name = String::Handle();
    for (int i = 0; i < total_num_parameters; i++) {
      param_name = function.ParameterNameAt(i);
      array.SetAt(i, param_name);
    }
    args.SetAt(5, array);
  }

  Exceptions::ThrowByType(Exceptions::kNoSuchMethod, args);
  UNREACHABLE();
}


DEFINE_NATIVE_ENTRY(Mirrors_isLocalPort, 1) {
  GET_NON_NULL_NATIVE_ARGUMENT(Instance, port, arguments->NativeArgAt(0));

  // Get the port id from the SendPort instance.
  const Object& id_obj = Object::Handle(DartLibraryCalls::PortGetId(port));
  if (id_obj.IsError()) {
    Exceptions::PropagateError(Error::Cast(id_obj));
    UNREACHABLE();
  }
  ASSERT(id_obj.IsSmi() || id_obj.IsMint());
  Integer& id = Integer::Handle();
  id ^= id_obj.raw();
  Dart_Port port_id = static_cast<Dart_Port>(id.AsInt64Value());
  return Bool::Get(PortMap::IsLocalPort(port_id)).raw();
}

static void EnsureConstructorsAreCompiled(const Function& func) {
  if (func.kind() != RawFunction::kConstructor) return;
  const Class& cls = Class::Handle(func.Owner());
  const Error& error = Error::Handle(cls.EnsureIsFinalized(Isolate::Current()));
  if (!error.IsNull()) {
    ThrowInvokeError(error);
    UNREACHABLE();
  }
  if (!func.HasCode()) {
    const Error& error = Error::Handle(Compiler::CompileFunction(func));
    if (!error.IsNull()) {
      ThrowInvokeError(error);
      UNREACHABLE();
    }
  }
}

static RawInstance* CreateParameterMirrorList(const Function& func,
                                              const Instance& owner_mirror) {
  HANDLESCOPE(Isolate::Current());
  const intptr_t implicit_param_count = func.NumImplicitParameters();
  const intptr_t non_implicit_param_count = func.NumParameters() -
                                            implicit_param_count;
  const intptr_t index_of_first_optional_param =
      non_implicit_param_count - func.NumOptionalParameters();
  const intptr_t index_of_first_named_param =
      non_implicit_param_count - func.NumOptionalNamedParameters();
  const Array& results = Array::Handle(Array::New(non_implicit_param_count));
  const Array& args = Array::Handle(Array::New(9));

  // Return for synthetic functions and getters.
  if (func.IsGetterFunction() ||
      func.IsImplicitConstructor() ||
      func.IsImplicitGetterFunction() ||
      func.IsImplicitSetterFunction()) {
    return results.raw();
  }

  Smi& pos = Smi::Handle();
  String& name = String::Handle();
  Instance& param = Instance::Handle();
  Bool& is_final = Bool::Handle();
  Object& default_value = Object::Handle();
  Object& metadata = Object::Handle();

  // We force compilation of constructors to ensure the types of initializing
  // formals have been corrected. We do not force the compilation of all types
  // of functions because some have no body, e.g. signature functions.
  EnsureConstructorsAreCompiled(func);

  // Reparse the function for the following information:
  // * The default value of a parameter.
  // * Whether a parameters has been deflared as final.
  // * Any metadata associated with the parameter.
  const Object& result = Object::Handle(Parser::ParseFunctionParameters(func));
  if (result.IsError()) {
    ThrowInvokeError(Error::Cast(result));
    UNREACHABLE();
  }

  args.SetAt(0, MirrorReference::Handle(MirrorReference::New(func)));
  args.SetAt(2, owner_mirror);

  const Array& param_descriptor = Array::Cast(result);
  ASSERT(param_descriptor.Length() ==
         (Parser::kParameterEntrySize * non_implicit_param_count));
  for (intptr_t i = 0; i < non_implicit_param_count; i++) {
    pos ^= Smi::New(i);
    name ^= func.ParameterNameAt(implicit_param_count + i);
    is_final ^= param_descriptor.At(
        i * Parser::kParameterEntrySize + Parser::kParameterIsFinalOffset);
    default_value = param_descriptor.At(
        i * Parser::kParameterEntrySize + Parser::kParameterDefaultValueOffset);
    metadata = param_descriptor.At(
        i * Parser::kParameterEntrySize + Parser::kParameterMetadataOffset);

    ASSERT(default_value.IsNull() || default_value.IsInstance());

    // Arguments 0 (referent) and 2 (owner) are the same for all parameters. See
    // above.
    args.SetAt(1, name);
    args.SetAt(3, pos);
    args.SetAt(4, Bool::Get(i >= index_of_first_optional_param));
    args.SetAt(5, Bool::Get(i >= index_of_first_named_param));
    args.SetAt(6, is_final);
    args.SetAt(7, default_value);
    args.SetAt(8, metadata);
    param ^= CreateMirror(Symbols::_LocalParameterMirrorImpl(), args);
    results.SetAt(i, param);
  }
  results.MakeImmutable();
  return results.raw();
}


static RawInstance* CreateTypeVariableMirror(const TypeParameter& param,
                                             const Instance& owner_mirror) {
  const Array& args = Array::Handle(Array::New(3));
  args.SetAt(0, param);
  args.SetAt(1, String::Handle(param.name()));
  args.SetAt(2, owner_mirror);
  return CreateMirror(Symbols::_LocalTypeVariableMirrorImpl(), args);
}


// We create a list in native code and let Dart code create the type mirror
// object and the ordered map.
static RawInstance* CreateTypeVariableList(const Class& cls) {
  const TypeArguments& args = TypeArguments::Handle(cls.type_parameters());
  if (args.IsNull()) {
    return Object::empty_array().raw();
  }
  const Array& result = Array::Handle(Array::New(args.Length() * 2));
  TypeParameter& type = TypeParameter::Handle();
  String& name = String::Handle();
  for (intptr_t i = 0; i < args.Length(); i++) {
    type ^= args.TypeAt(i);
    ASSERT(type.IsTypeParameter());
    ASSERT(!type.IsMalformed());
    ASSERT(type.IsFinalized());
    name ^= type.name();
    result.SetAt(2 * i, name);
    result.SetAt(2 * i + 1, type);
  }
  return result.raw();
}


static RawInstance* CreateTypedefMirror(const Class& cls,
                                        const Instance& owner_mirror) {
  const Array& args = Array::Handle(Array::New(3));
  args.SetAt(0, MirrorReference::Handle(MirrorReference::New(cls)));
  args.SetAt(1, String::Handle(cls.UserVisibleName()));
  args.SetAt(2, owner_mirror);
  return CreateMirror(Symbols::_LocalTypedefMirrorImpl(), args);
}


static RawInstance* CreateFunctionTypeMirror(const Class& cls,
                                             const AbstractType& type) {
  const Array& args = Array::Handle(Array::New(2));
  args.SetAt(0, MirrorReference::Handle(MirrorReference::New(cls)));
  args.SetAt(1, type);
  return CreateMirror(Symbols::_LocalFunctionTypeMirrorImpl(), args);
}


static RawInstance* CreateMethodMirror(const Function& func,
                                       const Instance& owner_mirror) {
  const Array& args = Array::Handle(Array::New(12));
  args.SetAt(0, MirrorReference::Handle(MirrorReference::New(func)));

  String& name = String::Handle(func.name());
  name = String::IdentifierPrettyNameRetainPrivate(name);
  args.SetAt(1, name);

  args.SetAt(2, owner_mirror);
  args.SetAt(3, Bool::Get(func.is_static()));
  args.SetAt(4, Bool::Get(func.is_abstract()));
  args.SetAt(5, Bool::Get(func.IsGetterFunction()));
  args.SetAt(6, Bool::Get(func.IsSetterFunction()));

  bool isConstructor = (func.kind() == RawFunction::kConstructor);
  args.SetAt(7, Bool::Get(isConstructor));
  args.SetAt(8, Bool::Get(isConstructor && func.is_const()));
  args.SetAt(9, Bool::Get(isConstructor && func.IsConstructor()));
  args.SetAt(10, Bool::Get(isConstructor && func.is_redirecting()));
  args.SetAt(11, Bool::Get(isConstructor && func.IsFactory()));

  return CreateMirror(Symbols::_LocalMethodMirrorImpl(), args);
}


static RawInstance* CreateVariableMirror(const Field& field,
                                         const Instance& owner_mirror) {
  const MirrorReference& field_ref =
      MirrorReference::Handle(MirrorReference::New(field));

  const String& name = String::Handle(field.name());

  const Array& args = Array::Handle(Array::New(6));
  args.SetAt(0, field_ref);
  args.SetAt(1, name);
  args.SetAt(2, owner_mirror);
  args.SetAt(3, Object::null_instance());  // Null for type.
  args.SetAt(4, Bool::Get(field.is_static()));
  args.SetAt(5, Bool::Get(field.is_final()));

  return CreateMirror(Symbols::_LocalVariableMirrorImpl(), args);
}

static RawFunction* CallMethod(const Class& cls) {
  if (cls.IsSignatureClass()) {
    return cls.signature_function();
  }

  Class& lookup_cls = Class::Handle(cls.raw());
  Function& call_function = Function::Handle();
  do {
    call_function = lookup_cls.LookupDynamicFunction(Symbols::Call());
    if (!call_function.IsNull()) {
      return call_function.raw();
    }
    lookup_cls = lookup_cls.SuperClass();
  } while (!lookup_cls.IsNull());
  return Function::null();
}

static RawInstance* CreateClassMirror(const Class& cls,
                                      const AbstractType& type,
                                      const Bool& is_declaration,
                                      const Instance& owner_mirror) {
  ASSERT(!cls.IsDynamicClass() && !cls.IsVoidClass());
  ASSERT(!type.IsNull());
  ASSERT(type.IsFinalized());

  if (cls.IsSignatureClass()) {
    if (cls.IsCanonicalSignatureClass()) {
      // We represent function types as canonical signature classes.
      return CreateFunctionTypeMirror(cls, type);
    } else {
      // We represent typedefs as non-canonical signature classes.
      return CreateTypedefMirror(cls, owner_mirror);
    }
  }

  const Bool& is_generic = Bool::Get(cls.NumTypeParameters() != 0);
  const Bool& is_mixin_typedef = Bool::Get(cls.is_mixin_typedef());

  const Array& args = Array::Handle(Array::New(6));
  args.SetAt(0, MirrorReference::Handle(MirrorReference::New(cls)));
  args.SetAt(1, type);
  // We do not set the names of anonymous mixin applications because the mirrors
  // use a different naming convention than the VM (lib.S with lib.M and S&M
  // respectively).
  if (!cls.IsMixinApplication() || cls.is_mixin_typedef()) {
    args.SetAt(2, String::Handle(cls.Name()));
  }
  args.SetAt(3, is_generic);
  args.SetAt(4, is_mixin_typedef);
  args.SetAt(5, cls.NumTypeParameters() == 0 ? Bool::False() : is_declaration);
  return CreateMirror(Symbols::_LocalClassMirrorImpl(), args);
}


static RawInstance* CreateLibraryMirror(const Library& lib) {
  const Array& args = Array::Handle(Array::New(3));
  args.SetAt(0, MirrorReference::Handle(MirrorReference::New(lib)));
  String& str = String::Handle();
  str = lib.name();
  args.SetAt(1, str);
  str = lib.url();
  args.SetAt(2, str);
  return CreateMirror(Symbols::_LocalLibraryMirrorImpl(), args);
}


static RawInstance* CreateTypeMirror(const AbstractType& type) {
  ASSERT(type.IsFinalized());
  ASSERT(!type.IsMalformed());
  if (type.HasResolvedTypeClass()) {
    const Class& cls = Class::Handle(type.type_class());
    // Handle void and dynamic types.
    if (cls.IsVoidClass()) {
      Array& args = Array::Handle(Array::New(1));
      args.SetAt(0, Symbols::Void());
      // TODO(mlippautz): Create once in the VM isolate and retrieve from there.
      return CreateMirror(Symbols::_SpecialTypeMirrorImpl(), args);
    } else if (cls.IsDynamicClass()) {
      Array& args = Array::Handle(Array::New(1));
      args.SetAt(0, Symbols::Dynamic());
      // TODO(mlippautz): Create once in the VM isolate and retrieve from there.
      return CreateMirror(Symbols::_SpecialTypeMirrorImpl(), args);
    }
    return CreateClassMirror(cls, type, Bool::False(), Object::null_instance());
  } else if (type.IsTypeParameter()) {
    return CreateTypeVariableMirror(TypeParameter::Cast(type),
                                    Object::null_instance());
  } else if (type.IsBoundedType()) {
    AbstractType& actual_type =
        AbstractType::Handle(BoundedType::Cast(type).type());
    return CreateTypeMirror(actual_type);
  }
  UNREACHABLE();
  return Instance::null();
}


static RawInstance* CreateIsolateMirror() {
  Isolate* isolate = Isolate::Current();
  const String& debug_name = String::Handle(String::New(isolate->name()));
  const Library& root_library =
      Library::Handle(isolate, isolate->object_store()->root_library());
  const Instance& root_library_mirror =
      Instance::Handle(CreateLibraryMirror(root_library));

  const Array& args = Array::Handle(Array::New(2));
  args.SetAt(0, debug_name);
  args.SetAt(1, root_library_mirror);
  return CreateMirror(Symbols::_LocalIsolateMirrorImpl(), args);
}


static RawInstance* CreateMirrorSystem() {
  Isolate* isolate = Isolate::Current();
  const GrowableObjectArray& libraries =
      GrowableObjectArray::Handle(isolate->object_store()->libraries());

  const int num_libraries = libraries.Length();
  const Array& library_mirrors = Array::Handle(Array::New(num_libraries));
  Library& library = Library::Handle();
  Instance& library_mirror = Instance::Handle();

  for (int i = 0; i < num_libraries; i++) {
    library ^= libraries.At(i);
    library_mirror = CreateLibraryMirror(library);
    library_mirrors.SetAt(i, library_mirror);
  }

  const Instance& isolate_mirror = Instance::Handle(CreateIsolateMirror());

  const Array& args = Array::Handle(Array::New(2));
  args.SetAt(0, library_mirrors);
  args.SetAt(1, isolate_mirror);
  return CreateMirror(Symbols::_LocalMirrorSystemImpl(), args);
}


static RawInstance* ReturnResult(const Object& result) {
  if (result.IsError()) {
    ThrowInvokeError(Error::Cast(result));
    UNREACHABLE();
  }
  if (result.IsInstance()) {
    return Instance::Cast(result).raw();
  }
  ASSERT(result.IsNull());
  return Instance::null();
}


// Invoke the function, or noSuchMethod if it is null. Propagate any unhandled
// exceptions. Wrap and propagate any compilation errors.
static RawInstance* InvokeDynamicFunction(
    const Instance& receiver,
    const Function& function,
    const String& target_name,
    const Array& args,
    const Array& args_descriptor_array) {
  // Note "args" is already the internal arguments with the receiver as the
  // first element.
  Object& result = Object::Handle();
  ArgumentsDescriptor args_descriptor(args_descriptor_array);
  if (function.IsNull() ||
      !function.is_visible() ||
      !function.AreValidArguments(args_descriptor, NULL)) {
    result = DartEntry::InvokeNoSuchMethod(receiver,
                                           target_name,
                                           args,
                                           args_descriptor_array);
  } else {
    result = DartEntry::InvokeFunction(function,
                                       args,
                                       args_descriptor_array);
  }
  return ReturnResult(result);
}


static RawInstance* InvokeLibraryGetter(const Library& library,
                                        const String& getter_name,
                                        const bool throw_nsm_if_absent) {
  // To access a top-level we may need to use the Field or the getter Function.
  // The getter function may either be in the library or in the field's owner
  // class, depending on whether it was an actual getter, or an uninitialized
  // field.
  const Field& field = Field::Handle(
      library.LookupLocalField(getter_name));
  Function& getter = Function::Handle();
  if (field.IsNull()) {
    // No field found. Check for a getter in the lib.
    const String& internal_getter_name =
        String::Handle(Field::GetterName(getter_name));
    getter = library.LookupLocalFunction(internal_getter_name);
    if (getter.IsNull()) {
      getter = library.LookupLocalFunction(getter_name);
      if (!getter.IsNull()) {
        // Looking for a getter but found a regular method: closurize it.
        const Function& closure_function =
            Function::Handle(getter.ImplicitClosureFunction());
        return closure_function.ImplicitStaticClosure();
      }
    }
  } else {
    if (!field.IsUninitialized()) {
      return field.value();
    }
    // An uninitialized field was found.  Check for a getter in the field's
    // owner classs.
    const Class& klass = Class::Handle(field.owner());
    const String& internal_getter_name =
        String::Handle(Field::GetterName(getter_name));
    getter = klass.LookupStaticFunction(internal_getter_name);
  }

  if (!getter.IsNull() && getter.is_visible()) {
    // Invoke the getter and return the result.
    const Object& result = Object::Handle(
        DartEntry::InvokeFunction(getter, Object::empty_array()));
    return ReturnResult(result);
  }

  if (throw_nsm_if_absent) {
    ThrowNoSuchMethod(Instance::null_instance(),
                      getter_name,
                      getter,
                      InvocationMirror::kTopLevel,
                      InvocationMirror::kGetter);
    UNREACHABLE();
  }

  // Fall through case: Indicate that we didn't find any function or field using
  // a special null instance. This is different from a field being null. Callers
  // make sure that this null does not leak into Dartland.
  return Object::sentinel().raw();
}


// TODO(13656): Remove AllowPrivate.
static RawInstance* InvokeLibraryGetterAllowImports(
    const Library& library,
    const String& getter_name,
    const bool throw_nsm_if_absent) {
  // To access a top-level we may need to use the Field or the getter Function.
  // The getter function may either be in the library or in the field's owner
  // class, depending on whether it was an actual getter, or an uninitialized
  // field.
  const Field& field = Field::Handle(
      library.LookupFieldAllowPrivate(getter_name));
  Function& getter = Function::Handle();
  if (field.IsNull()) {
    // No field found. Check for a getter in the lib.
    const String& internal_getter_name =
        String::Handle(Field::GetterName(getter_name));
    getter = library.LookupFunctionAllowPrivate(internal_getter_name);
    if (getter.IsNull()) {
      getter = library.LookupFunctionAllowPrivate(getter_name);
      if (!getter.IsNull()) {
        // Looking for a getter but found a regular method: closurize it.
        const Function& closure_function =
            Function::Handle(getter.ImplicitClosureFunction());
        return closure_function.ImplicitStaticClosure();
      }
    }
  } else {
    if (!field.IsUninitialized()) {
      return field.value();
    }
    // An uninitialized field was found.  Check for a getter in the field's
    // owner classs.
    const Class& klass = Class::Handle(field.owner());
    const String& internal_getter_name =
        String::Handle(Field::GetterName(getter_name));
    getter = klass.LookupStaticFunction(internal_getter_name);
  }

  if (!getter.IsNull() && getter.is_visible()) {
    // Invoke the getter and return the result.
    const Object& result = Object::Handle(
        DartEntry::InvokeFunction(getter, Object::empty_array()));
    return ReturnResult(result);
  }

  if (throw_nsm_if_absent) {
    ThrowNoSuchMethod(Instance::null_instance(),
                      getter_name,
                      getter,
                      InvocationMirror::kTopLevel,
                      InvocationMirror::kGetter);
    UNREACHABLE();
  }

  // Fall through case: Indicate that we didn't find any function or field using
  // a special null instance. This is different from a field being null. Callers
  // make sure that this null does not leak into Dartland.
  return Object::sentinel().raw();
}


static RawInstance* InvokeClassGetter(const Class& klass,
                                      const String& getter_name,
                                      const bool throw_nsm_if_absent) {
  // Note static fields do not have implicit getters.
  const Field& field = Field::Handle(klass.LookupStaticField(getter_name));
  if (field.IsNull() || field.IsUninitialized()) {
    const String& internal_getter_name = String::Handle(
        Field::GetterName(getter_name));
    Function& getter = Function::Handle(
        klass.LookupStaticFunction(internal_getter_name));

    if (getter.IsNull() || !getter.is_visible()) {
      if (getter.IsNull()) {
        getter = klass.LookupStaticFunction(getter_name);
        if (!getter.IsNull()) {
          // Looking for a getter but found a regular method: closurize it.
          const Function& closure_function =
              Function::Handle(getter.ImplicitClosureFunction());
          return closure_function.ImplicitStaticClosure();
        }
      }
      if (throw_nsm_if_absent) {
        ThrowNoSuchMethod(AbstractType::Handle(klass.RareType()),
                          getter_name,
                          getter,
                          InvocationMirror::kStatic,
                          InvocationMirror::kGetter);
        UNREACHABLE();
      }
      // Fall through case: Indicate that we didn't find any function or field
      // using a special null instance. This is different from a field being
      // null. Callers make sure that this null does not leak into Dartland.
      return Object::sentinel().raw();
    }

    // Invoke the getter and return the result.
    const Object& result = Object::Handle(
        DartEntry::InvokeFunction(getter, Object::empty_array()));
    return ReturnResult(result);
  }
  return field.value();
}




static RawInstance* InvokeInstanceGetter(const Class& klass,
                                         const Instance& reflectee,
                                         const String& getter_name,
                                         const bool throw_nsm_if_absent) {
  const String& internal_getter_name = String::Handle(
      Field::GetterName(getter_name));
  Function& function = Function::Handle(
      Resolver::ResolveDynamicAnyArgs(klass, internal_getter_name));

  if (!function.IsNull() || throw_nsm_if_absent) {
    const int kNumArgs = 1;
    const Array& args = Array::Handle(Array::New(kNumArgs));
    args.SetAt(0, reflectee);
    const Array& args_descriptor =
        Array::Handle(ArgumentsDescriptor::New(args.Length()));

    // InvokeDynamic invokes NoSuchMethod if the provided function is null.
    return InvokeDynamicFunction(reflectee,
                                 function,
                                 internal_getter_name,
                                 args,
                                 args_descriptor);
  }

  // Fall through case: Indicate that we didn't find any function or field using
  // a special null instance. This is different from a field being null. Callers
  // make sure that this null does not leak into Dartland.
  return Object::sentinel().raw();
}


static RawInstance* LookupFunctionOrFieldInLibraryPrefix(
    const LibraryPrefix& prefix,
    const String& lookup_name) {
  const Object& entry = Object::Handle(prefix.LookupObject(lookup_name));
  if (!entry.IsNull()) {
    if (entry.IsField()) {
      const Field& field = Field::Cast(entry);
      const Class& field_owner = Class::Handle(field.owner());
      const Library& field_library = Library::Handle(field_owner.library());
      const Instance& result = Instance::Handle(
          InvokeLibraryGetterAllowImports(field_library, lookup_name, false));
      if (result.raw() != Object::sentinel().raw()) {
        return result.raw();
      }
    } else if (entry.IsFunction()) {
      const Function& func = Function::Cast(entry);
      const Function& closure_function = Function::Handle(
          func.ImplicitClosureFunction());
      return closure_function.ImplicitStaticClosure();
    }
  }

  // Fall through case: Indicate that we didn't find any function or field using
  // a special null instance. This is different from a field being null. Callers
  // make sure that this null does not leak into Dartland.
  return Object::sentinel().raw();
}


static RawInstance* LookupStaticFunctionOrFieldInClass(
    const Class& klass,
    const String& lookup_name) {
  Instance& result = Instance::Handle(
      InvokeClassGetter(klass, lookup_name, false));
  if (result.raw() != Object::sentinel().raw()) {
    return result.raw();
  }

  Function& func = Function::Handle();
  Class& lookup_class = Class::Handle(klass.raw());
  while (func.IsNull() && !lookup_class.IsNull()) {
    func ^= lookup_class.LookupStaticFunction(lookup_name);
    lookup_class = lookup_class.SuperClass();
  }
  if (!func.IsNull()) {
    const Function& closure_function = Function::Handle(
        func.ImplicitClosureFunction());
    ASSERT(!closure_function.IsNull());
    return closure_function.ImplicitStaticClosure();
  }

  // Fall through case: Indicate that we didn't find any function or field using
  // a special null instance. This is different from a field being null. Callers
  // make sure that this null does not leak into Dartland.
  return Object::sentinel().raw();
}


static RawInstance* LookupFunctionOrFieldInFunctionContext(
    const Function& func,
    const Context& ctx,
    const String& lookup_name) {
  const ContextScope& ctx_scope = ContextScope::Handle(func.context_scope());
  intptr_t this_index = -1;

  // Search local context.
  String& name = String::Handle();
  for (intptr_t i = 0; i < ctx_scope.num_variables(); i++) {
    name ^= ctx_scope.NameAt(i);
    if (name.Equals(lookup_name)) {
      return ctx.At(i);
    } else if (name.Equals(Symbols::This())) {
      // Record instance index to search for the field in the instance
      // afterwards.
      this_index = i;
    }
  }

  // Search the instance this function is attached to.
  if (this_index >= 0) {
    // Since we want the closurized version of a function, we can access, both,
    // functions and fields through their implicit getter name. If the implicit
    // getter does not exist for the function, a method extractor will be
    // created.
    const Class& owner = Class::Handle(func.Owner());
    const Instance& receiver = Instance::Handle(ctx.At(this_index));
    return InvokeInstanceGetter(owner, receiver, lookup_name, false);
  }

  // Fall through case: Indicate that we didn't find any function or field using
  // a special null instance. This is different from a field being null. Callers
  // make sure that this null does not leak into Dartland.
  return Object::sentinel().raw();
}


static RawInstance* LookupFunctionOrFieldInLibraryHelper(
    const Library& library,
    const String& class_name,
    const String& lookup_name) {
  if (class_name.IsNull()) {
    const Instance& result = Instance::Handle(
        InvokeLibraryGetterAllowImports(library, lookup_name, false));
    if (result.raw() != Object::sentinel().raw()) {
      return result.raw();
    }
    const Function& func = Function::Handle(
        library.LookupLocalFunction(lookup_name));
    if (!func.IsNull()) {
      const Function& closure_function = Function::Handle(
          func.ImplicitClosureFunction());
      return closure_function.ImplicitStaticClosure();
    }
  } else {
    const Class& cls = Class::Handle(
        library.LookupClass(class_name));
    if (!cls.IsNull()) {
      return LookupStaticFunctionOrFieldInClass(cls, lookup_name);
    }
  }

  // Fall through case: Indicate that we didn't find any function or field using
  // a special null instance. This is different from a field being null. Callers
  // make sure that this null does not leak into Dartland.
  return Object::sentinel().raw();
}


static RawInstance* LookupFunctionOrFieldInLibrary(const Library& library,
                                                   const String& class_name,
                                                   const String& lookup_name) {
  Instance& result = Instance::Handle();
  // Check current library.
  result ^= LookupFunctionOrFieldInLibraryHelper(
      library, class_name, lookup_name);
  if (result.raw() != Object::sentinel().raw()) {
    return result.raw();
  }
  // Check all imports.
  Library& lib_it = Library::Handle();
  for (intptr_t i = 0; i < library.num_imports(); i++) {
    lib_it ^= library.ImportLibraryAt(i);
    result ^= LookupFunctionOrFieldInLibraryHelper(
        lib_it, class_name, lookup_name);
    if (result.raw() != Object::sentinel().raw()) {
      return result.raw();
    }
  }

  // Fall through case: Indicate that we didn't find any function or field using
  // a special null instance. This is different from a field being null. Callers
  // make sure that this null does not leak into Dartland.
  return Object::sentinel().raw();
}


DEFINE_NATIVE_ENTRY(Mirrors_makeLocalMirrorSystem, 0) {
  return CreateMirrorSystem();
}


DEFINE_NATIVE_ENTRY(Mirrors_makeLocalClassMirror, 1) {
  GET_NON_NULL_NATIVE_ARGUMENT(AbstractType, type, arguments->NativeArgAt(0));
  ASSERT(!type.IsMalformed());
  ASSERT(type.IsFinalized());
  ASSERT(type.HasResolvedTypeClass());
  const Class& cls = Class::Handle(type.type_class());
  if (cls.IsDynamicClass() || cls.IsVoidClass()) {
    Exceptions::ThrowArgumentError(type);
    UNREACHABLE();
  }
  const AbstractType& stripped_type = AbstractType::Handle(cls.RareType());
  return CreateClassMirror(cls,
                           stripped_type,
                           Bool::True(),  // is_declaration
                           Object::null_instance());
}


DEFINE_NATIVE_ENTRY(Mirrors_makeLocalTypeMirror, 1) {
  GET_NON_NULL_NATIVE_ARGUMENT(AbstractType, type, arguments->NativeArgAt(0));
  return CreateTypeMirror(type);
}

DEFINE_NATIVE_ENTRY(Mirrors_mangleName, 2) {
  GET_NON_NULL_NATIVE_ARGUMENT(String, name, arguments->NativeArgAt(0));
  GET_NON_NULL_NATIVE_ARGUMENT(MirrorReference, ref, arguments->NativeArgAt(1));
  const Library& lib = Library::Handle(ref.GetLibraryReferent());
  return lib.IsPrivate(name) ? lib.PrivateName(name) : name.raw();
}

DEFINE_NATIVE_ENTRY(Mirrors_unmangleName, 1) {
  GET_NON_NULL_NATIVE_ARGUMENT(String, name, arguments->NativeArgAt(0));
  // It would be nice to unconditionally use IdentifierPrettyName, alas it
  // cannot cope with the symbols for the names of anonymous mixin applications.
  if (Library::IsPrivate(name) ||
      Field::IsGetterName(name) ||
      Field::IsSetterName(name)) {
    return String::IdentifierPrettyName(name);
  }
  return name.raw();
}


DEFINE_NATIVE_ENTRY(MirrorReference_equals, 2) {
  GET_NON_NULL_NATIVE_ARGUMENT(MirrorReference, a, arguments->NativeArgAt(0));
  GET_NON_NULL_NATIVE_ARGUMENT(MirrorReference, b, arguments->NativeArgAt(1));
  return Bool::Get(a.referent() == b.referent()).raw();
}


DEFINE_NATIVE_ENTRY(DeclarationMirror_metadata, 1) {
  GET_NON_NULL_NATIVE_ARGUMENT(Instance, reflectee, arguments->NativeArgAt(0));
  Object& decl = Object::Handle();
  if (reflectee.IsMirrorReference()) {
    const MirrorReference& decl_ref = MirrorReference::Cast(reflectee);
    decl = decl_ref.referent();
  } else if (reflectee.IsTypeParameter()) {
    decl = reflectee.raw();
  } else {
    UNREACHABLE();
  }

  Class& klass = Class::Handle();
  Library& library = Library::Handle();

  if (decl.IsClass()) {
    klass ^= decl.raw();
    library = klass.library();
  } else if (decl.IsFunction()) {
    klass = Function::Cast(decl).origin();
    library = klass.library();
  } else if (decl.IsField()) {
    klass = Field::Cast(decl).origin();
    library = klass.library();
  } else if (decl.IsLibrary()) {
    library ^= decl.raw();
  } else if (decl.IsTypeParameter()) {
    klass ^= TypeParameter::Cast(decl).parameterized_class();
    library = klass.library();
  } else {
    return Object::empty_array().raw();
  }

  const Object& metadata = Object::Handle(library.GetMetadata(decl));
  if (metadata.IsError()) {
    ThrowInvokeError(Error::Cast(metadata));
  }
  return metadata.raw();
}


DEFINE_NATIVE_ENTRY(FunctionTypeMirror_call_method, 2) {
  GET_NON_NULL_NATIVE_ARGUMENT(Instance,
                               owner_mirror,
                               arguments->NativeArgAt(0));
  GET_NON_NULL_NATIVE_ARGUMENT(MirrorReference, ref, arguments->NativeArgAt(1));
  const Class& cls = Class::Handle(ref.GetClassReferent());
  const Function& func = Function::Handle(CallMethod(cls));
  ASSERT(!func.IsNull());
  return CreateMethodMirror(func, owner_mirror);
}


DEFINE_NATIVE_ENTRY(FunctionTypeMirror_parameters, 2) {
  GET_NON_NULL_NATIVE_ARGUMENT(Instance, owner, arguments->NativeArgAt(0));
  GET_NON_NULL_NATIVE_ARGUMENT(MirrorReference, ref, arguments->NativeArgAt(1));
  const Class& cls = Class::Handle(ref.GetClassReferent());
  const Function& func = Function::Handle(cls.signature_function());
  return CreateParameterMirrorList(func, owner);
}


DEFINE_NATIVE_ENTRY(FunctionTypeMirror_return_type, 1) {
  GET_NON_NULL_NATIVE_ARGUMENT(MirrorReference, ref, arguments->NativeArgAt(0));
  const Class& cls = Class::Handle(ref.GetClassReferent());
  const Function& func = Function::Handle(CallMethod(cls));
  ASSERT(!func.IsNull());
  return func.result_type();
}


DEFINE_NATIVE_ENTRY(ClassMirror_library, 1) {
  GET_NON_NULL_NATIVE_ARGUMENT(MirrorReference, ref, arguments->NativeArgAt(0));
  const Class& klass = Class::Handle(ref.GetClassReferent());
  const Library& library = Library::Handle(klass.library());
  ASSERT(!library.IsNull());
  return CreateLibraryMirror(library);
}


DEFINE_NATIVE_ENTRY(ClassMirror_supertype, 1) {
  GET_NON_NULL_NATIVE_ARGUMENT(AbstractType, type, arguments->NativeArgAt(0));
  ASSERT(!type.IsMalformed());
  ASSERT(type.IsFinalized());
  const Class& cls = Class::Handle(type.type_class());
  const AbstractType& super_type = AbstractType::Handle(cls.super_type());
  ASSERT(super_type.IsNull() || super_type.IsFinalized());
  return super_type.raw();
}

DEFINE_NATIVE_ENTRY(ClassMirror_supertype_instantiated, 1) {
  GET_NON_NULL_NATIVE_ARGUMENT(AbstractType, type, arguments->NativeArgAt(0));
  ASSERT(!type.IsMalformed());
  ASSERT(type.IsFinalized());
  const Class& cls = Class::Handle(type.type_class());
  AbstractType& super_type = AbstractType::Handle(cls.super_type());
  AbstractType& result = AbstractType::Handle(super_type.raw());

  ASSERT(super_type.IsType());
  if (!super_type.IsInstantiated()) {
    AbstractTypeArguments& type_args =
        AbstractTypeArguments::Handle(type.arguments());
    Error& bound_error = Error::Handle();
    result ^= super_type.InstantiateFrom(type_args, &bound_error);
    if (!bound_error.IsNull()) {
      ThrowInvokeError(bound_error);
      UNREACHABLE();
    }
    result ^= result.Canonicalize();
    ASSERT(result.IsType());
  }

  ASSERT(result.IsFinalized());
  return result.raw();
}


DEFINE_NATIVE_ENTRY(ClassMirror_interfaces, 1) {
  GET_NON_NULL_NATIVE_ARGUMENT(MirrorReference, ref, arguments->NativeArgAt(0));
  const Class& klass = Class::Handle(ref.GetClassReferent());

  const Error& error = Error::Handle(klass.EnsureIsFinalized(isolate));
  if (!error.IsNull()) {
    ThrowInvokeError(error);
  }

  return klass.interfaces();
}


DEFINE_NATIVE_ENTRY(ClassMirror_mixin, 1) {
  GET_NON_NULL_NATIVE_ARGUMENT(MirrorReference, ref, arguments->NativeArgAt(0));
  const Class& klass = Class::Handle(ref.GetClassReferent());
  return klass.mixin();
}


DEFINE_NATIVE_ENTRY(ClassMirror_members, 2) {
  GET_NON_NULL_NATIVE_ARGUMENT(Instance,
                               owner_mirror,
                               arguments->NativeArgAt(0));
  GET_NON_NULL_NATIVE_ARGUMENT(MirrorReference, ref, arguments->NativeArgAt(1));
  const Class& klass = Class::Handle(ref.GetClassReferent());

  const Error& error = Error::Handle(klass.EnsureIsFinalized(isolate));
  if (!error.IsNull()) {
    ThrowInvokeError(error);
  }

  const Array& fields = Array::Handle(klass.fields());
  const intptr_t num_fields = fields.Length();

  const Array& functions = Array::Handle(klass.functions());
  const intptr_t num_functions = functions.Length();

  Instance& member_mirror = Instance::Handle();
  const GrowableObjectArray& member_mirrors = GrowableObjectArray::Handle(
      GrowableObjectArray::New(num_fields + num_functions));

  Field& field = Field::Handle();
  for (intptr_t i = 0; i < num_fields; i++) {
    field ^= fields.At(i);
    member_mirror = CreateVariableMirror(field, owner_mirror);
    member_mirrors.Add(member_mirror);
  }

  Function& func = Function::Handle();
  for (intptr_t i = 0; i < num_functions; i++) {
    func ^= functions.At(i);
    if (func.is_visible() &&
        (func.kind() == RawFunction::kRegularFunction ||
        func.kind() == RawFunction::kGetterFunction ||
        func.kind() == RawFunction::kSetterFunction)) {
      member_mirror = CreateMethodMirror(func, owner_mirror);
      member_mirrors.Add(member_mirror);
    }
  }

  return member_mirrors.raw();
}


DEFINE_NATIVE_ENTRY(ClassMirror_constructors, 2) {
  GET_NON_NULL_NATIVE_ARGUMENT(Instance,
                               owner_mirror,
                               arguments->NativeArgAt(0));
  GET_NON_NULL_NATIVE_ARGUMENT(MirrorReference, ref, arguments->NativeArgAt(1));
  const Class& klass = Class::Handle(ref.GetClassReferent());

  const Error& error = Error::Handle(klass.EnsureIsFinalized(isolate));
  if (!error.IsNull()) {
    ThrowInvokeError(error);
  }

  const Array& functions = Array::Handle(klass.functions());
  const intptr_t num_functions = functions.Length();

  Instance& constructor_mirror = Instance::Handle();
  const GrowableObjectArray& constructor_mirrors = GrowableObjectArray::Handle(
      GrowableObjectArray::New(num_functions));

  Function& func = Function::Handle();
  for (intptr_t i = 0; i < num_functions; i++) {
    func ^= functions.At(i);
    if (func.kind() == RawFunction::kConstructor) {
      constructor_mirror = CreateMethodMirror(func, owner_mirror);
      constructor_mirrors.Add(constructor_mirror);
    }
  }

  return constructor_mirrors.raw();
}


DEFINE_NATIVE_ENTRY(LibraryMirror_members, 2) {
  GET_NON_NULL_NATIVE_ARGUMENT(Instance,
                               owner_mirror,
                               arguments->NativeArgAt(0));
  GET_NON_NULL_NATIVE_ARGUMENT(MirrorReference, ref, arguments->NativeArgAt(1));
  const Library& library = Library::Handle(ref.GetLibraryReferent());

  Instance& member_mirror = Instance::Handle();
  const GrowableObjectArray& member_mirrors =
      GrowableObjectArray::Handle(GrowableObjectArray::New());

  Object& entry = Object::Handle();
  DictionaryIterator entries(library);

  AbstractType& type = AbstractType::Handle();

  while (entries.HasNext()) {
    entry = entries.GetNext();
    if (entry.IsClass()) {
      const Class& klass = Class::Cast(entry);
      // We filter out implementation classes like Smi, Mint, Bignum,
      // OneByteString; function signature classes; and dynamic.
      if (!klass.IsCanonicalSignatureClass() &&
          !klass.IsDynamicClass() &&
          !RawObject::IsImplementationClassId(klass.id())) {
        type = klass.RareType();
        member_mirror = CreateClassMirror(klass,
                                          type,
                                          Bool::True(),  // is_declaration
                                          owner_mirror);
        member_mirrors.Add(member_mirror);
      }
    } else if (entry.IsField()) {
      const Field& field = Field::Cast(entry);
      member_mirror = CreateVariableMirror(field, owner_mirror);
      member_mirrors.Add(member_mirror);
    } else if (entry.IsFunction()) {
      const Function& func = Function::Cast(entry);
      if (func.kind() == RawFunction::kRegularFunction ||
          func.kind() == RawFunction::kGetterFunction ||
          func.kind() == RawFunction::kSetterFunction) {
        member_mirror = CreateMethodMirror(func, owner_mirror);
        member_mirrors.Add(member_mirror);
      }
    }
  }

  return member_mirrors.raw();
}


DEFINE_NATIVE_ENTRY(ClassMirror_type_variables, 1) {
  GET_NON_NULL_NATIVE_ARGUMENT(MirrorReference, ref, arguments->NativeArgAt(0));
  const Class& klass = Class::Handle(ref.GetClassReferent());
  return CreateTypeVariableList(klass);
}


DEFINE_NATIVE_ENTRY(ClassMirror_type_arguments, 1) {
  GET_NON_NULL_NATIVE_ARGUMENT(AbstractType, type, arguments->NativeArgAt(0));

  const Class& cls = Class::Handle(type.type_class());
  const intptr_t num_params = cls.NumTypeParameters();

  if (num_params == 0) {
    return Object::empty_array().raw();
  }

  const Array& result = Array::Handle(Array::New(num_params));
  AbstractType& arg_type = AbstractType::Handle();
  Instance& type_mirror = Instance::Handle();
  const AbstractTypeArguments& args =
      AbstractTypeArguments::Handle(type.arguments());

  // Handle argument lists that have been optimized away, because either no
  // arguments have been provided, or all arguments are dynamic. Return a list
  // of typemirrors on dynamic in this case.
  if (args.IsNull()) {
    arg_type ^= Object::dynamic_type();
    type_mirror ^= CreateTypeMirror(arg_type);
    for (intptr_t i = 0; i < num_params; i++) {
      result.SetAt(i, type_mirror);
    }
    return result.raw();
  }

  ASSERT(args.Length() >= num_params);
  const intptr_t num_inherited_args = args.Length() - num_params;
  for (intptr_t i = 0; i < num_params; i++) {
    arg_type ^= args.TypeAt(i + num_inherited_args);
    type_mirror = CreateTypeMirror(arg_type);
    result.SetAt(i, type_mirror);
  }
  return result.raw();
}


DEFINE_NATIVE_ENTRY(TypeVariableMirror_owner, 1) {
  GET_NON_NULL_NATIVE_ARGUMENT(TypeParameter, param, arguments->NativeArgAt(0));
  const Class& owner = Class::Handle(param.parameterized_class());
  const AbstractType& type = AbstractType::Handle(owner.RareType());
  return CreateClassMirror(owner,
                           type,
                           Bool::True(),  // is_declaration
                           Instance::null_instance());
}


DEFINE_NATIVE_ENTRY(TypeVariableMirror_upper_bound, 1) {
  GET_NON_NULL_NATIVE_ARGUMENT(TypeParameter, param, arguments->NativeArgAt(0));
  return param.bound();
}


DEFINE_NATIVE_ENTRY(TypeVariableMirror_instantiate_from, 2) {
  GET_NON_NULL_NATIVE_ARGUMENT(TypeParameter, param, arguments->NativeArgAt(0));
  GET_NON_NULL_NATIVE_ARGUMENT(Type, instantiator, arguments->NativeArgAt(1));

  ASSERT(param.parameterized_class() == instantiator.type_class());

  AbstractTypeArguments& type_args =
      AbstractTypeArguments::Handle(instantiator.arguments());
  Error& bound_error = Error::Handle();
  AbstractType& result =
      AbstractType::Handle(param.InstantiateFrom(type_args, &bound_error));
  ASSERT(bound_error.IsNull());
  ASSERT(result.IsFinalized());
  return result.raw();
}


DEFINE_NATIVE_ENTRY(InstanceMirror_invoke, 5) {
  // Argument 0 is the mirror, which is unused by the native. It exists
  // because this native is an instance method in order to be polymorphic
  // with its cousins.
  GET_NATIVE_ARGUMENT(Instance, reflectee, arguments->NativeArgAt(1));
  GET_NON_NULL_NATIVE_ARGUMENT(
      String, function_name, arguments->NativeArgAt(2));
  GET_NON_NULL_NATIVE_ARGUMENT(Array, args, arguments->NativeArgAt(3));
  GET_NON_NULL_NATIVE_ARGUMENT(Array, arg_names, arguments->NativeArgAt(4));

  Class& klass = Class::Handle(reflectee.clazz());
  Function& function = Function::Handle(
      Resolver::ResolveDynamicAnyArgs(klass, function_name));

  const Array& args_descriptor =
      Array::Handle(ArgumentsDescriptor::New(args.Length(), arg_names));

  return InvokeDynamicFunction(reflectee,
                               function,
                               function_name,
                               args,
                               args_descriptor);
}


DEFINE_NATIVE_ENTRY(InstanceMirror_invokeGetter, 3) {
  // Argument 0 is the mirror, which is unused by the native. It exists
  // because this native is an instance method in order to be polymorphic
  // with its cousins.
  GET_NATIVE_ARGUMENT(Instance, reflectee, arguments->NativeArgAt(1));
  GET_NON_NULL_NATIVE_ARGUMENT(String, getter_name, arguments->NativeArgAt(2));
  Class& klass = Class::Handle(reflectee.clazz());
  return InvokeInstanceGetter(klass, reflectee, getter_name, true);
}


DEFINE_NATIVE_ENTRY(InstanceMirror_invokeSetter, 4) {
  // Argument 0 is the mirror, which is unused by the native. It exists
  // because this native is an instance method in order to be polymorphic
  // with its cousins.
  GET_NATIVE_ARGUMENT(Instance, reflectee, arguments->NativeArgAt(1));
  GET_NON_NULL_NATIVE_ARGUMENT(String, setter_name, arguments->NativeArgAt(2));
  GET_NATIVE_ARGUMENT(Instance, value, arguments->NativeArgAt(3));

  String& internal_setter_name =
      String::Handle(Field::SetterName(setter_name));
  Function& setter = Function::Handle();

  Class& klass = Class::Handle(reflectee.clazz());
  Field& field = Field::Handle();

  while (!klass.IsNull()) {
    field = klass.LookupInstanceField(setter_name);
    if (!field.IsNull() && field.is_final()) {
      const String& message = String::Handle(
          String::NewFormatted("%s: cannot set final field '%s'.",
                               "InstanceMirror_invokeSetter",
                               setter_name.ToCString()));
      ThrowMirroredCompilationError(message);
      UNREACHABLE();
    }
    setter = klass.LookupDynamicFunction(internal_setter_name);
    if (!setter.IsNull()) {
      break;
    }
    klass = klass.SuperClass();
  }

  // Invoke the setter and return the result.
  const int kNumArgs = 2;
  const Array& args = Array::Handle(Array::New(kNumArgs));
  args.SetAt(0, reflectee);
  args.SetAt(1, value);
  const Array& args_descriptor =
      Array::Handle(ArgumentsDescriptor::New(args.Length()));

  return InvokeDynamicFunction(reflectee,
                               setter,
                               internal_setter_name,
                               args,
                               args_descriptor);
}


DEFINE_NATIVE_ENTRY(InstanceMirror_computeType, 1) {
  GET_NON_NULL_NATIVE_ARGUMENT(Instance, instance, arguments->NativeArgAt(0));
  const Type& type = Type::Handle(instance.GetType());
  // The static type of null is specified to be the bottom type, however, the
  // runtime type of null is the Null type, which we correctly return here.
  return type.Canonicalize();
}


DEFINE_NATIVE_ENTRY(ClosureMirror_apply, 3) {
  GET_NON_NULL_NATIVE_ARGUMENT(Instance, closure, arguments->NativeArgAt(0));
  ASSERT(!closure.IsNull() && closure.IsCallable(NULL, NULL));
  GET_NON_NULL_NATIVE_ARGUMENT(Array, args, arguments->NativeArgAt(1));
  GET_NON_NULL_NATIVE_ARGUMENT(Array, arg_names, arguments->NativeArgAt(2));

  const Array& args_descriptor =
      Array::Handle(ArgumentsDescriptor::New(args.Length(), arg_names));

  const Object& result =
      Object::Handle(DartEntry::InvokeClosure(args, args_descriptor));
  if (result.IsError()) {
    ThrowInvokeError(Error::Cast(result));
    UNREACHABLE();
  }
  return result.raw();
}


DEFINE_NATIVE_ENTRY(ClosureMirror_find_in_context, 2) {
  GET_NON_NULL_NATIVE_ARGUMENT(Instance, closure, arguments->NativeArgAt(0));
  GET_NON_NULL_NATIVE_ARGUMENT(Array, lookup_parts, arguments->NativeArgAt(1));
  ASSERT(lookup_parts.Length() >= 1 && lookup_parts.Length() <= 3);

  Function& function = Function::Handle();
  const bool callable = closure.IsCallable(&function, NULL);
  ASSERT(callable);

  const int parts_len = lookup_parts.Length();
  // Lookup name is always the last part.
  const String& lookup_name = String::Handle(String::RawCast(
      lookup_parts.At(parts_len - 1)));

  String& part_name = String::Handle();
  Class& owner = Class::Handle(function.Owner());
  LibraryPrefix& prefix = LibraryPrefix::Handle();
  Library& this_library = Library::Handle(owner.library());
  Instance& result = Instance::Handle(Object::sentinel().raw());
  if (parts_len == 1) {
    // Could be either a field in context, an instance or static field of the
    // enclosing class, or a field in the current library or any imported
    // library.
    result ^= LookupFunctionOrFieldInFunctionContext(
        function, Context::Handle(Closure::context(closure)), lookup_name);
    if (result.raw() == Object::sentinel().raw()) {
      result ^= LookupStaticFunctionOrFieldInClass(owner, lookup_name);
    }
    if (result.raw() == Object::sentinel().raw()) {
      result ^= LookupFunctionOrFieldInLibrary(this_library,
                                               part_name,
                                               lookup_name);
    }
  } else if (parts_len == 2) {
    // Could be either library.field or class.staticfield.
    part_name ^= lookup_parts.At(0);
    prefix ^= this_library.LookupLocalLibraryPrefix(part_name);
    if (prefix.IsNull()) {
      result ^= LookupFunctionOrFieldInLibrary(this_library,
                                               part_name,
                                               lookup_name);
    } else {
      result ^= LookupFunctionOrFieldInLibraryPrefix(prefix, lookup_name);
    }
  } else {
    ASSERT(parts_len == 3);
    // Can only be library.class.staticfield.
    part_name ^= lookup_parts.At(0);
    prefix ^= this_library.LookupLocalLibraryPrefix(part_name);
    if (!prefix.IsNull()) {
      part_name ^= lookup_parts.At(1);
      owner ^= prefix.LookupClass(part_name);
      if (!owner.IsNull()) {
        result ^= LookupStaticFunctionOrFieldInClass(owner, lookup_name);
      }
    }
  }

  // We return a tuple (list) where the first slot is a boolean indicates
  // whether we found a field or function and the second slot contains the
  // result. This is needed to distinguish between not finding a field and a
  // field containing null as value.
  const Array& result_tuple = Array::Handle(Array::New(2));
  if (result.raw() == Object::sentinel().raw()) {
    result_tuple.SetAt(0, Bool::False());
    // No need to set the value.
  } else {
    result_tuple.SetAt(0, Bool::True());
    result_tuple.SetAt(1, result);
  }
  return result_tuple.raw();
}


DEFINE_NATIVE_ENTRY(ClosureMirror_function, 1) {
  GET_NON_NULL_NATIVE_ARGUMENT(Instance, closure, arguments->NativeArgAt(0));
  ASSERT(!closure.IsNull());

  Function& function = Function::Handle();
  bool callable = closure.IsCallable(&function, NULL);
  ASSERT(callable);

  return CreateMethodMirror(function, Instance::null_instance());
}


DEFINE_NATIVE_ENTRY(ClassMirror_invoke, 5) {
  // Argument 0 is the mirror, which is unused by the native. It exists
  // because this native is an instance method in order to be polymorphic
  // with its cousins.
  GET_NON_NULL_NATIVE_ARGUMENT(MirrorReference, ref, arguments->NativeArgAt(1));
  const Class& klass = Class::Handle(ref.GetClassReferent());
  GET_NON_NULL_NATIVE_ARGUMENT(
      String, function_name, arguments->NativeArgAt(2));
  GET_NON_NULL_NATIVE_ARGUMENT(Array, args, arguments->NativeArgAt(3));
  GET_NON_NULL_NATIVE_ARGUMENT(Array, arg_names, arguments->NativeArgAt(4));

  const Array& args_descriptor_array =
      Array::Handle(ArgumentsDescriptor::New(args.Length(), arg_names));

  const Function& function = Function::Handle(
      klass.LookupStaticFunction(function_name));

  ArgumentsDescriptor args_descriptor(args_descriptor_array);
  if (function.IsNull() ||
      !function.AreValidArguments(args_descriptor, NULL) ||
      !function.is_visible()) {
    ThrowNoSuchMethod(AbstractType::Handle(klass.RareType()),
                      function_name,
                      function,
                      InvocationMirror::kStatic,
                      InvocationMirror::kMethod);
    UNREACHABLE();
  }

  Object& result = Object::Handle(
      DartEntry::InvokeFunction(function, args, args_descriptor_array));
  if (result.IsError()) {
    ThrowInvokeError(Error::Cast(result));
    UNREACHABLE();
  }
  return result.raw();
}


DEFINE_NATIVE_ENTRY(ClassMirror_invokeGetter, 3) {
  // Argument 0 is the mirror, which is unused by the native. It exists
  // because this native is an instance method in order to be polymorphic
  // with its cousins.
  GET_NON_NULL_NATIVE_ARGUMENT(MirrorReference, ref, arguments->NativeArgAt(1));
  const Class& klass = Class::Handle(ref.GetClassReferent());
  GET_NON_NULL_NATIVE_ARGUMENT(String, getter_name, arguments->NativeArgAt(2));
  return InvokeClassGetter(klass, getter_name, true);
}


DEFINE_NATIVE_ENTRY(ClassMirror_invokeSetter, 4) {
  // Argument 0 is the mirror, which is unused by the native. It exists
  // because this native is an instance method in order to be polymorphic
  // with its cousins.
  GET_NON_NULL_NATIVE_ARGUMENT(MirrorReference, ref, arguments->NativeArgAt(1));
  const Class& klass = Class::Handle(ref.GetClassReferent());
  GET_NON_NULL_NATIVE_ARGUMENT(String, setter_name, arguments->NativeArgAt(2));
  GET_NATIVE_ARGUMENT(Instance, value, arguments->NativeArgAt(3));

  // Check for real fields and user-defined setters.
  const Field& field = Field::Handle(klass.LookupStaticField(setter_name));
  if (field.IsNull()) {
    const String& internal_setter_name = String::Handle(
      Field::SetterName(setter_name));
    const Function& setter = Function::Handle(
      klass.LookupStaticFunction(internal_setter_name));

    if (setter.IsNull() || !setter.is_visible()) {
      ThrowNoSuchMethod(AbstractType::Handle(klass.RareType()),
                        setter_name,
                        setter,
                        InvocationMirror::kStatic,
                        InvocationMirror::kSetter);
      UNREACHABLE();
    }

    // Invoke the setter and return the result.
    const int kNumArgs = 1;
    const Array& args = Array::Handle(Array::New(kNumArgs));
    args.SetAt(0, value);

    Object& result = Object::Handle(
        DartEntry::InvokeFunction(setter, args));
    if (result.IsError()) {
      ThrowInvokeError(Error::Cast(result));
      UNREACHABLE();
    }
    return result.raw();
  }

  if (field.is_final()) {
    const String& message = String::Handle(
        String::NewFormatted("%s: cannot set final field '%s'.",
                             "ClassMirror_invokeSetter",
                             setter_name.ToCString()));
    ThrowMirroredCompilationError(message);
    UNREACHABLE();
  }

  field.set_value(value);
  return value.raw();
}


DEFINE_NATIVE_ENTRY(ClassMirror_invokeConstructor, 5) {
  GET_NON_NULL_NATIVE_ARGUMENT(MirrorReference, ref, arguments->NativeArgAt(0));
  const Class& klass = Class::Handle(ref.GetClassReferent());
  GET_NATIVE_ARGUMENT(Type, type, arguments->NativeArgAt(1));
  GET_NON_NULL_NATIVE_ARGUMENT(
      String, constructor_name, arguments->NativeArgAt(2));
  GET_NON_NULL_NATIVE_ARGUMENT(Array, explicit_args, arguments->NativeArgAt(3));
  GET_NON_NULL_NATIVE_ARGUMENT(Array, arg_names, arguments->NativeArgAt(4));

  // By convention, the static function implementing a named constructor 'C'
  // for class 'A' is labeled 'A.C', and the static function implementing the
  // unnamed constructor for class 'A' is labeled 'A.'.
  // This convention prevents users from explicitly calling constructors.
  const String& klass_name = String::Handle(klass.Name());
  String& internal_constructor_name =
      String::Handle(String::Concat(klass_name, Symbols::Dot()));
  if (!constructor_name.IsNull()) {
    internal_constructor_name =
        String::Concat(internal_constructor_name, constructor_name);
  }

  Function& lookup_constructor = Function::Handle(
      klass.LookupFunction(internal_constructor_name));

  if (lookup_constructor.IsNull() ||
      !(lookup_constructor.IsConstructor() || lookup_constructor.IsFactory()) ||
      !lookup_constructor.is_visible()) {
    // Pretend we didn't find the constructor at all when the arity is wrong
    // so as to produce the same NoSuchMethodError as the non-reflective case.
    lookup_constructor = Function::null();
    ThrowNoSuchMethod(AbstractType::Handle(klass.RareType()),
                      internal_constructor_name,
                      lookup_constructor,
                      InvocationMirror::kConstructor,
                      InvocationMirror::kMethod);
    UNREACHABLE();
  }

  ASSERT(!type.IsNull());
  AbstractTypeArguments& type_arguments =
      AbstractTypeArguments::Handle(type.arguments());

  Class& redirected_klass = Class::Handle(klass.raw());
  Function& redirected_constructor = Function::Handle(lookup_constructor.raw());
  if (lookup_constructor.IsRedirectingFactory()) {
    ClassFinalizer::ResolveRedirectingFactory(klass, lookup_constructor);
    Type& redirect_type = Type::Handle(lookup_constructor.RedirectionType());

    if (!redirect_type.IsInstantiated()) {
      // The type arguments of the redirection type are instantiated from the
      // type arguments of the type reflected by the class mirror.
      Error& malformed_error = Error::Handle();
      redirect_type ^= redirect_type.InstantiateFrom(type_arguments,
                                                     &malformed_error);
      if (!malformed_error.IsNull()) {
        ThrowInvokeError(malformed_error);
        UNREACHABLE();
      }
    }

    type = redirect_type.raw();
    type_arguments = redirect_type.arguments();

    redirected_constructor = lookup_constructor.RedirectionTarget();
    ASSERT(!redirected_constructor.IsNull());
    redirected_klass = type.type_class();
  }

  const intptr_t num_explicit_args = explicit_args.Length();
  const intptr_t num_implicit_args =
      redirected_constructor.IsConstructor() ? 2 : 1;
  const Array& args =
      Array::Handle(Array::New(num_implicit_args + num_explicit_args));

  // Copy over the explicit arguments.
  Object& explicit_argument = Object::Handle();
  for (int i = 0; i < num_explicit_args; i++) {
    explicit_argument = explicit_args.At(i);
    args.SetAt(i + num_implicit_args, explicit_argument);
  }

  const Array& args_descriptor_array =
      Array::Handle(ArgumentsDescriptor::New(args.Length(),
                                             arg_names));

  ArgumentsDescriptor args_descriptor(args_descriptor_array);
  if (!redirected_constructor.AreValidArguments(args_descriptor, NULL) ||
      !redirected_constructor.is_visible()) {
    // Pretend we didn't find the constructor at all when the arity is wrong
    // so as to produce the same NoSuchMethodError as the non-reflective case.
    redirected_constructor = Function::null();
    ThrowNoSuchMethod(AbstractType::Handle(klass.RareType()),
                      internal_constructor_name,
                      redirected_constructor,
                      InvocationMirror::kConstructor,
                      InvocationMirror::kMethod);
    UNREACHABLE();
  }

  Instance& new_object = Instance::Handle();
  if (redirected_constructor.IsConstructor()) {
    // Constructors get the uninitialized object and a constructor phase. Note
    // we have delayed allocation until after the function type and argument
    // matching checks.
    new_object = Instance::New(redirected_klass);
    if (!type_arguments.IsNull()) {
      // The type arguments will be null if the class has no type parameters, in
      // which case the following call would fail because there is no slot
      // reserved in the object for the type vector.
      new_object.SetTypeArguments(type_arguments);
    }
    args.SetAt(0, new_object);
    args.SetAt(1, Smi::Handle(Smi::New(Function::kCtorPhaseAll)));
  } else {
    // Factories get type arguments.
    args.SetAt(0, type_arguments);
  }

  // Invoke the constructor and return the new object.
  const Object& result =
      Object::Handle(DartEntry::InvokeFunction(redirected_constructor,
                                               args,
                                               args_descriptor_array));
  if (result.IsError()) {
    ThrowInvokeError(Error::Cast(result));
    UNREACHABLE();
  }

  // Factories may return null.
  ASSERT(result.IsInstance() || result.IsNull());

  if (redirected_constructor.IsConstructor()) {
    return new_object.raw();
  } else {
    return result.raw();
  }
}


DEFINE_NATIVE_ENTRY(LibraryMirror_invoke, 5) {
  // Argument 0 is the mirror, which is unused by the native. It exists
  // because this native is an instance method in order to be polymorphic
  // with its cousins.
  GET_NON_NULL_NATIVE_ARGUMENT(MirrorReference, ref, arguments->NativeArgAt(1));
  const Library& library = Library::Handle(ref.GetLibraryReferent());
  GET_NON_NULL_NATIVE_ARGUMENT(
      String, function_name, arguments->NativeArgAt(2));
  GET_NON_NULL_NATIVE_ARGUMENT(Array, args, arguments->NativeArgAt(3));
  GET_NON_NULL_NATIVE_ARGUMENT(Array, arg_names, arguments->NativeArgAt(4));

  const Array& args_descriptor_array =
      Array::Handle(ArgumentsDescriptor::New(args.Length(), arg_names));

  const Function& function = Function::Handle(
      library.LookupLocalFunction(function_name));

  ArgumentsDescriptor args_descriptor(args_descriptor_array);
  if (function.IsNull() ||
      !function.AreValidArguments(args_descriptor, NULL) ||
      !function.is_visible()) {
    ThrowNoSuchMethod(Instance::null_instance(),
                      function_name,
                      function,
                      InvocationMirror::kTopLevel,
                      InvocationMirror::kMethod);
    UNREACHABLE();
  }

  const Object& result = Object::Handle(
      DartEntry::InvokeFunction(function, args, args_descriptor_array));
  if (result.IsError()) {
    ThrowInvokeError(Error::Cast(result));
    UNREACHABLE();
  }
  return result.raw();
}


DEFINE_NATIVE_ENTRY(LibraryMirror_invokeGetter, 3) {
  // Argument 0 is the mirror, which is unused by the native. It exists
  // because this native is an instance method in order to be polymorphic
  // with its cousins.
  GET_NON_NULL_NATIVE_ARGUMENT(MirrorReference, ref, arguments->NativeArgAt(1));
  const Library& library = Library::Handle(ref.GetLibraryReferent());
  GET_NON_NULL_NATIVE_ARGUMENT(String, getter_name, arguments->NativeArgAt(2));
  return InvokeLibraryGetter(library, getter_name, true);
}


DEFINE_NATIVE_ENTRY(LibraryMirror_invokeSetter, 4) {
  // Argument 0 is the mirror, which is unused by the native. It exists
  // because this native is an instance method in order to be polymorphic
  // with its cousins.
  GET_NON_NULL_NATIVE_ARGUMENT(MirrorReference, ref, arguments->NativeArgAt(1));
  const Library& library = Library::Handle(ref.GetLibraryReferent());
  GET_NON_NULL_NATIVE_ARGUMENT(String, setter_name, arguments->NativeArgAt(2));
  GET_NATIVE_ARGUMENT(Instance, value, arguments->NativeArgAt(3));

  // To access a top-level we may need to use the Field or the
  // setter Function.  The setter function may either be in the
  // library or in the field's owner class, depending.
  const Field& field = Field::Handle(
      library.LookupLocalField(setter_name));

  if (field.IsNull()) {
    const String& internal_setter_name =
        String::Handle(Field::SetterName(setter_name));
    const Function& setter = Function::Handle(
        library.LookupLocalFunction(internal_setter_name));
    if (setter.IsNull() || !setter.is_visible()) {
      ThrowNoSuchMethod(Instance::null_instance(),
                        setter_name,
                        setter,
                        InvocationMirror::kTopLevel,
                        InvocationMirror::kSetter);
      UNREACHABLE();
    }

    // Invoke the setter and return the result.
    const int kNumArgs = 1;
    const Array& args = Array::Handle(Array::New(kNumArgs));
    args.SetAt(0, value);
    const Object& result = Object::Handle(
        DartEntry::InvokeFunction(setter, args));
    if (result.IsError()) {
      ThrowInvokeError(Error::Cast(result));
      UNREACHABLE();
    }
    return result.raw();
  }

  if (field.is_final()) {
    const String& message = String::Handle(
      String::NewFormatted("%s: cannot set final top-level variable '%s'.",
                           "LibraryMirror_invokeSetter",
                           setter_name.ToCString()));
    ThrowMirroredCompilationError(message);
    UNREACHABLE();
  }

  field.set_value(value);
  return value.raw();
}


DEFINE_NATIVE_ENTRY(MethodMirror_owner, 1) {
  GET_NON_NULL_NATIVE_ARGUMENT(MirrorReference, ref, arguments->NativeArgAt(0));
  const Function& func = Function::Handle(ref.GetFunctionReferent());
  if (func.IsNonImplicitClosureFunction()) {
    return CreateMethodMirror(Function::Handle(
        func.parent_function()), Object::null_instance());
  }
  const Class& owner = Class::Handle(func.Owner());
  if (owner.IsTopLevel()) {
    return CreateLibraryMirror(Library::Handle(owner.library()));
  }

  AbstractType& type = AbstractType::Handle(owner.RareType());
  return CreateClassMirror(owner, type, Bool::True(), Object::null_instance());
}


DEFINE_NATIVE_ENTRY(MethodMirror_parameters, 2) {
  GET_NON_NULL_NATIVE_ARGUMENT(Instance, owner, arguments->NativeArgAt(0));
  GET_NON_NULL_NATIVE_ARGUMENT(MirrorReference, ref, arguments->NativeArgAt(1));
  const Function& func = Function::Handle(ref.GetFunctionReferent());
  return CreateParameterMirrorList(func, owner);
}


DEFINE_NATIVE_ENTRY(MethodMirror_return_type, 1) {
  GET_NON_NULL_NATIVE_ARGUMENT(MirrorReference, ref, arguments->NativeArgAt(0));
  const Function& func = Function::Handle(ref.GetFunctionReferent());
  // We handle constructors in Dart code.
  ASSERT(!func.IsConstructor());
  return func.result_type();
}


DEFINE_NATIVE_ENTRY(MethodMirror_source, 1) {
  GET_NON_NULL_NATIVE_ARGUMENT(MirrorReference, ref, arguments->NativeArgAt(0));
  const Function& func = Function::Handle(ref.GetFunctionReferent());
  const Script& script = Script::Handle(func.script());
  const TokenStream& stream = TokenStream::Handle(script.tokens());
  const TokenStream::Iterator tkit(stream, func.end_token_pos());
  intptr_t from_line;
  intptr_t from_col;
  intptr_t to_line;
  intptr_t to_col;
  script.GetTokenLocation(func.token_pos(), &from_line, &from_col);
  script.GetTokenLocation(func.end_token_pos(), &to_line, &to_col);
  intptr_t last_tok_len = String::Handle(tkit.CurrentLiteral()).Length();
  // Handle special cases for end tokens of closures (where we exclude the last
  // token):
  // (1) "foo(() => null, bar);": End token is `,', but we don't print it.
  // (2) "foo(() => null);": End token is ')`, but we don't print it.
  // (3) "var foo = () => null;": End token is `;', but in this case the token
  // semicolon belongs to the assignment so we skip it.
  if ((tkit.CurrentTokenKind() == Token::kCOMMA) ||                   // Case 1.
      (tkit.CurrentTokenKind() == Token::kRPAREN) ||                  // Case 2.
      (tkit.CurrentTokenKind() == Token::kSEMICOLON &&
       String::Handle(func.name()).Equals("<anonymous closure>"))) {  // Case 3.
    last_tok_len = 0;
  }
  return script.GetSnippet(from_line, from_col, to_line, to_col + last_tok_len);
}


DEFINE_NATIVE_ENTRY(TypedefMirror_referent, 1) {
  GET_NON_NULL_NATIVE_ARGUMENT(MirrorReference, ref, arguments->NativeArgAt(0));
  const Class& cls = Class::Handle(ref.GetClassReferent());
  const Function& sig_func = Function::Handle(cls.signature_function());
  const Class& sig_cls = Class::Handle(sig_func.signature_class());
  return MirrorReference::New(sig_cls);
}


DEFINE_NATIVE_ENTRY(ParameterMirror_type, 2) {
  GET_NON_NULL_NATIVE_ARGUMENT(MirrorReference, ref, arguments->NativeArgAt(0));
  GET_NON_NULL_NATIVE_ARGUMENT(Smi, pos, arguments->NativeArgAt(1));
  const Function& func = Function::Handle(ref.GetFunctionReferent());
  return func.ParameterTypeAt(func.NumImplicitParameters() + pos.Value());
}


DEFINE_NATIVE_ENTRY(VariableMirror_type, 1) {
  GET_NON_NULL_NATIVE_ARGUMENT(MirrorReference, ref, arguments->NativeArgAt(0));
  const Field& field = Field::Handle(ref.GetFieldReferent());
  return field.type();
}

}  // namespace dart
