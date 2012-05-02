#library('html');

// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// DO NOT EDIT
// Auto-generated dart:html library.






Window get window() native "return window;";
_WindowImpl get _window() native "return window;";

Document get document() native "return document;";

_DocumentImpl get _document() native "return document;";

// Workaround for tags like <cite> that lack their own Element subclass --
// Dart issue 1990.
class _HTMLElementImpl extends _ElementImpl native "*HTMLElement" {
}

class _AbstractWorkerImpl extends _EventTargetImpl implements AbstractWorker native "*AbstractWorker" {

  _AbstractWorkerEventsImpl get on() =>
    new _AbstractWorkerEventsImpl(this);

  void $dom_addEventListener(String type, EventListener listener, [bool useCapture = null]) native "addEventListener";

  bool $dom_dispatchEvent(_EventImpl evt) native "dispatchEvent";

  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture = null]) native "removeEventListener";
}

class _AbstractWorkerEventsImpl extends _EventsImpl implements AbstractWorkerEvents {
  _AbstractWorkerEventsImpl(_ptr) : super(_ptr);

  EventListenerList get error() => _get('error');
}

class _AnchorElementImpl extends _ElementImpl implements AnchorElement native "*HTMLAnchorElement" {

  String charset;

  String coords;

  String download;

  String hash;

  String host;

  String hostname;

  String href;

  String hreflang;

  String name;

  final String origin;

  String pathname;

  String ping;

  String port;

  String protocol;

  String rel;

  String rev;

  String search;

  String shape;

  String target;

  String type;

  String toString() native;
}

class _AnimationImpl implements Animation native "*WebKitAnimation" {

  static final int DIRECTION_ALTERNATE = 1;

  static final int DIRECTION_NORMAL = 0;

  static final int FILL_BACKWARDS = 1;

  static final int FILL_BOTH = 3;

  static final int FILL_FORWARDS = 2;

  static final int FILL_NONE = 0;

  final num delay;

  final int direction;

  final num duration;

  num elapsedTime;

  final bool ended;

  final int fillMode;

  final int iterationCount;

  final String name;

  final bool paused;

  void pause() native;

  void play() native;
}

class _AnimationEventImpl extends _EventImpl implements AnimationEvent native "*WebKitAnimationEvent" {

  final String animationName;

  final num elapsedTime;
}

class _AnimationListImpl implements AnimationList native "*WebKitAnimationList" {

  final int length;

  _AnimationImpl item(int index) native;
}

class _AppletElementImpl extends _ElementImpl implements AppletElement native "*HTMLAppletElement" {

  String align;

  String alt;

  String archive;

  String code;

  String codeBase;

  String height;

  String hspace;

  String name;

  String object;

  String vspace;

  String width;
}

class _AreaElementImpl extends _ElementImpl implements AreaElement native "*HTMLAreaElement" {

  String alt;

  String coords;

  final String hash;

  final String host;

  final String hostname;

  String href;

  bool noHref;

  final String pathname;

  String ping;

  final String port;

  final String protocol;

  final String search;

  String shape;

  String target;
}

class _ArrayBufferImpl implements ArrayBuffer native "*ArrayBuffer" {

  final int byteLength;

  _ArrayBufferImpl slice(int begin, [int end = null]) native;
}

class _ArrayBufferViewImpl implements ArrayBufferView native "*ArrayBufferView" {

  final _ArrayBufferImpl buffer;

  final int byteLength;

  final int byteOffset;
}

class _AttrImpl extends _NodeImpl implements Attr native "*Attr" {

  final bool isId;

  final String name;

  final _ElementImpl ownerElement;

  final bool specified;

  String value;
}

class _AudioBufferImpl implements AudioBuffer native "*AudioBuffer" {

  final num duration;

  num gain;

  final int length;

  final int numberOfChannels;

  final num sampleRate;

  _Float32ArrayImpl getChannelData(int channelIndex) native;
}

class _AudioBufferSourceNodeImpl extends _AudioSourceNodeImpl implements AudioBufferSourceNode native "*AudioBufferSourceNode" {

  static final int FINISHED_STATE = 3;

  static final int PLAYING_STATE = 2;

  static final int SCHEDULED_STATE = 1;

  static final int UNSCHEDULED_STATE = 0;

  _AudioBufferImpl buffer;

  final _AudioGainImpl gain;

  bool loop;

  bool looping;

  final _AudioParamImpl playbackRate;

  final int playbackState;

  void noteGrainOn(num when, num grainOffset, num grainDuration) native;

  void noteOff(num when) native;

  void noteOn(num when) native;
}

class _AudioChannelMergerImpl extends _AudioNodeImpl implements AudioChannelMerger native "*AudioChannelMerger" {
}

class _AudioChannelSplitterImpl extends _AudioNodeImpl implements AudioChannelSplitter native "*AudioChannelSplitter" {
}

class _AudioContextImpl extends _EventTargetImpl implements AudioContext native "*AudioContext" {

  _AudioContextEventsImpl get on() =>
    new _AudioContextEventsImpl(this);

  final int activeSourceCount;

  final num currentTime;

  final _AudioDestinationNodeImpl destination;

  final _AudioListenerImpl listener;

  final num sampleRate;

  _RealtimeAnalyserNodeImpl createAnalyser() native;

  _BiquadFilterNodeImpl createBiquadFilter() native;

  _AudioBufferImpl createBuffer(buffer_OR_numberOfChannels, mixToMono_OR_numberOfFrames, [num sampleRate = null]) native;

  _AudioBufferSourceNodeImpl createBufferSource() native;

  _AudioChannelMergerImpl createChannelMerger([int numberOfInputs = null]) native;

  _AudioChannelSplitterImpl createChannelSplitter([int numberOfOutputs = null]) native;

  _ConvolverNodeImpl createConvolver() native;

  _DelayNodeImpl createDelayNode([num maxDelayTime = null]) native;

  _DynamicsCompressorNodeImpl createDynamicsCompressor() native;

  _AudioGainNodeImpl createGainNode() native;

  _JavaScriptAudioNodeImpl createJavaScriptNode(int bufferSize, [int numberOfInputChannels = null, int numberOfOutputChannels = null]) native;

  _MediaElementAudioSourceNodeImpl createMediaElementSource(_MediaElementImpl mediaElement) native;

  _OscillatorImpl createOscillator() native;

  _AudioPannerNodeImpl createPanner() native;

  _WaveShaperNodeImpl createWaveShaper() native;

  _WaveTableImpl createWaveTable(_Float32ArrayImpl real, _Float32ArrayImpl imag) native;

  void decodeAudioData(_ArrayBufferImpl audioData, AudioBufferCallback successCallback, [AudioBufferCallback errorCallback = null]) native;

  void startRendering() native;
}

class _AudioContextEventsImpl extends _EventsImpl implements AudioContextEvents {
  _AudioContextEventsImpl(_ptr) : super(_ptr);

  EventListenerList get complete() => _get('complete');
}

class _AudioDestinationNodeImpl extends _AudioNodeImpl implements AudioDestinationNode native "*AudioDestinationNode" {

  final int numberOfChannels;
}

class _AudioElementImpl extends _MediaElementImpl implements AudioElement native "*HTMLAudioElement" {
}

class _AudioGainImpl extends _AudioParamImpl implements AudioGain native "*AudioGain" {
}

class _AudioGainNodeImpl extends _AudioNodeImpl implements AudioGainNode native "*AudioGainNode" {

  final _AudioGainImpl gain;
}

class _AudioListenerImpl implements AudioListener native "*AudioListener" {

  num dopplerFactor;

  num speedOfSound;

  void setOrientation(num x, num y, num z, num xUp, num yUp, num zUp) native;

  void setPosition(num x, num y, num z) native;

  void setVelocity(num x, num y, num z) native;
}

class _AudioNodeImpl implements AudioNode native "*AudioNode" {

  final _AudioContextImpl context;

  final int numberOfInputs;

  final int numberOfOutputs;

  void connect(destination, int output, [int input = null]) native;

  void disconnect(int output) native;
}

class _AudioPannerNodeImpl extends _AudioNodeImpl implements AudioPannerNode native "*AudioPannerNode" {

  static final int EQUALPOWER = 0;

  static final int EXPONENTIAL_DISTANCE = 2;

  static final int HRTF = 1;

  static final int INVERSE_DISTANCE = 1;

  static final int LINEAR_DISTANCE = 0;

  static final int SOUNDFIELD = 2;

  final _AudioGainImpl coneGain;

  num coneInnerAngle;

  num coneOuterAngle;

  num coneOuterGain;

  final _AudioGainImpl distanceGain;

  int distanceModel;

  num maxDistance;

  int panningModel;

  num refDistance;

  num rolloffFactor;

  void setOrientation(num x, num y, num z) native;

  void setPosition(num x, num y, num z) native;

  void setVelocity(num x, num y, num z) native;
}

class _AudioParamImpl implements AudioParam native "*AudioParam" {

  final num defaultValue;

  final num maxValue;

  final num minValue;

  final String name;

  final int units;

  num value;

  void cancelScheduledValues(num startTime) native;

  void exponentialRampToValueAtTime(num value, num time) native;

  void linearRampToValueAtTime(num value, num time) native;

  void setTargetValueAtTime(num targetValue, num time, num timeConstant) native;

  void setValueAtTime(num value, num time) native;

  void setValueCurveAtTime(_Float32ArrayImpl values, num time, num duration) native;
}

class _AudioProcessingEventImpl extends _EventImpl implements AudioProcessingEvent native "*AudioProcessingEvent" {

  final _AudioBufferImpl inputBuffer;

  final _AudioBufferImpl outputBuffer;
}

class _AudioSourceNodeImpl extends _AudioNodeImpl implements AudioSourceNode native "*AudioSourceNode" {
}

class _BRElementImpl extends _ElementImpl implements BRElement native "*HTMLBRElement" {

  String clear;
}

class _BarInfoImpl implements BarInfo native "*BarInfo" {

  final bool visible;
}

class _BaseElementImpl extends _ElementImpl implements BaseElement native "*HTMLBaseElement" {

  String href;

  String target;
}

class _BaseFontElementImpl extends _ElementImpl implements BaseFontElement native "*HTMLBaseFontElement" {

  String color;

  String face;

  int size;
}

class _BatteryManagerImpl extends _EventTargetImpl implements BatteryManager native "*BatteryManager" {

  _BatteryManagerEventsImpl get on() =>
    new _BatteryManagerEventsImpl(this);

  final bool charging;

  final num chargingTime;

  final num dischargingTime;

  final num level;

  void $dom_addEventListener(String type, EventListener listener, [bool useCapture = null]) native "addEventListener";

  bool $dom_dispatchEvent(_EventImpl evt) native "dispatchEvent";

  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture = null]) native "removeEventListener";
}

class _BatteryManagerEventsImpl extends _EventsImpl implements BatteryManagerEvents {
  _BatteryManagerEventsImpl(_ptr) : super(_ptr);

  EventListenerList get chargingChange() => _get('chargingchange');

  EventListenerList get chargingTimeChange() => _get('chargingtimechange');

  EventListenerList get dischargingTimeChange() => _get('dischargingtimechange');

  EventListenerList get levelChange() => _get('levelchange');
}

class _BeforeLoadEventImpl extends _EventImpl implements BeforeLoadEvent native "*BeforeLoadEvent" {

  final String url;
}

class _BiquadFilterNodeImpl extends _AudioNodeImpl implements BiquadFilterNode native "*BiquadFilterNode" {

  static final int ALLPASS = 7;

  static final int BANDPASS = 2;

  static final int HIGHPASS = 1;

  static final int HIGHSHELF = 4;

  static final int LOWPASS = 0;

  static final int LOWSHELF = 3;

  static final int NOTCH = 6;

  static final int PEAKING = 5;

  final _AudioParamImpl Q;

  final _AudioParamImpl frequency;

  final _AudioParamImpl gain;

  int type;

  void getFrequencyResponse(_Float32ArrayImpl frequencyHz, _Float32ArrayImpl magResponse, _Float32ArrayImpl phaseResponse) native;
}

class _BlobImpl implements Blob native "*Blob" {

  final int size;

  final String type;

  _BlobImpl webkitSlice([int start = null, int end = null, String contentType = null]) native;
}

class _BlobBuilderImpl implements BlobBuilder native "*WebKitBlobBuilder" {

  void append(arrayBuffer_OR_blob_OR_value, [String endings = null]) native;

  _BlobImpl getBlob([String contentType = null]) native;
}

class _BodyElementImpl extends _ElementImpl implements BodyElement native "*HTMLBodyElement" {

  _BodyElementEventsImpl get on() =>
    new _BodyElementEventsImpl(this);

  String aLink;

  String background;

  String bgColor;

  String link;

  String vLink;
}

class _BodyElementEventsImpl extends _ElementEventsImpl implements BodyElementEvents {
  _BodyElementEventsImpl(_ptr) : super(_ptr);

  EventListenerList get beforeUnload() => _get('beforeunload');

  EventListenerList get blur() => _get('blur');

  EventListenerList get error() => _get('error');

  EventListenerList get focus() => _get('focus');

  EventListenerList get hashChange() => _get('hashchange');

  EventListenerList get load() => _get('load');

  EventListenerList get message() => _get('message');

  EventListenerList get offline() => _get('offline');

  EventListenerList get online() => _get('online');

  EventListenerList get popState() => _get('popstate');

  EventListenerList get resize() => _get('resize');

  EventListenerList get storage() => _get('storage');

  EventListenerList get unload() => _get('unload');
}

class _ButtonElementImpl extends _ElementImpl implements ButtonElement native "*HTMLButtonElement" {

  bool autofocus;

  bool disabled;

  final _FormElementImpl form;

  String formAction;

  String formEnctype;

  String formMethod;

  bool formNoValidate;

  String formTarget;

  final _NodeListImpl labels;

  String name;

  final String type;

  final String validationMessage;

  final _ValidityStateImpl validity;

  String value;

  final bool willValidate;

  bool checkValidity() native;

  void setCustomValidity(String error) native;
}

class _CDATASectionImpl extends _TextImpl implements CDATASection native "*CDATASection" {
}

class _CSSCharsetRuleImpl extends _CSSRuleImpl implements CSSCharsetRule native "*CSSCharsetRule" {

  String encoding;
}

class _CSSFontFaceRuleImpl extends _CSSRuleImpl implements CSSFontFaceRule native "*CSSFontFaceRule" {

  final _CSSStyleDeclarationImpl style;
}

class _CSSImportRuleImpl extends _CSSRuleImpl implements CSSImportRule native "*CSSImportRule" {

  final String href;

  final _MediaListImpl media;

  final _CSSStyleSheetImpl styleSheet;
}

class _CSSKeyframeRuleImpl extends _CSSRuleImpl implements CSSKeyframeRule native "*WebKitCSSKeyframeRule" {

  String keyText;

  final _CSSStyleDeclarationImpl style;
}

class _CSSKeyframesRuleImpl extends _CSSRuleImpl implements CSSKeyframesRule native "*WebKitCSSKeyframesRule" {

  final _CSSRuleListImpl cssRules;

  String name;

  void deleteRule(String key) native;

  _CSSKeyframeRuleImpl findRule(String key) native;

  void insertRule(String rule) native;
}

class _CSSMatrixImpl implements CSSMatrix native "*WebKitCSSMatrix" {

  num a;

  num b;

  num c;

  num d;

  num e;

  num f;

  num m11;

  num m12;

  num m13;

  num m14;

  num m21;

  num m22;

  num m23;

  num m24;

  num m31;

  num m32;

  num m33;

  num m34;

  num m41;

  num m42;

  num m43;

  num m44;

  _CSSMatrixImpl inverse() native;

  _CSSMatrixImpl multiply(_CSSMatrixImpl secondMatrix) native;

  _CSSMatrixImpl rotate(num rotX, num rotY, num rotZ) native;

  _CSSMatrixImpl rotateAxisAngle(num x, num y, num z, num angle) native;

  _CSSMatrixImpl scale(num scaleX, num scaleY, num scaleZ) native;

  void setMatrixValue(String string) native;

  _CSSMatrixImpl skewX(num angle) native;

  _CSSMatrixImpl skewY(num angle) native;

  String toString() native;

  _CSSMatrixImpl translate(num x, num y, num z) native;
}

class _CSSMediaRuleImpl extends _CSSRuleImpl implements CSSMediaRule native "*CSSMediaRule" {

  final _CSSRuleListImpl cssRules;

  final _MediaListImpl media;

  void deleteRule(int index) native;

  int insertRule(String rule, int index) native;
}

class _CSSPageRuleImpl extends _CSSRuleImpl implements CSSPageRule native "*CSSPageRule" {

  String selectorText;

  final _CSSStyleDeclarationImpl style;
}

class _CSSPrimitiveValueImpl extends _CSSValueImpl implements CSSPrimitiveValue native "*CSSPrimitiveValue" {

  static final int CSS_ATTR = 22;

  static final int CSS_CM = 6;

  static final int CSS_COUNTER = 23;

  static final int CSS_DEG = 11;

  static final int CSS_DIMENSION = 18;

  static final int CSS_EMS = 3;

  static final int CSS_EXS = 4;

  static final int CSS_GRAD = 13;

  static final int CSS_HZ = 16;

  static final int CSS_IDENT = 21;

  static final int CSS_IN = 8;

  static final int CSS_KHZ = 17;

  static final int CSS_MM = 7;

  static final int CSS_MS = 14;

  static final int CSS_NUMBER = 1;

  static final int CSS_PC = 10;

  static final int CSS_PERCENTAGE = 2;

  static final int CSS_PT = 9;

  static final int CSS_PX = 5;

  static final int CSS_RAD = 12;

  static final int CSS_RECT = 24;

  static final int CSS_RGBCOLOR = 25;

  static final int CSS_S = 15;

  static final int CSS_STRING = 19;

  static final int CSS_UNKNOWN = 0;

  static final int CSS_URI = 20;

  static final int CSS_VH = 27;

  static final int CSS_VMIN = 28;

  static final int CSS_VW = 26;

  final int primitiveType;

  _CounterImpl getCounterValue() native;

  num getFloatValue(int unitType) native;

  _RGBColorImpl getRGBColorValue() native;

  _RectImpl getRectValue() native;

  String getStringValue() native;

  void setFloatValue(int unitType, num floatValue) native;

  void setStringValue(int stringType, String stringValue) native;
}

class _CSSRuleImpl implements CSSRule native "*CSSRule" {

  static final int CHARSET_RULE = 2;

  static final int FONT_FACE_RULE = 5;

  static final int IMPORT_RULE = 3;

  static final int MEDIA_RULE = 4;

  static final int PAGE_RULE = 6;

  static final int STYLE_RULE = 1;

  static final int UNKNOWN_RULE = 0;

  static final int WEBKIT_KEYFRAMES_RULE = 7;

  static final int WEBKIT_KEYFRAME_RULE = 8;

  static final int WEBKIT_REGION_RULE = 10;

  String cssText;

  final _CSSRuleImpl parentRule;

  final _CSSStyleSheetImpl parentStyleSheet;

  final int type;
}

class _CSSRuleListImpl implements CSSRuleList native "*CSSRuleList" {

  final int length;

  _CSSRuleImpl item(int index) native;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

String _cachedBrowserPrefix;

String get _browserPrefix() {
  if (_cachedBrowserPrefix === null) {
    if (_Device.isFirefox) {
      _cachedBrowserPrefix = '-moz-';
    } else {
      _cachedBrowserPrefix = '-webkit-';
    }
    // TODO(jacobr): support IE 9.0 and Opera as well.
  }
  return _cachedBrowserPrefix;
}

class _CSSStyleDeclarationImpl implements CSSStyleDeclaration native "*CSSStyleDeclaration" {


  String cssText;

  final int length;

  final _CSSRuleImpl parentRule;

  _CSSValueImpl getPropertyCSSValue(String propertyName) native;

  String getPropertyPriority(String propertyName) native;

  String getPropertyShorthand(String propertyName) native;

  String getPropertyValue(String propertyName) native;

  bool isPropertyImplicit(String propertyName) native;

  String item(int index) native;

  String removeProperty(String propertyName) native;

  void setProperty(String propertyName, String value, [String priority = null]) native;


  // TODO(jacobr): generate this list of properties using the existing script.
    /** Gets the value of "animation" */
  String get animation() =>
    getPropertyValue('${_browserPrefix}animation');

  /** Sets the value of "animation" */
  void set animation(var value) {
    setProperty('${_browserPrefix}animation', value, '');
  }

  /** Gets the value of "animation-delay" */
  String get animationDelay() =>
    getPropertyValue('${_browserPrefix}animation-delay');

  /** Sets the value of "animation-delay" */
  void set animationDelay(var value) {
    setProperty('${_browserPrefix}animation-delay', value, '');
  }

  /** Gets the value of "animation-direction" */
  String get animationDirection() =>
    getPropertyValue('${_browserPrefix}animation-direction');

  /** Sets the value of "animation-direction" */
  void set animationDirection(var value) {
    setProperty('${_browserPrefix}animation-direction', value, '');
  }

  /** Gets the value of "animation-duration" */
  String get animationDuration() =>
    getPropertyValue('${_browserPrefix}animation-duration');

  /** Sets the value of "animation-duration" */
  void set animationDuration(var value) {
    setProperty('${_browserPrefix}animation-duration', value, '');
  }

  /** Gets the value of "animation-fill-mode" */
  String get animationFillMode() =>
    getPropertyValue('${_browserPrefix}animation-fill-mode');

  /** Sets the value of "animation-fill-mode" */
  void set animationFillMode(var value) {
    setProperty('${_browserPrefix}animation-fill-mode', value, '');
  }

  /** Gets the value of "animation-iteration-count" */
  String get animationIterationCount() =>
    getPropertyValue('${_browserPrefix}animation-iteration-count');

  /** Sets the value of "animation-iteration-count" */
  void set animationIterationCount(var value) {
    setProperty('${_browserPrefix}animation-iteration-count', value, '');
  }

  /** Gets the value of "animation-name" */
  String get animationName() =>
    getPropertyValue('${_browserPrefix}animation-name');

  /** Sets the value of "animation-name" */
  void set animationName(var value) {
    setProperty('${_browserPrefix}animation-name', value, '');
  }

  /** Gets the value of "animation-play-state" */
  String get animationPlayState() =>
    getPropertyValue('${_browserPrefix}animation-play-state');

  /** Sets the value of "animation-play-state" */
  void set animationPlayState(var value) {
    setProperty('${_browserPrefix}animation-play-state', value, '');
  }

  /** Gets the value of "animation-timing-function" */
  String get animationTimingFunction() =>
    getPropertyValue('${_browserPrefix}animation-timing-function');

  /** Sets the value of "animation-timing-function" */
  void set animationTimingFunction(var value) {
    setProperty('${_browserPrefix}animation-timing-function', value, '');
  }

  /** Gets the value of "appearance" */
  String get appearance() =>
    getPropertyValue('${_browserPrefix}appearance');

  /** Sets the value of "appearance" */
  void set appearance(var value) {
    setProperty('${_browserPrefix}appearance', value, '');
  }

  /** Gets the value of "backface-visibility" */
  String get backfaceVisibility() =>
    getPropertyValue('${_browserPrefix}backface-visibility');

  /** Sets the value of "backface-visibility" */
  void set backfaceVisibility(var value) {
    setProperty('${_browserPrefix}backface-visibility', value, '');
  }

  /** Gets the value of "background" */
  String get background() =>
    getPropertyValue('background');

  /** Sets the value of "background" */
  void set background(var value) {
    setProperty('background', value, '');
  }

  /** Gets the value of "background-attachment" */
  String get backgroundAttachment() =>
    getPropertyValue('background-attachment');

  /** Sets the value of "background-attachment" */
  void set backgroundAttachment(var value) {
    setProperty('background-attachment', value, '');
  }

  /** Gets the value of "background-clip" */
  String get backgroundClip() =>
    getPropertyValue('background-clip');

  /** Sets the value of "background-clip" */
  void set backgroundClip(var value) {
    setProperty('background-clip', value, '');
  }

  /** Gets the value of "background-color" */
  String get backgroundColor() =>
    getPropertyValue('background-color');

  /** Sets the value of "background-color" */
  void set backgroundColor(var value) {
    setProperty('background-color', value, '');
  }

  /** Gets the value of "background-composite" */
  String get backgroundComposite() =>
    getPropertyValue('${_browserPrefix}background-composite');

  /** Sets the value of "background-composite" */
  void set backgroundComposite(var value) {
    setProperty('${_browserPrefix}background-composite', value, '');
  }

  /** Gets the value of "background-image" */
  String get backgroundImage() =>
    getPropertyValue('background-image');

  /** Sets the value of "background-image" */
  void set backgroundImage(var value) {
    setProperty('background-image', value, '');
  }

  /** Gets the value of "background-origin" */
  String get backgroundOrigin() =>
    getPropertyValue('background-origin');

  /** Sets the value of "background-origin" */
  void set backgroundOrigin(var value) {
    setProperty('background-origin', value, '');
  }

  /** Gets the value of "background-position" */
  String get backgroundPosition() =>
    getPropertyValue('background-position');

  /** Sets the value of "background-position" */
  void set backgroundPosition(var value) {
    setProperty('background-position', value, '');
  }

  /** Gets the value of "background-position-x" */
  String get backgroundPositionX() =>
    getPropertyValue('background-position-x');

  /** Sets the value of "background-position-x" */
  void set backgroundPositionX(var value) {
    setProperty('background-position-x', value, '');
  }

  /** Gets the value of "background-position-y" */
  String get backgroundPositionY() =>
    getPropertyValue('background-position-y');

  /** Sets the value of "background-position-y" */
  void set backgroundPositionY(var value) {
    setProperty('background-position-y', value, '');
  }

  /** Gets the value of "background-repeat" */
  String get backgroundRepeat() =>
    getPropertyValue('background-repeat');

  /** Sets the value of "background-repeat" */
  void set backgroundRepeat(var value) {
    setProperty('background-repeat', value, '');
  }

  /** Gets the value of "background-repeat-x" */
  String get backgroundRepeatX() =>
    getPropertyValue('background-repeat-x');

  /** Sets the value of "background-repeat-x" */
  void set backgroundRepeatX(var value) {
    setProperty('background-repeat-x', value, '');
  }

  /** Gets the value of "background-repeat-y" */
  String get backgroundRepeatY() =>
    getPropertyValue('background-repeat-y');

  /** Sets the value of "background-repeat-y" */
  void set backgroundRepeatY(var value) {
    setProperty('background-repeat-y', value, '');
  }

  /** Gets the value of "background-size" */
  String get backgroundSize() =>
    getPropertyValue('background-size');

  /** Sets the value of "background-size" */
  void set backgroundSize(var value) {
    setProperty('background-size', value, '');
  }

  /** Gets the value of "border" */
  String get border() =>
    getPropertyValue('border');

  /** Sets the value of "border" */
  void set border(var value) {
    setProperty('border', value, '');
  }

  /** Gets the value of "border-after" */
  String get borderAfter() =>
    getPropertyValue('${_browserPrefix}border-after');

  /** Sets the value of "border-after" */
  void set borderAfter(var value) {
    setProperty('${_browserPrefix}border-after', value, '');
  }

  /** Gets the value of "border-after-color" */
  String get borderAfterColor() =>
    getPropertyValue('${_browserPrefix}border-after-color');

  /** Sets the value of "border-after-color" */
  void set borderAfterColor(var value) {
    setProperty('${_browserPrefix}border-after-color', value, '');
  }

  /** Gets the value of "border-after-style" */
  String get borderAfterStyle() =>
    getPropertyValue('${_browserPrefix}border-after-style');

  /** Sets the value of "border-after-style" */
  void set borderAfterStyle(var value) {
    setProperty('${_browserPrefix}border-after-style', value, '');
  }

  /** Gets the value of "border-after-width" */
  String get borderAfterWidth() =>
    getPropertyValue('${_browserPrefix}border-after-width');

  /** Sets the value of "border-after-width" */
  void set borderAfterWidth(var value) {
    setProperty('${_browserPrefix}border-after-width', value, '');
  }

  /** Gets the value of "border-before" */
  String get borderBefore() =>
    getPropertyValue('${_browserPrefix}border-before');

  /** Sets the value of "border-before" */
  void set borderBefore(var value) {
    setProperty('${_browserPrefix}border-before', value, '');
  }

  /** Gets the value of "border-before-color" */
  String get borderBeforeColor() =>
    getPropertyValue('${_browserPrefix}border-before-color');

  /** Sets the value of "border-before-color" */
  void set borderBeforeColor(var value) {
    setProperty('${_browserPrefix}border-before-color', value, '');
  }

  /** Gets the value of "border-before-style" */
  String get borderBeforeStyle() =>
    getPropertyValue('${_browserPrefix}border-before-style');

  /** Sets the value of "border-before-style" */
  void set borderBeforeStyle(var value) {
    setProperty('${_browserPrefix}border-before-style', value, '');
  }

  /** Gets the value of "border-before-width" */
  String get borderBeforeWidth() =>
    getPropertyValue('${_browserPrefix}border-before-width');

  /** Sets the value of "border-before-width" */
  void set borderBeforeWidth(var value) {
    setProperty('${_browserPrefix}border-before-width', value, '');
  }

  /** Gets the value of "border-bottom" */
  String get borderBottom() =>
    getPropertyValue('border-bottom');

  /** Sets the value of "border-bottom" */
  void set borderBottom(var value) {
    setProperty('border-bottom', value, '');
  }

  /** Gets the value of "border-bottom-color" */
  String get borderBottomColor() =>
    getPropertyValue('border-bottom-color');

  /** Sets the value of "border-bottom-color" */
  void set borderBottomColor(var value) {
    setProperty('border-bottom-color', value, '');
  }

  /** Gets the value of "border-bottom-left-radius" */
  String get borderBottomLeftRadius() =>
    getPropertyValue('border-bottom-left-radius');

  /** Sets the value of "border-bottom-left-radius" */
  void set borderBottomLeftRadius(var value) {
    setProperty('border-bottom-left-radius', value, '');
  }

  /** Gets the value of "border-bottom-right-radius" */
  String get borderBottomRightRadius() =>
    getPropertyValue('border-bottom-right-radius');

  /** Sets the value of "border-bottom-right-radius" */
  void set borderBottomRightRadius(var value) {
    setProperty('border-bottom-right-radius', value, '');
  }

  /** Gets the value of "border-bottom-style" */
  String get borderBottomStyle() =>
    getPropertyValue('border-bottom-style');

  /** Sets the value of "border-bottom-style" */
  void set borderBottomStyle(var value) {
    setProperty('border-bottom-style', value, '');
  }

  /** Gets the value of "border-bottom-width" */
  String get borderBottomWidth() =>
    getPropertyValue('border-bottom-width');

  /** Sets the value of "border-bottom-width" */
  void set borderBottomWidth(var value) {
    setProperty('border-bottom-width', value, '');
  }

  /** Gets the value of "border-collapse" */
  String get borderCollapse() =>
    getPropertyValue('border-collapse');

  /** Sets the value of "border-collapse" */
  void set borderCollapse(var value) {
    setProperty('border-collapse', value, '');
  }

  /** Gets the value of "border-color" */
  String get borderColor() =>
    getPropertyValue('border-color');

  /** Sets the value of "border-color" */
  void set borderColor(var value) {
    setProperty('border-color', value, '');
  }

  /** Gets the value of "border-end" */
  String get borderEnd() =>
    getPropertyValue('${_browserPrefix}border-end');

  /** Sets the value of "border-end" */
  void set borderEnd(var value) {
    setProperty('${_browserPrefix}border-end', value, '');
  }

  /** Gets the value of "border-end-color" */
  String get borderEndColor() =>
    getPropertyValue('${_browserPrefix}border-end-color');

  /** Sets the value of "border-end-color" */
  void set borderEndColor(var value) {
    setProperty('${_browserPrefix}border-end-color', value, '');
  }

  /** Gets the value of "border-end-style" */
  String get borderEndStyle() =>
    getPropertyValue('${_browserPrefix}border-end-style');

  /** Sets the value of "border-end-style" */
  void set borderEndStyle(var value) {
    setProperty('${_browserPrefix}border-end-style', value, '');
  }

  /** Gets the value of "border-end-width" */
  String get borderEndWidth() =>
    getPropertyValue('${_browserPrefix}border-end-width');

  /** Sets the value of "border-end-width" */
  void set borderEndWidth(var value) {
    setProperty('${_browserPrefix}border-end-width', value, '');
  }

  /** Gets the value of "border-fit" */
  String get borderFit() =>
    getPropertyValue('${_browserPrefix}border-fit');

  /** Sets the value of "border-fit" */
  void set borderFit(var value) {
    setProperty('${_browserPrefix}border-fit', value, '');
  }

  /** Gets the value of "border-horizontal-spacing" */
  String get borderHorizontalSpacing() =>
    getPropertyValue('${_browserPrefix}border-horizontal-spacing');

  /** Sets the value of "border-horizontal-spacing" */
  void set borderHorizontalSpacing(var value) {
    setProperty('${_browserPrefix}border-horizontal-spacing', value, '');
  }

  /** Gets the value of "border-image" */
  String get borderImage() =>
    getPropertyValue('border-image');

  /** Sets the value of "border-image" */
  void set borderImage(var value) {
    setProperty('border-image', value, '');
  }

  /** Gets the value of "border-image-outset" */
  String get borderImageOutset() =>
    getPropertyValue('border-image-outset');

  /** Sets the value of "border-image-outset" */
  void set borderImageOutset(var value) {
    setProperty('border-image-outset', value, '');
  }

  /** Gets the value of "border-image-repeat" */
  String get borderImageRepeat() =>
    getPropertyValue('border-image-repeat');

  /** Sets the value of "border-image-repeat" */
  void set borderImageRepeat(var value) {
    setProperty('border-image-repeat', value, '');
  }

  /** Gets the value of "border-image-slice" */
  String get borderImageSlice() =>
    getPropertyValue('border-image-slice');

  /** Sets the value of "border-image-slice" */
  void set borderImageSlice(var value) {
    setProperty('border-image-slice', value, '');
  }

  /** Gets the value of "border-image-source" */
  String get borderImageSource() =>
    getPropertyValue('border-image-source');

  /** Sets the value of "border-image-source" */
  void set borderImageSource(var value) {
    setProperty('border-image-source', value, '');
  }

  /** Gets the value of "border-image-width" */
  String get borderImageWidth() =>
    getPropertyValue('border-image-width');

  /** Sets the value of "border-image-width" */
  void set borderImageWidth(var value) {
    setProperty('border-image-width', value, '');
  }

  /** Gets the value of "border-left" */
  String get borderLeft() =>
    getPropertyValue('border-left');

  /** Sets the value of "border-left" */
  void set borderLeft(var value) {
    setProperty('border-left', value, '');
  }

  /** Gets the value of "border-left-color" */
  String get borderLeftColor() =>
    getPropertyValue('border-left-color');

  /** Sets the value of "border-left-color" */
  void set borderLeftColor(var value) {
    setProperty('border-left-color', value, '');
  }

  /** Gets the value of "border-left-style" */
  String get borderLeftStyle() =>
    getPropertyValue('border-left-style');

  /** Sets the value of "border-left-style" */
  void set borderLeftStyle(var value) {
    setProperty('border-left-style', value, '');
  }

  /** Gets the value of "border-left-width" */
  String get borderLeftWidth() =>
    getPropertyValue('border-left-width');

  /** Sets the value of "border-left-width" */
  void set borderLeftWidth(var value) {
    setProperty('border-left-width', value, '');
  }

  /** Gets the value of "border-radius" */
  String get borderRadius() =>
    getPropertyValue('border-radius');

  /** Sets the value of "border-radius" */
  void set borderRadius(var value) {
    setProperty('border-radius', value, '');
  }

  /** Gets the value of "border-right" */
  String get borderRight() =>
    getPropertyValue('border-right');

  /** Sets the value of "border-right" */
  void set borderRight(var value) {
    setProperty('border-right', value, '');
  }

  /** Gets the value of "border-right-color" */
  String get borderRightColor() =>
    getPropertyValue('border-right-color');

  /** Sets the value of "border-right-color" */
  void set borderRightColor(var value) {
    setProperty('border-right-color', value, '');
  }

  /** Gets the value of "border-right-style" */
  String get borderRightStyle() =>
    getPropertyValue('border-right-style');

  /** Sets the value of "border-right-style" */
  void set borderRightStyle(var value) {
    setProperty('border-right-style', value, '');
  }

  /** Gets the value of "border-right-width" */
  String get borderRightWidth() =>
    getPropertyValue('border-right-width');

  /** Sets the value of "border-right-width" */
  void set borderRightWidth(var value) {
    setProperty('border-right-width', value, '');
  }

  /** Gets the value of "border-spacing" */
  String get borderSpacing() =>
    getPropertyValue('border-spacing');

  /** Sets the value of "border-spacing" */
  void set borderSpacing(var value) {
    setProperty('border-spacing', value, '');
  }

  /** Gets the value of "border-start" */
  String get borderStart() =>
    getPropertyValue('${_browserPrefix}border-start');

  /** Sets the value of "border-start" */
  void set borderStart(var value) {
    setProperty('${_browserPrefix}border-start', value, '');
  }

  /** Gets the value of "border-start-color" */
  String get borderStartColor() =>
    getPropertyValue('${_browserPrefix}border-start-color');

  /** Sets the value of "border-start-color" */
  void set borderStartColor(var value) {
    setProperty('${_browserPrefix}border-start-color', value, '');
  }

  /** Gets the value of "border-start-style" */
  String get borderStartStyle() =>
    getPropertyValue('${_browserPrefix}border-start-style');

  /** Sets the value of "border-start-style" */
  void set borderStartStyle(var value) {
    setProperty('${_browserPrefix}border-start-style', value, '');
  }

  /** Gets the value of "border-start-width" */
  String get borderStartWidth() =>
    getPropertyValue('${_browserPrefix}border-start-width');

  /** Sets the value of "border-start-width" */
  void set borderStartWidth(var value) {
    setProperty('${_browserPrefix}border-start-width', value, '');
  }

  /** Gets the value of "border-style" */
  String get borderStyle() =>
    getPropertyValue('border-style');

  /** Sets the value of "border-style" */
  void set borderStyle(var value) {
    setProperty('border-style', value, '');
  }

  /** Gets the value of "border-top" */
  String get borderTop() =>
    getPropertyValue('border-top');

  /** Sets the value of "border-top" */
  void set borderTop(var value) {
    setProperty('border-top', value, '');
  }

  /** Gets the value of "border-top-color" */
  String get borderTopColor() =>
    getPropertyValue('border-top-color');

  /** Sets the value of "border-top-color" */
  void set borderTopColor(var value) {
    setProperty('border-top-color', value, '');
  }

  /** Gets the value of "border-top-left-radius" */
  String get borderTopLeftRadius() =>
    getPropertyValue('border-top-left-radius');

  /** Sets the value of "border-top-left-radius" */
  void set borderTopLeftRadius(var value) {
    setProperty('border-top-left-radius', value, '');
  }

  /** Gets the value of "border-top-right-radius" */
  String get borderTopRightRadius() =>
    getPropertyValue('border-top-right-radius');

  /** Sets the value of "border-top-right-radius" */
  void set borderTopRightRadius(var value) {
    setProperty('border-top-right-radius', value, '');
  }

  /** Gets the value of "border-top-style" */
  String get borderTopStyle() =>
    getPropertyValue('border-top-style');

  /** Sets the value of "border-top-style" */
  void set borderTopStyle(var value) {
    setProperty('border-top-style', value, '');
  }

  /** Gets the value of "border-top-width" */
  String get borderTopWidth() =>
    getPropertyValue('border-top-width');

  /** Sets the value of "border-top-width" */
  void set borderTopWidth(var value) {
    setProperty('border-top-width', value, '');
  }

  /** Gets the value of "border-vertical-spacing" */
  String get borderVerticalSpacing() =>
    getPropertyValue('${_browserPrefix}border-vertical-spacing');

  /** Sets the value of "border-vertical-spacing" */
  void set borderVerticalSpacing(var value) {
    setProperty('${_browserPrefix}border-vertical-spacing', value, '');
  }

  /** Gets the value of "border-width" */
  String get borderWidth() =>
    getPropertyValue('border-width');

  /** Sets the value of "border-width" */
  void set borderWidth(var value) {
    setProperty('border-width', value, '');
  }

  /** Gets the value of "bottom" */
  String get bottom() =>
    getPropertyValue('bottom');

  /** Sets the value of "bottom" */
  void set bottom(var value) {
    setProperty('bottom', value, '');
  }

  /** Gets the value of "box-align" */
  String get boxAlign() =>
    getPropertyValue('${_browserPrefix}box-align');

  /** Sets the value of "box-align" */
  void set boxAlign(var value) {
    setProperty('${_browserPrefix}box-align', value, '');
  }

  /** Gets the value of "box-direction" */
  String get boxDirection() =>
    getPropertyValue('${_browserPrefix}box-direction');

  /** Sets the value of "box-direction" */
  void set boxDirection(var value) {
    setProperty('${_browserPrefix}box-direction', value, '');
  }

  /** Gets the value of "box-flex" */
  String get boxFlex() =>
    getPropertyValue('${_browserPrefix}box-flex');

  /** Sets the value of "box-flex" */
  void set boxFlex(var value) {
    setProperty('${_browserPrefix}box-flex', value, '');
  }

  /** Gets the value of "box-flex-group" */
  String get boxFlexGroup() =>
    getPropertyValue('${_browserPrefix}box-flex-group');

  /** Sets the value of "box-flex-group" */
  void set boxFlexGroup(var value) {
    setProperty('${_browserPrefix}box-flex-group', value, '');
  }

  /** Gets the value of "box-lines" */
  String get boxLines() =>
    getPropertyValue('${_browserPrefix}box-lines');

  /** Sets the value of "box-lines" */
  void set boxLines(var value) {
    setProperty('${_browserPrefix}box-lines', value, '');
  }

  /** Gets the value of "box-ordinal-group" */
  String get boxOrdinalGroup() =>
    getPropertyValue('${_browserPrefix}box-ordinal-group');

  /** Sets the value of "box-ordinal-group" */
  void set boxOrdinalGroup(var value) {
    setProperty('${_browserPrefix}box-ordinal-group', value, '');
  }

  /** Gets the value of "box-orient" */
  String get boxOrient() =>
    getPropertyValue('${_browserPrefix}box-orient');

  /** Sets the value of "box-orient" */
  void set boxOrient(var value) {
    setProperty('${_browserPrefix}box-orient', value, '');
  }

  /** Gets the value of "box-pack" */
  String get boxPack() =>
    getPropertyValue('${_browserPrefix}box-pack');

  /** Sets the value of "box-pack" */
  void set boxPack(var value) {
    setProperty('${_browserPrefix}box-pack', value, '');
  }

  /** Gets the value of "box-reflect" */
  String get boxReflect() =>
    getPropertyValue('${_browserPrefix}box-reflect');

  /** Sets the value of "box-reflect" */
  void set boxReflect(var value) {
    setProperty('${_browserPrefix}box-reflect', value, '');
  }

  /** Gets the value of "box-shadow" */
  String get boxShadow() =>
    getPropertyValue('box-shadow');

  /** Sets the value of "box-shadow" */
  void set boxShadow(var value) {
    setProperty('box-shadow', value, '');
  }

  /** Gets the value of "box-sizing" */
  String get boxSizing() =>
    getPropertyValue('box-sizing');

  /** Sets the value of "box-sizing" */
  void set boxSizing(var value) {
    setProperty('box-sizing', value, '');
  }

  /** Gets the value of "caption-side" */
  String get captionSide() =>
    getPropertyValue('caption-side');

  /** Sets the value of "caption-side" */
  void set captionSide(var value) {
    setProperty('caption-side', value, '');
  }

  /** Gets the value of "clear" */
  String get clear() =>
    getPropertyValue('clear');

  /** Sets the value of "clear" */
  void set clear(var value) {
    setProperty('clear', value, '');
  }

  /** Gets the value of "clip" */
  String get clip() =>
    getPropertyValue('clip');

  /** Sets the value of "clip" */
  void set clip(var value) {
    setProperty('clip', value, '');
  }

  /** Gets the value of "color" */
  String get color() =>
    getPropertyValue('color');

  /** Sets the value of "color" */
  void set color(var value) {
    setProperty('color', value, '');
  }

  /** Gets the value of "color-correction" */
  String get colorCorrection() =>
    getPropertyValue('${_browserPrefix}color-correction');

  /** Sets the value of "color-correction" */
  void set colorCorrection(var value) {
    setProperty('${_browserPrefix}color-correction', value, '');
  }

  /** Gets the value of "column-break-after" */
  String get columnBreakAfter() =>
    getPropertyValue('${_browserPrefix}column-break-after');

  /** Sets the value of "column-break-after" */
  void set columnBreakAfter(var value) {
    setProperty('${_browserPrefix}column-break-after', value, '');
  }

  /** Gets the value of "column-break-before" */
  String get columnBreakBefore() =>
    getPropertyValue('${_browserPrefix}column-break-before');

  /** Sets the value of "column-break-before" */
  void set columnBreakBefore(var value) {
    setProperty('${_browserPrefix}column-break-before', value, '');
  }

  /** Gets the value of "column-break-inside" */
  String get columnBreakInside() =>
    getPropertyValue('${_browserPrefix}column-break-inside');

  /** Sets the value of "column-break-inside" */
  void set columnBreakInside(var value) {
    setProperty('${_browserPrefix}column-break-inside', value, '');
  }

  /** Gets the value of "column-count" */
  String get columnCount() =>
    getPropertyValue('${_browserPrefix}column-count');

  /** Sets the value of "column-count" */
  void set columnCount(var value) {
    setProperty('${_browserPrefix}column-count', value, '');
  }

  /** Gets the value of "column-gap" */
  String get columnGap() =>
    getPropertyValue('${_browserPrefix}column-gap');

  /** Sets the value of "column-gap" */
  void set columnGap(var value) {
    setProperty('${_browserPrefix}column-gap', value, '');
  }

  /** Gets the value of "column-rule" */
  String get columnRule() =>
    getPropertyValue('${_browserPrefix}column-rule');

  /** Sets the value of "column-rule" */
  void set columnRule(var value) {
    setProperty('${_browserPrefix}column-rule', value, '');
  }

  /** Gets the value of "column-rule-color" */
  String get columnRuleColor() =>
    getPropertyValue('${_browserPrefix}column-rule-color');

  /** Sets the value of "column-rule-color" */
  void set columnRuleColor(var value) {
    setProperty('${_browserPrefix}column-rule-color', value, '');
  }

  /** Gets the value of "column-rule-style" */
  String get columnRuleStyle() =>
    getPropertyValue('${_browserPrefix}column-rule-style');

  /** Sets the value of "column-rule-style" */
  void set columnRuleStyle(var value) {
    setProperty('${_browserPrefix}column-rule-style', value, '');
  }

  /** Gets the value of "column-rule-width" */
  String get columnRuleWidth() =>
    getPropertyValue('${_browserPrefix}column-rule-width');

  /** Sets the value of "column-rule-width" */
  void set columnRuleWidth(var value) {
    setProperty('${_browserPrefix}column-rule-width', value, '');
  }

  /** Gets the value of "column-span" */
  String get columnSpan() =>
    getPropertyValue('${_browserPrefix}column-span');

  /** Sets the value of "column-span" */
  void set columnSpan(var value) {
    setProperty('${_browserPrefix}column-span', value, '');
  }

  /** Gets the value of "column-width" */
  String get columnWidth() =>
    getPropertyValue('${_browserPrefix}column-width');

  /** Sets the value of "column-width" */
  void set columnWidth(var value) {
    setProperty('${_browserPrefix}column-width', value, '');
  }

  /** Gets the value of "columns" */
  String get columns() =>
    getPropertyValue('${_browserPrefix}columns');

  /** Sets the value of "columns" */
  void set columns(var value) {
    setProperty('${_browserPrefix}columns', value, '');
  }

  /** Gets the value of "content" */
  String get content() =>
    getPropertyValue('content');

  /** Sets the value of "content" */
  void set content(var value) {
    setProperty('content', value, '');
  }

  /** Gets the value of "counter-increment" */
  String get counterIncrement() =>
    getPropertyValue('counter-increment');

  /** Sets the value of "counter-increment" */
  void set counterIncrement(var value) {
    setProperty('counter-increment', value, '');
  }

  /** Gets the value of "counter-reset" */
  String get counterReset() =>
    getPropertyValue('counter-reset');

  /** Sets the value of "counter-reset" */
  void set counterReset(var value) {
    setProperty('counter-reset', value, '');
  }

  /** Gets the value of "cursor" */
  String get cursor() =>
    getPropertyValue('cursor');

  /** Sets the value of "cursor" */
  void set cursor(var value) {
    setProperty('cursor', value, '');
  }

  /** Gets the value of "direction" */
  String get direction() =>
    getPropertyValue('direction');

  /** Sets the value of "direction" */
  void set direction(var value) {
    setProperty('direction', value, '');
  }

  /** Gets the value of "display" */
  String get display() =>
    getPropertyValue('display');

  /** Sets the value of "display" */
  void set display(var value) {
    setProperty('display', value, '');
  }

  /** Gets the value of "empty-cells" */
  String get emptyCells() =>
    getPropertyValue('empty-cells');

  /** Sets the value of "empty-cells" */
  void set emptyCells(var value) {
    setProperty('empty-cells', value, '');
  }

  /** Gets the value of "filter" */
  String get filter() =>
    getPropertyValue('${_browserPrefix}filter');

  /** Sets the value of "filter" */
  void set filter(var value) {
    setProperty('${_browserPrefix}filter', value, '');
  }

  /** Gets the value of "flex-align" */
  String get flexAlign() =>
    getPropertyValue('${_browserPrefix}flex-align');

  /** Sets the value of "flex-align" */
  void set flexAlign(var value) {
    setProperty('${_browserPrefix}flex-align', value, '');
  }

  /** Gets the value of "flex-flow" */
  String get flexFlow() =>
    getPropertyValue('${_browserPrefix}flex-flow');

  /** Sets the value of "flex-flow" */
  void set flexFlow(var value) {
    setProperty('${_browserPrefix}flex-flow', value, '');
  }

  /** Gets the value of "flex-order" */
  String get flexOrder() =>
    getPropertyValue('${_browserPrefix}flex-order');

  /** Sets the value of "flex-order" */
  void set flexOrder(var value) {
    setProperty('${_browserPrefix}flex-order', value, '');
  }

  /** Gets the value of "flex-pack" */
  String get flexPack() =>
    getPropertyValue('${_browserPrefix}flex-pack');

  /** Sets the value of "flex-pack" */
  void set flexPack(var value) {
    setProperty('${_browserPrefix}flex-pack', value, '');
  }

  /** Gets the value of "float" */
  String get float() =>
    getPropertyValue('float');

  /** Sets the value of "float" */
  void set float(var value) {
    setProperty('float', value, '');
  }

  /** Gets the value of "flow-from" */
  String get flowFrom() =>
    getPropertyValue('${_browserPrefix}flow-from');

  /** Sets the value of "flow-from" */
  void set flowFrom(var value) {
    setProperty('${_browserPrefix}flow-from', value, '');
  }

  /** Gets the value of "flow-into" */
  String get flowInto() =>
    getPropertyValue('${_browserPrefix}flow-into');

  /** Sets the value of "flow-into" */
  void set flowInto(var value) {
    setProperty('${_browserPrefix}flow-into', value, '');
  }

  /** Gets the value of "font" */
  String get font() =>
    getPropertyValue('font');

  /** Sets the value of "font" */
  void set font(var value) {
    setProperty('font', value, '');
  }

  /** Gets the value of "font-family" */
  String get fontFamily() =>
    getPropertyValue('font-family');

  /** Sets the value of "font-family" */
  void set fontFamily(var value) {
    setProperty('font-family', value, '');
  }

  /** Gets the value of "font-feature-settings" */
  String get fontFeatureSettings() =>
    getPropertyValue('${_browserPrefix}font-feature-settings');

  /** Sets the value of "font-feature-settings" */
  void set fontFeatureSettings(var value) {
    setProperty('${_browserPrefix}font-feature-settings', value, '');
  }

  /** Gets the value of "font-size" */
  String get fontSize() =>
    getPropertyValue('font-size');

  /** Sets the value of "font-size" */
  void set fontSize(var value) {
    setProperty('font-size', value, '');
  }

  /** Gets the value of "font-size-delta" */
  String get fontSizeDelta() =>
    getPropertyValue('${_browserPrefix}font-size-delta');

  /** Sets the value of "font-size-delta" */
  void set fontSizeDelta(var value) {
    setProperty('${_browserPrefix}font-size-delta', value, '');
  }

  /** Gets the value of "font-smoothing" */
  String get fontSmoothing() =>
    getPropertyValue('${_browserPrefix}font-smoothing');

  /** Sets the value of "font-smoothing" */
  void set fontSmoothing(var value) {
    setProperty('${_browserPrefix}font-smoothing', value, '');
  }

  /** Gets the value of "font-stretch" */
  String get fontStretch() =>
    getPropertyValue('font-stretch');

  /** Sets the value of "font-stretch" */
  void set fontStretch(var value) {
    setProperty('font-stretch', value, '');
  }

  /** Gets the value of "font-style" */
  String get fontStyle() =>
    getPropertyValue('font-style');

  /** Sets the value of "font-style" */
  void set fontStyle(var value) {
    setProperty('font-style', value, '');
  }

  /** Gets the value of "font-variant" */
  String get fontVariant() =>
    getPropertyValue('font-variant');

  /** Sets the value of "font-variant" */
  void set fontVariant(var value) {
    setProperty('font-variant', value, '');
  }

  /** Gets the value of "font-weight" */
  String get fontWeight() =>
    getPropertyValue('font-weight');

  /** Sets the value of "font-weight" */
  void set fontWeight(var value) {
    setProperty('font-weight', value, '');
  }

  /** Gets the value of "height" */
  String get height() =>
    getPropertyValue('height');

  /** Sets the value of "height" */
  void set height(var value) {
    setProperty('height', value, '');
  }

  /** Gets the value of "highlight" */
  String get highlight() =>
    getPropertyValue('${_browserPrefix}highlight');

  /** Sets the value of "highlight" */
  void set highlight(var value) {
    setProperty('${_browserPrefix}highlight', value, '');
  }

  /** Gets the value of "hyphenate-character" */
  String get hyphenateCharacter() =>
    getPropertyValue('${_browserPrefix}hyphenate-character');

  /** Sets the value of "hyphenate-character" */
  void set hyphenateCharacter(var value) {
    setProperty('${_browserPrefix}hyphenate-character', value, '');
  }

  /** Gets the value of "hyphenate-limit-after" */
  String get hyphenateLimitAfter() =>
    getPropertyValue('${_browserPrefix}hyphenate-limit-after');

  /** Sets the value of "hyphenate-limit-after" */
  void set hyphenateLimitAfter(var value) {
    setProperty('${_browserPrefix}hyphenate-limit-after', value, '');
  }

  /** Gets the value of "hyphenate-limit-before" */
  String get hyphenateLimitBefore() =>
    getPropertyValue('${_browserPrefix}hyphenate-limit-before');

  /** Sets the value of "hyphenate-limit-before" */
  void set hyphenateLimitBefore(var value) {
    setProperty('${_browserPrefix}hyphenate-limit-before', value, '');
  }

  /** Gets the value of "hyphenate-limit-lines" */
  String get hyphenateLimitLines() =>
    getPropertyValue('${_browserPrefix}hyphenate-limit-lines');

  /** Sets the value of "hyphenate-limit-lines" */
  void set hyphenateLimitLines(var value) {
    setProperty('${_browserPrefix}hyphenate-limit-lines', value, '');
  }

  /** Gets the value of "hyphens" */
  String get hyphens() =>
    getPropertyValue('${_browserPrefix}hyphens');

  /** Sets the value of "hyphens" */
  void set hyphens(var value) {
    setProperty('${_browserPrefix}hyphens', value, '');
  }

  /** Gets the value of "image-rendering" */
  String get imageRendering() =>
    getPropertyValue('image-rendering');

  /** Sets the value of "image-rendering" */
  void set imageRendering(var value) {
    setProperty('image-rendering', value, '');
  }

  /** Gets the value of "left" */
  String get left() =>
    getPropertyValue('left');

  /** Sets the value of "left" */
  void set left(var value) {
    setProperty('left', value, '');
  }

  /** Gets the value of "letter-spacing" */
  String get letterSpacing() =>
    getPropertyValue('letter-spacing');

  /** Sets the value of "letter-spacing" */
  void set letterSpacing(var value) {
    setProperty('letter-spacing', value, '');
  }

  /** Gets the value of "line-box-contain" */
  String get lineBoxContain() =>
    getPropertyValue('${_browserPrefix}line-box-contain');

  /** Sets the value of "line-box-contain" */
  void set lineBoxContain(var value) {
    setProperty('${_browserPrefix}line-box-contain', value, '');
  }

  /** Gets the value of "line-break" */
  String get lineBreak() =>
    getPropertyValue('${_browserPrefix}line-break');

  /** Sets the value of "line-break" */
  void set lineBreak(var value) {
    setProperty('${_browserPrefix}line-break', value, '');
  }

  /** Gets the value of "line-clamp" */
  String get lineClamp() =>
    getPropertyValue('${_browserPrefix}line-clamp');

  /** Sets the value of "line-clamp" */
  void set lineClamp(var value) {
    setProperty('${_browserPrefix}line-clamp', value, '');
  }

  /** Gets the value of "line-height" */
  String get lineHeight() =>
    getPropertyValue('line-height');

  /** Sets the value of "line-height" */
  void set lineHeight(var value) {
    setProperty('line-height', value, '');
  }

  /** Gets the value of "list-style" */
  String get listStyle() =>
    getPropertyValue('list-style');

  /** Sets the value of "list-style" */
  void set listStyle(var value) {
    setProperty('list-style', value, '');
  }

  /** Gets the value of "list-style-image" */
  String get listStyleImage() =>
    getPropertyValue('list-style-image');

  /** Sets the value of "list-style-image" */
  void set listStyleImage(var value) {
    setProperty('list-style-image', value, '');
  }

  /** Gets the value of "list-style-position" */
  String get listStylePosition() =>
    getPropertyValue('list-style-position');

  /** Sets the value of "list-style-position" */
  void set listStylePosition(var value) {
    setProperty('list-style-position', value, '');
  }

  /** Gets the value of "list-style-type" */
  String get listStyleType() =>
    getPropertyValue('list-style-type');

  /** Sets the value of "list-style-type" */
  void set listStyleType(var value) {
    setProperty('list-style-type', value, '');
  }

  /** Gets the value of "locale" */
  String get locale() =>
    getPropertyValue('${_browserPrefix}locale');

  /** Sets the value of "locale" */
  void set locale(var value) {
    setProperty('${_browserPrefix}locale', value, '');
  }

  /** Gets the value of "logical-height" */
  String get logicalHeight() =>
    getPropertyValue('${_browserPrefix}logical-height');

  /** Sets the value of "logical-height" */
  void set logicalHeight(var value) {
    setProperty('${_browserPrefix}logical-height', value, '');
  }

  /** Gets the value of "logical-width" */
  String get logicalWidth() =>
    getPropertyValue('${_browserPrefix}logical-width');

  /** Sets the value of "logical-width" */
  void set logicalWidth(var value) {
    setProperty('${_browserPrefix}logical-width', value, '');
  }

  /** Gets the value of "margin" */
  String get margin() =>
    getPropertyValue('margin');

  /** Sets the value of "margin" */
  void set margin(var value) {
    setProperty('margin', value, '');
  }

  /** Gets the value of "margin-after" */
  String get marginAfter() =>
    getPropertyValue('${_browserPrefix}margin-after');

  /** Sets the value of "margin-after" */
  void set marginAfter(var value) {
    setProperty('${_browserPrefix}margin-after', value, '');
  }

  /** Gets the value of "margin-after-collapse" */
  String get marginAfterCollapse() =>
    getPropertyValue('${_browserPrefix}margin-after-collapse');

  /** Sets the value of "margin-after-collapse" */
  void set marginAfterCollapse(var value) {
    setProperty('${_browserPrefix}margin-after-collapse', value, '');
  }

  /** Gets the value of "margin-before" */
  String get marginBefore() =>
    getPropertyValue('${_browserPrefix}margin-before');

  /** Sets the value of "margin-before" */
  void set marginBefore(var value) {
    setProperty('${_browserPrefix}margin-before', value, '');
  }

  /** Gets the value of "margin-before-collapse" */
  String get marginBeforeCollapse() =>
    getPropertyValue('${_browserPrefix}margin-before-collapse');

  /** Sets the value of "margin-before-collapse" */
  void set marginBeforeCollapse(var value) {
    setProperty('${_browserPrefix}margin-before-collapse', value, '');
  }

  /** Gets the value of "margin-bottom" */
  String get marginBottom() =>
    getPropertyValue('margin-bottom');

  /** Sets the value of "margin-bottom" */
  void set marginBottom(var value) {
    setProperty('margin-bottom', value, '');
  }

  /** Gets the value of "margin-bottom-collapse" */
  String get marginBottomCollapse() =>
    getPropertyValue('${_browserPrefix}margin-bottom-collapse');

  /** Sets the value of "margin-bottom-collapse" */
  void set marginBottomCollapse(var value) {
    setProperty('${_browserPrefix}margin-bottom-collapse', value, '');
  }

  /** Gets the value of "margin-collapse" */
  String get marginCollapse() =>
    getPropertyValue('${_browserPrefix}margin-collapse');

  /** Sets the value of "margin-collapse" */
  void set marginCollapse(var value) {
    setProperty('${_browserPrefix}margin-collapse', value, '');
  }

  /** Gets the value of "margin-end" */
  String get marginEnd() =>
    getPropertyValue('${_browserPrefix}margin-end');

  /** Sets the value of "margin-end" */
  void set marginEnd(var value) {
    setProperty('${_browserPrefix}margin-end', value, '');
  }

  /** Gets the value of "margin-left" */
  String get marginLeft() =>
    getPropertyValue('margin-left');

  /** Sets the value of "margin-left" */
  void set marginLeft(var value) {
    setProperty('margin-left', value, '');
  }

  /** Gets the value of "margin-right" */
  String get marginRight() =>
    getPropertyValue('margin-right');

  /** Sets the value of "margin-right" */
  void set marginRight(var value) {
    setProperty('margin-right', value, '');
  }

  /** Gets the value of "margin-start" */
  String get marginStart() =>
    getPropertyValue('${_browserPrefix}margin-start');

  /** Sets the value of "margin-start" */
  void set marginStart(var value) {
    setProperty('${_browserPrefix}margin-start', value, '');
  }

  /** Gets the value of "margin-top" */
  String get marginTop() =>
    getPropertyValue('margin-top');

  /** Sets the value of "margin-top" */
  void set marginTop(var value) {
    setProperty('margin-top', value, '');
  }

  /** Gets the value of "margin-top-collapse" */
  String get marginTopCollapse() =>
    getPropertyValue('${_browserPrefix}margin-top-collapse');

  /** Sets the value of "margin-top-collapse" */
  void set marginTopCollapse(var value) {
    setProperty('${_browserPrefix}margin-top-collapse', value, '');
  }

  /** Gets the value of "marquee" */
  String get marquee() =>
    getPropertyValue('${_browserPrefix}marquee');

  /** Sets the value of "marquee" */
  void set marquee(var value) {
    setProperty('${_browserPrefix}marquee', value, '');
  }

  /** Gets the value of "marquee-direction" */
  String get marqueeDirection() =>
    getPropertyValue('${_browserPrefix}marquee-direction');

  /** Sets the value of "marquee-direction" */
  void set marqueeDirection(var value) {
    setProperty('${_browserPrefix}marquee-direction', value, '');
  }

  /** Gets the value of "marquee-increment" */
  String get marqueeIncrement() =>
    getPropertyValue('${_browserPrefix}marquee-increment');

  /** Sets the value of "marquee-increment" */
  void set marqueeIncrement(var value) {
    setProperty('${_browserPrefix}marquee-increment', value, '');
  }

  /** Gets the value of "marquee-repetition" */
  String get marqueeRepetition() =>
    getPropertyValue('${_browserPrefix}marquee-repetition');

  /** Sets the value of "marquee-repetition" */
  void set marqueeRepetition(var value) {
    setProperty('${_browserPrefix}marquee-repetition', value, '');
  }

  /** Gets the value of "marquee-speed" */
  String get marqueeSpeed() =>
    getPropertyValue('${_browserPrefix}marquee-speed');

  /** Sets the value of "marquee-speed" */
  void set marqueeSpeed(var value) {
    setProperty('${_browserPrefix}marquee-speed', value, '');
  }

  /** Gets the value of "marquee-style" */
  String get marqueeStyle() =>
    getPropertyValue('${_browserPrefix}marquee-style');

  /** Sets the value of "marquee-style" */
  void set marqueeStyle(var value) {
    setProperty('${_browserPrefix}marquee-style', value, '');
  }

  /** Gets the value of "mask" */
  String get mask() =>
    getPropertyValue('${_browserPrefix}mask');

  /** Sets the value of "mask" */
  void set mask(var value) {
    setProperty('${_browserPrefix}mask', value, '');
  }

  /** Gets the value of "mask-attachment" */
  String get maskAttachment() =>
    getPropertyValue('${_browserPrefix}mask-attachment');

  /** Sets the value of "mask-attachment" */
  void set maskAttachment(var value) {
    setProperty('${_browserPrefix}mask-attachment', value, '');
  }

  /** Gets the value of "mask-box-image" */
  String get maskBoxImage() =>
    getPropertyValue('${_browserPrefix}mask-box-image');

  /** Sets the value of "mask-box-image" */
  void set maskBoxImage(var value) {
    setProperty('${_browserPrefix}mask-box-image', value, '');
  }

  /** Gets the value of "mask-box-image-outset" */
  String get maskBoxImageOutset() =>
    getPropertyValue('${_browserPrefix}mask-box-image-outset');

  /** Sets the value of "mask-box-image-outset" */
  void set maskBoxImageOutset(var value) {
    setProperty('${_browserPrefix}mask-box-image-outset', value, '');
  }

  /** Gets the value of "mask-box-image-repeat" */
  String get maskBoxImageRepeat() =>
    getPropertyValue('${_browserPrefix}mask-box-image-repeat');

  /** Sets the value of "mask-box-image-repeat" */
  void set maskBoxImageRepeat(var value) {
    setProperty('${_browserPrefix}mask-box-image-repeat', value, '');
  }

  /** Gets the value of "mask-box-image-slice" */
  String get maskBoxImageSlice() =>
    getPropertyValue('${_browserPrefix}mask-box-image-slice');

  /** Sets the value of "mask-box-image-slice" */
  void set maskBoxImageSlice(var value) {
    setProperty('${_browserPrefix}mask-box-image-slice', value, '');
  }

  /** Gets the value of "mask-box-image-source" */
  String get maskBoxImageSource() =>
    getPropertyValue('${_browserPrefix}mask-box-image-source');

  /** Sets the value of "mask-box-image-source" */
  void set maskBoxImageSource(var value) {
    setProperty('${_browserPrefix}mask-box-image-source', value, '');
  }

  /** Gets the value of "mask-box-image-width" */
  String get maskBoxImageWidth() =>
    getPropertyValue('${_browserPrefix}mask-box-image-width');

  /** Sets the value of "mask-box-image-width" */
  void set maskBoxImageWidth(var value) {
    setProperty('${_browserPrefix}mask-box-image-width', value, '');
  }

  /** Gets the value of "mask-clip" */
  String get maskClip() =>
    getPropertyValue('${_browserPrefix}mask-clip');

  /** Sets the value of "mask-clip" */
  void set maskClip(var value) {
    setProperty('${_browserPrefix}mask-clip', value, '');
  }

  /** Gets the value of "mask-composite" */
  String get maskComposite() =>
    getPropertyValue('${_browserPrefix}mask-composite');

  /** Sets the value of "mask-composite" */
  void set maskComposite(var value) {
    setProperty('${_browserPrefix}mask-composite', value, '');
  }

  /** Gets the value of "mask-image" */
  String get maskImage() =>
    getPropertyValue('${_browserPrefix}mask-image');

  /** Sets the value of "mask-image" */
  void set maskImage(var value) {
    setProperty('${_browserPrefix}mask-image', value, '');
  }

  /** Gets the value of "mask-origin" */
  String get maskOrigin() =>
    getPropertyValue('${_browserPrefix}mask-origin');

  /** Sets the value of "mask-origin" */
  void set maskOrigin(var value) {
    setProperty('${_browserPrefix}mask-origin', value, '');
  }

  /** Gets the value of "mask-position" */
  String get maskPosition() =>
    getPropertyValue('${_browserPrefix}mask-position');

  /** Sets the value of "mask-position" */
  void set maskPosition(var value) {
    setProperty('${_browserPrefix}mask-position', value, '');
  }

  /** Gets the value of "mask-position-x" */
  String get maskPositionX() =>
    getPropertyValue('${_browserPrefix}mask-position-x');

  /** Sets the value of "mask-position-x" */
  void set maskPositionX(var value) {
    setProperty('${_browserPrefix}mask-position-x', value, '');
  }

  /** Gets the value of "mask-position-y" */
  String get maskPositionY() =>
    getPropertyValue('${_browserPrefix}mask-position-y');

  /** Sets the value of "mask-position-y" */
  void set maskPositionY(var value) {
    setProperty('${_browserPrefix}mask-position-y', value, '');
  }

  /** Gets the value of "mask-repeat" */
  String get maskRepeat() =>
    getPropertyValue('${_browserPrefix}mask-repeat');

  /** Sets the value of "mask-repeat" */
  void set maskRepeat(var value) {
    setProperty('${_browserPrefix}mask-repeat', value, '');
  }

  /** Gets the value of "mask-repeat-x" */
  String get maskRepeatX() =>
    getPropertyValue('${_browserPrefix}mask-repeat-x');

  /** Sets the value of "mask-repeat-x" */
  void set maskRepeatX(var value) {
    setProperty('${_browserPrefix}mask-repeat-x', value, '');
  }

  /** Gets the value of "mask-repeat-y" */
  String get maskRepeatY() =>
    getPropertyValue('${_browserPrefix}mask-repeat-y');

  /** Sets the value of "mask-repeat-y" */
  void set maskRepeatY(var value) {
    setProperty('${_browserPrefix}mask-repeat-y', value, '');
  }

  /** Gets the value of "mask-size" */
  String get maskSize() =>
    getPropertyValue('${_browserPrefix}mask-size');

  /** Sets the value of "mask-size" */
  void set maskSize(var value) {
    setProperty('${_browserPrefix}mask-size', value, '');
  }

  /** Gets the value of "match-nearest-mail-blockquote-color" */
  String get matchNearestMailBlockquoteColor() =>
    getPropertyValue('${_browserPrefix}match-nearest-mail-blockquote-color');

  /** Sets the value of "match-nearest-mail-blockquote-color" */
  void set matchNearestMailBlockquoteColor(var value) {
    setProperty('${_browserPrefix}match-nearest-mail-blockquote-color', value, '');
  }

  /** Gets the value of "max-height" */
  String get maxHeight() =>
    getPropertyValue('max-height');

  /** Sets the value of "max-height" */
  void set maxHeight(var value) {
    setProperty('max-height', value, '');
  }

  /** Gets the value of "max-logical-height" */
  String get maxLogicalHeight() =>
    getPropertyValue('${_browserPrefix}max-logical-height');

  /** Sets the value of "max-logical-height" */
  void set maxLogicalHeight(var value) {
    setProperty('${_browserPrefix}max-logical-height', value, '');
  }

  /** Gets the value of "max-logical-width" */
  String get maxLogicalWidth() =>
    getPropertyValue('${_browserPrefix}max-logical-width');

  /** Sets the value of "max-logical-width" */
  void set maxLogicalWidth(var value) {
    setProperty('${_browserPrefix}max-logical-width', value, '');
  }

  /** Gets the value of "max-width" */
  String get maxWidth() =>
    getPropertyValue('max-width');

  /** Sets the value of "max-width" */
  void set maxWidth(var value) {
    setProperty('max-width', value, '');
  }

  /** Gets the value of "min-height" */
  String get minHeight() =>
    getPropertyValue('min-height');

  /** Sets the value of "min-height" */
  void set minHeight(var value) {
    setProperty('min-height', value, '');
  }

  /** Gets the value of "min-logical-height" */
  String get minLogicalHeight() =>
    getPropertyValue('${_browserPrefix}min-logical-height');

  /** Sets the value of "min-logical-height" */
  void set minLogicalHeight(var value) {
    setProperty('${_browserPrefix}min-logical-height', value, '');
  }

  /** Gets the value of "min-logical-width" */
  String get minLogicalWidth() =>
    getPropertyValue('${_browserPrefix}min-logical-width');

  /** Sets the value of "min-logical-width" */
  void set minLogicalWidth(var value) {
    setProperty('${_browserPrefix}min-logical-width', value, '');
  }

  /** Gets the value of "min-width" */
  String get minWidth() =>
    getPropertyValue('min-width');

  /** Sets the value of "min-width" */
  void set minWidth(var value) {
    setProperty('min-width', value, '');
  }

  /** Gets the value of "nbsp-mode" */
  String get nbspMode() =>
    getPropertyValue('${_browserPrefix}nbsp-mode');

  /** Sets the value of "nbsp-mode" */
  void set nbspMode(var value) {
    setProperty('${_browserPrefix}nbsp-mode', value, '');
  }

  /** Gets the value of "opacity" */
  String get opacity() =>
    getPropertyValue('opacity');

  /** Sets the value of "opacity" */
  void set opacity(var value) {
    setProperty('opacity', value, '');
  }

  /** Gets the value of "orphans" */
  String get orphans() =>
    getPropertyValue('orphans');

  /** Sets the value of "orphans" */
  void set orphans(var value) {
    setProperty('orphans', value, '');
  }

  /** Gets the value of "outline" */
  String get outline() =>
    getPropertyValue('outline');

  /** Sets the value of "outline" */
  void set outline(var value) {
    setProperty('outline', value, '');
  }

  /** Gets the value of "outline-color" */
  String get outlineColor() =>
    getPropertyValue('outline-color');

  /** Sets the value of "outline-color" */
  void set outlineColor(var value) {
    setProperty('outline-color', value, '');
  }

  /** Gets the value of "outline-offset" */
  String get outlineOffset() =>
    getPropertyValue('outline-offset');

  /** Sets the value of "outline-offset" */
  void set outlineOffset(var value) {
    setProperty('outline-offset', value, '');
  }

  /** Gets the value of "outline-style" */
  String get outlineStyle() =>
    getPropertyValue('outline-style');

  /** Sets the value of "outline-style" */
  void set outlineStyle(var value) {
    setProperty('outline-style', value, '');
  }

  /** Gets the value of "outline-width" */
  String get outlineWidth() =>
    getPropertyValue('outline-width');

  /** Sets the value of "outline-width" */
  void set outlineWidth(var value) {
    setProperty('outline-width', value, '');
  }

  /** Gets the value of "overflow" */
  String get overflow() =>
    getPropertyValue('overflow');

  /** Sets the value of "overflow" */
  void set overflow(var value) {
    setProperty('overflow', value, '');
  }

  /** Gets the value of "overflow-x" */
  String get overflowX() =>
    getPropertyValue('overflow-x');

  /** Sets the value of "overflow-x" */
  void set overflowX(var value) {
    setProperty('overflow-x', value, '');
  }

  /** Gets the value of "overflow-y" */
  String get overflowY() =>
    getPropertyValue('overflow-y');

  /** Sets the value of "overflow-y" */
  void set overflowY(var value) {
    setProperty('overflow-y', value, '');
  }

  /** Gets the value of "padding" */
  String get padding() =>
    getPropertyValue('padding');

  /** Sets the value of "padding" */
  void set padding(var value) {
    setProperty('padding', value, '');
  }

  /** Gets the value of "padding-after" */
  String get paddingAfter() =>
    getPropertyValue('${_browserPrefix}padding-after');

  /** Sets the value of "padding-after" */
  void set paddingAfter(var value) {
    setProperty('${_browserPrefix}padding-after', value, '');
  }

  /** Gets the value of "padding-before" */
  String get paddingBefore() =>
    getPropertyValue('${_browserPrefix}padding-before');

  /** Sets the value of "padding-before" */
  void set paddingBefore(var value) {
    setProperty('${_browserPrefix}padding-before', value, '');
  }

  /** Gets the value of "padding-bottom" */
  String get paddingBottom() =>
    getPropertyValue('padding-bottom');

  /** Sets the value of "padding-bottom" */
  void set paddingBottom(var value) {
    setProperty('padding-bottom', value, '');
  }

  /** Gets the value of "padding-end" */
  String get paddingEnd() =>
    getPropertyValue('${_browserPrefix}padding-end');

  /** Sets the value of "padding-end" */
  void set paddingEnd(var value) {
    setProperty('${_browserPrefix}padding-end', value, '');
  }

  /** Gets the value of "padding-left" */
  String get paddingLeft() =>
    getPropertyValue('padding-left');

  /** Sets the value of "padding-left" */
  void set paddingLeft(var value) {
    setProperty('padding-left', value, '');
  }

  /** Gets the value of "padding-right" */
  String get paddingRight() =>
    getPropertyValue('padding-right');

  /** Sets the value of "padding-right" */
  void set paddingRight(var value) {
    setProperty('padding-right', value, '');
  }

  /** Gets the value of "padding-start" */
  String get paddingStart() =>
    getPropertyValue('${_browserPrefix}padding-start');

  /** Sets the value of "padding-start" */
  void set paddingStart(var value) {
    setProperty('${_browserPrefix}padding-start', value, '');
  }

  /** Gets the value of "padding-top" */
  String get paddingTop() =>
    getPropertyValue('padding-top');

  /** Sets the value of "padding-top" */
  void set paddingTop(var value) {
    setProperty('padding-top', value, '');
  }

  /** Gets the value of "page" */
  String get page() =>
    getPropertyValue('page');

  /** Sets the value of "page" */
  void set page(var value) {
    setProperty('page', value, '');
  }

  /** Gets the value of "page-break-after" */
  String get pageBreakAfter() =>
    getPropertyValue('page-break-after');

  /** Sets the value of "page-break-after" */
  void set pageBreakAfter(var value) {
    setProperty('page-break-after', value, '');
  }

  /** Gets the value of "page-break-before" */
  String get pageBreakBefore() =>
    getPropertyValue('page-break-before');

  /** Sets the value of "page-break-before" */
  void set pageBreakBefore(var value) {
    setProperty('page-break-before', value, '');
  }

  /** Gets the value of "page-break-inside" */
  String get pageBreakInside() =>
    getPropertyValue('page-break-inside');

  /** Sets the value of "page-break-inside" */
  void set pageBreakInside(var value) {
    setProperty('page-break-inside', value, '');
  }

  /** Gets the value of "perspective" */
  String get perspective() =>
    getPropertyValue('${_browserPrefix}perspective');

  /** Sets the value of "perspective" */
  void set perspective(var value) {
    setProperty('${_browserPrefix}perspective', value, '');
  }

  /** Gets the value of "perspective-origin" */
  String get perspectiveOrigin() =>
    getPropertyValue('${_browserPrefix}perspective-origin');

  /** Sets the value of "perspective-origin" */
  void set perspectiveOrigin(var value) {
    setProperty('${_browserPrefix}perspective-origin', value, '');
  }

  /** Gets the value of "perspective-origin-x" */
  String get perspectiveOriginX() =>
    getPropertyValue('${_browserPrefix}perspective-origin-x');

  /** Sets the value of "perspective-origin-x" */
  void set perspectiveOriginX(var value) {
    setProperty('${_browserPrefix}perspective-origin-x', value, '');
  }

  /** Gets the value of "perspective-origin-y" */
  String get perspectiveOriginY() =>
    getPropertyValue('${_browserPrefix}perspective-origin-y');

  /** Sets the value of "perspective-origin-y" */
  void set perspectiveOriginY(var value) {
    setProperty('${_browserPrefix}perspective-origin-y', value, '');
  }

  /** Gets the value of "pointer-events" */
  String get pointerEvents() =>
    getPropertyValue('pointer-events');

  /** Sets the value of "pointer-events" */
  void set pointerEvents(var value) {
    setProperty('pointer-events', value, '');
  }

  /** Gets the value of "position" */
  String get position() =>
    getPropertyValue('position');

  /** Sets the value of "position" */
  void set position(var value) {
    setProperty('position', value, '');
  }

  /** Gets the value of "quotes" */
  String get quotes() =>
    getPropertyValue('quotes');

  /** Sets the value of "quotes" */
  void set quotes(var value) {
    setProperty('quotes', value, '');
  }

  /** Gets the value of "region-break-after" */
  String get regionBreakAfter() =>
    getPropertyValue('${_browserPrefix}region-break-after');

  /** Sets the value of "region-break-after" */
  void set regionBreakAfter(var value) {
    setProperty('${_browserPrefix}region-break-after', value, '');
  }

  /** Gets the value of "region-break-before" */
  String get regionBreakBefore() =>
    getPropertyValue('${_browserPrefix}region-break-before');

  /** Sets the value of "region-break-before" */
  void set regionBreakBefore(var value) {
    setProperty('${_browserPrefix}region-break-before', value, '');
  }

  /** Gets the value of "region-break-inside" */
  String get regionBreakInside() =>
    getPropertyValue('${_browserPrefix}region-break-inside');

  /** Sets the value of "region-break-inside" */
  void set regionBreakInside(var value) {
    setProperty('${_browserPrefix}region-break-inside', value, '');
  }

  /** Gets the value of "region-overflow" */
  String get regionOverflow() =>
    getPropertyValue('${_browserPrefix}region-overflow');

  /** Sets the value of "region-overflow" */
  void set regionOverflow(var value) {
    setProperty('${_browserPrefix}region-overflow', value, '');
  }

  /** Gets the value of "resize" */
  String get resize() =>
    getPropertyValue('resize');

  /** Sets the value of "resize" */
  void set resize(var value) {
    setProperty('resize', value, '');
  }

  /** Gets the value of "right" */
  String get right() =>
    getPropertyValue('right');

  /** Sets the value of "right" */
  void set right(var value) {
    setProperty('right', value, '');
  }

  /** Gets the value of "rtl-ordering" */
  String get rtlOrdering() =>
    getPropertyValue('${_browserPrefix}rtl-ordering');

  /** Sets the value of "rtl-ordering" */
  void set rtlOrdering(var value) {
    setProperty('${_browserPrefix}rtl-ordering', value, '');
  }

  /** Gets the value of "size" */
  String get size() =>
    getPropertyValue('size');

  /** Sets the value of "size" */
  void set size(var value) {
    setProperty('size', value, '');
  }

  /** Gets the value of "speak" */
  String get speak() =>
    getPropertyValue('speak');

  /** Sets the value of "speak" */
  void set speak(var value) {
    setProperty('speak', value, '');
  }

  /** Gets the value of "src" */
  String get src() =>
    getPropertyValue('src');

  /** Sets the value of "src" */
  void set src(var value) {
    setProperty('src', value, '');
  }

  /** Gets the value of "table-layout" */
  String get tableLayout() =>
    getPropertyValue('table-layout');

  /** Sets the value of "table-layout" */
  void set tableLayout(var value) {
    setProperty('table-layout', value, '');
  }

  /** Gets the value of "tap-highlight-color" */
  String get tapHighlightColor() =>
    getPropertyValue('${_browserPrefix}tap-highlight-color');

  /** Sets the value of "tap-highlight-color" */
  void set tapHighlightColor(var value) {
    setProperty('${_browserPrefix}tap-highlight-color', value, '');
  }

  /** Gets the value of "text-align" */
  String get textAlign() =>
    getPropertyValue('text-align');

  /** Sets the value of "text-align" */
  void set textAlign(var value) {
    setProperty('text-align', value, '');
  }

  /** Gets the value of "text-combine" */
  String get textCombine() =>
    getPropertyValue('${_browserPrefix}text-combine');

  /** Sets the value of "text-combine" */
  void set textCombine(var value) {
    setProperty('${_browserPrefix}text-combine', value, '');
  }

  /** Gets the value of "text-decoration" */
  String get textDecoration() =>
    getPropertyValue('text-decoration');

  /** Sets the value of "text-decoration" */
  void set textDecoration(var value) {
    setProperty('text-decoration', value, '');
  }

  /** Gets the value of "text-decorations-in-effect" */
  String get textDecorationsInEffect() =>
    getPropertyValue('${_browserPrefix}text-decorations-in-effect');

  /** Sets the value of "text-decorations-in-effect" */
  void set textDecorationsInEffect(var value) {
    setProperty('${_browserPrefix}text-decorations-in-effect', value, '');
  }

  /** Gets the value of "text-emphasis" */
  String get textEmphasis() =>
    getPropertyValue('${_browserPrefix}text-emphasis');

  /** Sets the value of "text-emphasis" */
  void set textEmphasis(var value) {
    setProperty('${_browserPrefix}text-emphasis', value, '');
  }

  /** Gets the value of "text-emphasis-color" */
  String get textEmphasisColor() =>
    getPropertyValue('${_browserPrefix}text-emphasis-color');

  /** Sets the value of "text-emphasis-color" */
  void set textEmphasisColor(var value) {
    setProperty('${_browserPrefix}text-emphasis-color', value, '');
  }

  /** Gets the value of "text-emphasis-position" */
  String get textEmphasisPosition() =>
    getPropertyValue('${_browserPrefix}text-emphasis-position');

  /** Sets the value of "text-emphasis-position" */
  void set textEmphasisPosition(var value) {
    setProperty('${_browserPrefix}text-emphasis-position', value, '');
  }

  /** Gets the value of "text-emphasis-style" */
  String get textEmphasisStyle() =>
    getPropertyValue('${_browserPrefix}text-emphasis-style');

  /** Sets the value of "text-emphasis-style" */
  void set textEmphasisStyle(var value) {
    setProperty('${_browserPrefix}text-emphasis-style', value, '');
  }

  /** Gets the value of "text-fill-color" */
  String get textFillColor() =>
    getPropertyValue('${_browserPrefix}text-fill-color');

  /** Sets the value of "text-fill-color" */
  void set textFillColor(var value) {
    setProperty('${_browserPrefix}text-fill-color', value, '');
  }

  /** Gets the value of "text-indent" */
  String get textIndent() =>
    getPropertyValue('text-indent');

  /** Sets the value of "text-indent" */
  void set textIndent(var value) {
    setProperty('text-indent', value, '');
  }

  /** Gets the value of "text-line-through" */
  String get textLineThrough() =>
    getPropertyValue('text-line-through');

  /** Sets the value of "text-line-through" */
  void set textLineThrough(var value) {
    setProperty('text-line-through', value, '');
  }

  /** Gets the value of "text-line-through-color" */
  String get textLineThroughColor() =>
    getPropertyValue('text-line-through-color');

  /** Sets the value of "text-line-through-color" */
  void set textLineThroughColor(var value) {
    setProperty('text-line-through-color', value, '');
  }

  /** Gets the value of "text-line-through-mode" */
  String get textLineThroughMode() =>
    getPropertyValue('text-line-through-mode');

  /** Sets the value of "text-line-through-mode" */
  void set textLineThroughMode(var value) {
    setProperty('text-line-through-mode', value, '');
  }

  /** Gets the value of "text-line-through-style" */
  String get textLineThroughStyle() =>
    getPropertyValue('text-line-through-style');

  /** Sets the value of "text-line-through-style" */
  void set textLineThroughStyle(var value) {
    setProperty('text-line-through-style', value, '');
  }

  /** Gets the value of "text-line-through-width" */
  String get textLineThroughWidth() =>
    getPropertyValue('text-line-through-width');

  /** Sets the value of "text-line-through-width" */
  void set textLineThroughWidth(var value) {
    setProperty('text-line-through-width', value, '');
  }

  /** Gets the value of "text-orientation" */
  String get textOrientation() =>
    getPropertyValue('${_browserPrefix}text-orientation');

  /** Sets the value of "text-orientation" */
  void set textOrientation(var value) {
    setProperty('${_browserPrefix}text-orientation', value, '');
  }

  /** Gets the value of "text-overflow" */
  String get textOverflow() =>
    getPropertyValue('text-overflow');

  /** Sets the value of "text-overflow" */
  void set textOverflow(var value) {
    setProperty('text-overflow', value, '');
  }

  /** Gets the value of "text-overline" */
  String get textOverline() =>
    getPropertyValue('text-overline');

  /** Sets the value of "text-overline" */
  void set textOverline(var value) {
    setProperty('text-overline', value, '');
  }

  /** Gets the value of "text-overline-color" */
  String get textOverlineColor() =>
    getPropertyValue('text-overline-color');

  /** Sets the value of "text-overline-color" */
  void set textOverlineColor(var value) {
    setProperty('text-overline-color', value, '');
  }

  /** Gets the value of "text-overline-mode" */
  String get textOverlineMode() =>
    getPropertyValue('text-overline-mode');

  /** Sets the value of "text-overline-mode" */
  void set textOverlineMode(var value) {
    setProperty('text-overline-mode', value, '');
  }

  /** Gets the value of "text-overline-style" */
  String get textOverlineStyle() =>
    getPropertyValue('text-overline-style');

  /** Sets the value of "text-overline-style" */
  void set textOverlineStyle(var value) {
    setProperty('text-overline-style', value, '');
  }

  /** Gets the value of "text-overline-width" */
  String get textOverlineWidth() =>
    getPropertyValue('text-overline-width');

  /** Sets the value of "text-overline-width" */
  void set textOverlineWidth(var value) {
    setProperty('text-overline-width', value, '');
  }

  /** Gets the value of "text-rendering" */
  String get textRendering() =>
    getPropertyValue('text-rendering');

  /** Sets the value of "text-rendering" */
  void set textRendering(var value) {
    setProperty('text-rendering', value, '');
  }

  /** Gets the value of "text-security" */
  String get textSecurity() =>
    getPropertyValue('${_browserPrefix}text-security');

  /** Sets the value of "text-security" */
  void set textSecurity(var value) {
    setProperty('${_browserPrefix}text-security', value, '');
  }

  /** Gets the value of "text-shadow" */
  String get textShadow() =>
    getPropertyValue('text-shadow');

  /** Sets the value of "text-shadow" */
  void set textShadow(var value) {
    setProperty('text-shadow', value, '');
  }

  /** Gets the value of "text-size-adjust" */
  String get textSizeAdjust() =>
    getPropertyValue('${_browserPrefix}text-size-adjust');

  /** Sets the value of "text-size-adjust" */
  void set textSizeAdjust(var value) {
    setProperty('${_browserPrefix}text-size-adjust', value, '');
  }

  /** Gets the value of "text-stroke" */
  String get textStroke() =>
    getPropertyValue('${_browserPrefix}text-stroke');

  /** Sets the value of "text-stroke" */
  void set textStroke(var value) {
    setProperty('${_browserPrefix}text-stroke', value, '');
  }

  /** Gets the value of "text-stroke-color" */
  String get textStrokeColor() =>
    getPropertyValue('${_browserPrefix}text-stroke-color');

  /** Sets the value of "text-stroke-color" */
  void set textStrokeColor(var value) {
    setProperty('${_browserPrefix}text-stroke-color', value, '');
  }

  /** Gets the value of "text-stroke-width" */
  String get textStrokeWidth() =>
    getPropertyValue('${_browserPrefix}text-stroke-width');

  /** Sets the value of "text-stroke-width" */
  void set textStrokeWidth(var value) {
    setProperty('${_browserPrefix}text-stroke-width', value, '');
  }

  /** Gets the value of "text-transform" */
  String get textTransform() =>
    getPropertyValue('text-transform');

  /** Sets the value of "text-transform" */
  void set textTransform(var value) {
    setProperty('text-transform', value, '');
  }

  /** Gets the value of "text-underline" */
  String get textUnderline() =>
    getPropertyValue('text-underline');

  /** Sets the value of "text-underline" */
  void set textUnderline(var value) {
    setProperty('text-underline', value, '');
  }

  /** Gets the value of "text-underline-color" */
  String get textUnderlineColor() =>
    getPropertyValue('text-underline-color');

  /** Sets the value of "text-underline-color" */
  void set textUnderlineColor(var value) {
    setProperty('text-underline-color', value, '');
  }

  /** Gets the value of "text-underline-mode" */
  String get textUnderlineMode() =>
    getPropertyValue('text-underline-mode');

  /** Sets the value of "text-underline-mode" */
  void set textUnderlineMode(var value) {
    setProperty('text-underline-mode', value, '');
  }

  /** Gets the value of "text-underline-style" */
  String get textUnderlineStyle() =>
    getPropertyValue('text-underline-style');

  /** Sets the value of "text-underline-style" */
  void set textUnderlineStyle(var value) {
    setProperty('text-underline-style', value, '');
  }

  /** Gets the value of "text-underline-width" */
  String get textUnderlineWidth() =>
    getPropertyValue('text-underline-width');

  /** Sets the value of "text-underline-width" */
  void set textUnderlineWidth(var value) {
    setProperty('text-underline-width', value, '');
  }

  /** Gets the value of "top" */
  String get top() =>
    getPropertyValue('top');

  /** Sets the value of "top" */
  void set top(var value) {
    setProperty('top', value, '');
  }

  /** Gets the value of "transform" */
  String get transform() =>
    getPropertyValue('${_browserPrefix}transform');

  /** Sets the value of "transform" */
  void set transform(var value) {
    setProperty('${_browserPrefix}transform', value, '');
  }

  /** Gets the value of "transform-origin" */
  String get transformOrigin() =>
    getPropertyValue('${_browserPrefix}transform-origin');

  /** Sets the value of "transform-origin" */
  void set transformOrigin(var value) {
    setProperty('${_browserPrefix}transform-origin', value, '');
  }

  /** Gets the value of "transform-origin-x" */
  String get transformOriginX() =>
    getPropertyValue('${_browserPrefix}transform-origin-x');

  /** Sets the value of "transform-origin-x" */
  void set transformOriginX(var value) {
    setProperty('${_browserPrefix}transform-origin-x', value, '');
  }

  /** Gets the value of "transform-origin-y" */
  String get transformOriginY() =>
    getPropertyValue('${_browserPrefix}transform-origin-y');

  /** Sets the value of "transform-origin-y" */
  void set transformOriginY(var value) {
    setProperty('${_browserPrefix}transform-origin-y', value, '');
  }

  /** Gets the value of "transform-origin-z" */
  String get transformOriginZ() =>
    getPropertyValue('${_browserPrefix}transform-origin-z');

  /** Sets the value of "transform-origin-z" */
  void set transformOriginZ(var value) {
    setProperty('${_browserPrefix}transform-origin-z', value, '');
  }

  /** Gets the value of "transform-style" */
  String get transformStyle() =>
    getPropertyValue('${_browserPrefix}transform-style');

  /** Sets the value of "transform-style" */
  void set transformStyle(var value) {
    setProperty('${_browserPrefix}transform-style', value, '');
  }

  /** Gets the value of "transition" */
  String get transition() =>
    getPropertyValue('${_browserPrefix}transition');

  /** Sets the value of "transition" */
  void set transition(var value) {
    setProperty('${_browserPrefix}transition', value, '');
  }

  /** Gets the value of "transition-delay" */
  String get transitionDelay() =>
    getPropertyValue('${_browserPrefix}transition-delay');

  /** Sets the value of "transition-delay" */
  void set transitionDelay(var value) {
    setProperty('${_browserPrefix}transition-delay', value, '');
  }

  /** Gets the value of "transition-duration" */
  String get transitionDuration() =>
    getPropertyValue('${_browserPrefix}transition-duration');

  /** Sets the value of "transition-duration" */
  void set transitionDuration(var value) {
    setProperty('${_browserPrefix}transition-duration', value, '');
  }

  /** Gets the value of "transition-property" */
  String get transitionProperty() =>
    getPropertyValue('${_browserPrefix}transition-property');

  /** Sets the value of "transition-property" */
  void set transitionProperty(var value) {
    setProperty('${_browserPrefix}transition-property', value, '');
  }

  /** Gets the value of "transition-timing-function" */
  String get transitionTimingFunction() =>
    getPropertyValue('${_browserPrefix}transition-timing-function');

  /** Sets the value of "transition-timing-function" */
  void set transitionTimingFunction(var value) {
    setProperty('${_browserPrefix}transition-timing-function', value, '');
  }

  /** Gets the value of "unicode-bidi" */
  String get unicodeBidi() =>
    getPropertyValue('unicode-bidi');

  /** Sets the value of "unicode-bidi" */
  void set unicodeBidi(var value) {
    setProperty('unicode-bidi', value, '');
  }

  /** Gets the value of "unicode-range" */
  String get unicodeRange() =>
    getPropertyValue('unicode-range');

  /** Sets the value of "unicode-range" */
  void set unicodeRange(var value) {
    setProperty('unicode-range', value, '');
  }

  /** Gets the value of "user-drag" */
  String get userDrag() =>
    getPropertyValue('${_browserPrefix}user-drag');

  /** Sets the value of "user-drag" */
  void set userDrag(var value) {
    setProperty('${_browserPrefix}user-drag', value, '');
  }

  /** Gets the value of "user-modify" */
  String get userModify() =>
    getPropertyValue('${_browserPrefix}user-modify');

  /** Sets the value of "user-modify" */
  void set userModify(var value) {
    setProperty('${_browserPrefix}user-modify', value, '');
  }

  /** Gets the value of "user-select" */
  String get userSelect() =>
    getPropertyValue('${_browserPrefix}user-select');

  /** Sets the value of "user-select" */
  void set userSelect(var value) {
    setProperty('${_browserPrefix}user-select', value, '');
  }

  /** Gets the value of "vertical-align" */
  String get verticalAlign() =>
    getPropertyValue('vertical-align');

  /** Sets the value of "vertical-align" */
  void set verticalAlign(var value) {
    setProperty('vertical-align', value, '');
  }

  /** Gets the value of "visibility" */
  String get visibility() =>
    getPropertyValue('visibility');

  /** Sets the value of "visibility" */
  void set visibility(var value) {
    setProperty('visibility', value, '');
  }

  /** Gets the value of "white-space" */
  String get whiteSpace() =>
    getPropertyValue('white-space');

  /** Sets the value of "white-space" */
  void set whiteSpace(var value) {
    setProperty('white-space', value, '');
  }

  /** Gets the value of "widows" */
  String get widows() =>
    getPropertyValue('widows');

  /** Sets the value of "widows" */
  void set widows(var value) {
    setProperty('widows', value, '');
  }

  /** Gets the value of "width" */
  String get width() =>
    getPropertyValue('width');

  /** Sets the value of "width" */
  void set width(var value) {
    setProperty('width', value, '');
  }

  /** Gets the value of "word-break" */
  String get wordBreak() =>
    getPropertyValue('word-break');

  /** Sets the value of "word-break" */
  void set wordBreak(var value) {
    setProperty('word-break', value, '');
  }

  /** Gets the value of "word-spacing" */
  String get wordSpacing() =>
    getPropertyValue('word-spacing');

  /** Sets the value of "word-spacing" */
  void set wordSpacing(var value) {
    setProperty('word-spacing', value, '');
  }

  /** Gets the value of "word-wrap" */
  String get wordWrap() =>
    getPropertyValue('word-wrap');

  /** Sets the value of "word-wrap" */
  void set wordWrap(var value) {
    setProperty('word-wrap', value, '');
  }

  /** Gets the value of "wrap-shape" */
  String get wrapShape() =>
    getPropertyValue('${_browserPrefix}wrap-shape');

  /** Sets the value of "wrap-shape" */
  void set wrapShape(var value) {
    setProperty('${_browserPrefix}wrap-shape', value, '');
  }

  /** Gets the value of "writing-mode" */
  String get writingMode() =>
    getPropertyValue('${_browserPrefix}writing-mode');

  /** Sets the value of "writing-mode" */
  void set writingMode(var value) {
    setProperty('${_browserPrefix}writing-mode', value, '');
  }

  /** Gets the value of "z-index" */
  String get zIndex() =>
    getPropertyValue('z-index');

  /** Sets the value of "z-index" */
  void set zIndex(var value) {
    setProperty('z-index', value, '');
  }

  /** Gets the value of "zoom" */
  String get zoom() =>
    getPropertyValue('zoom');

  /** Sets the value of "zoom" */
  void set zoom(var value) {
    setProperty('zoom', value, '');
  }
}

class _CSSStyleRuleImpl extends _CSSRuleImpl implements CSSStyleRule native "*CSSStyleRule" {

  String selectorText;

  final _CSSStyleDeclarationImpl style;
}

class _CSSStyleSheetImpl extends _StyleSheetImpl implements CSSStyleSheet native "*CSSStyleSheet" {

  final _CSSRuleListImpl cssRules;

  final _CSSRuleImpl ownerRule;

  final _CSSRuleListImpl rules;

  int addRule(String selector, String style, [int index = null]) native;

  void deleteRule(int index) native;

  int insertRule(String rule, int index) native;

  void removeRule(int index) native;
}

class _CSSTransformValueImpl extends _CSSValueListImpl implements CSSTransformValue native "*WebKitCSSTransformValue" {

  static final int CSS_MATRIX = 11;

  static final int CSS_MATRIX3D = 21;

  static final int CSS_PERSPECTIVE = 20;

  static final int CSS_ROTATE = 4;

  static final int CSS_ROTATE3D = 17;

  static final int CSS_ROTATEX = 14;

  static final int CSS_ROTATEY = 15;

  static final int CSS_ROTATEZ = 16;

  static final int CSS_SCALE = 5;

  static final int CSS_SCALE3D = 19;

  static final int CSS_SCALEX = 6;

  static final int CSS_SCALEY = 7;

  static final int CSS_SCALEZ = 18;

  static final int CSS_SKEW = 8;

  static final int CSS_SKEWX = 9;

  static final int CSS_SKEWY = 10;

  static final int CSS_TRANSLATE = 1;

  static final int CSS_TRANSLATE3D = 13;

  static final int CSS_TRANSLATEX = 2;

  static final int CSS_TRANSLATEY = 3;

  static final int CSS_TRANSLATEZ = 12;

  final int operationType;
}

class _CSSUnknownRuleImpl extends _CSSRuleImpl implements CSSUnknownRule native "*CSSUnknownRule" {
}

class _CSSValueImpl implements CSSValue native "*CSSValue" {

  static final int CSS_CUSTOM = 3;

  static final int CSS_INHERIT = 0;

  static final int CSS_PRIMITIVE_VALUE = 1;

  static final int CSS_VALUE_LIST = 2;

  String cssText;

  final int cssValueType;
}

class _CSSValueListImpl extends _CSSValueImpl implements CSSValueList native "*CSSValueList" {

  final int length;

  _CSSValueImpl item(int index) native;
}

class _CanvasElementImpl extends _ElementImpl implements CanvasElement native "*HTMLCanvasElement" {

  int height;

  int width;

  Object getContext(String contextId) native;

  String toDataURL(String type) native;
}

class _CanvasGradientImpl implements CanvasGradient native "*CanvasGradient" {

  void addColorStop(num offset, String color) native;
}

class _CanvasPatternImpl implements CanvasPattern native "*CanvasPattern" {
}

class _CanvasRenderingContextImpl implements CanvasRenderingContext native "*CanvasRenderingContext" {

  final _CanvasElementImpl canvas;
}

class _CanvasRenderingContext2DImpl extends _CanvasRenderingContextImpl implements CanvasRenderingContext2D native "*CanvasRenderingContext2D" {

  Dynamic fillStyle;

  String font;

  num globalAlpha;

  String globalCompositeOperation;

  String lineCap;

  String lineJoin;

  num lineWidth;

  num miterLimit;

  num shadowBlur;

  String shadowColor;

  num shadowOffsetX;

  num shadowOffsetY;

  Dynamic strokeStyle;

  String textAlign;

  String textBaseline;

  final num webkitBackingStorePixelRatio;

  List webkitLineDash;

  num webkitLineDashOffset;

  void arc(num x, num y, num radius, num startAngle, num endAngle, bool anticlockwise) native;

  void arcTo(num x1, num y1, num x2, num y2, num radius) native;

  void beginPath() native;

  void bezierCurveTo(num cp1x, num cp1y, num cp2x, num cp2y, num x, num y) native;

  void clearRect(num x, num y, num width, num height) native;

  void clearShadow() native;

  void clip() native;

  void closePath() native;

  _ImageDataImpl createImageData(imagedata_OR_sw, [num sh = null]) native;

  _CanvasGradientImpl createLinearGradient(num x0, num y0, num x1, num y1) native;

  _CanvasPatternImpl createPattern(canvas_OR_image, String repetitionType) native;

  _CanvasGradientImpl createRadialGradient(num x0, num y0, num r0, num x1, num y1, num r1) native;

  void drawImage(canvas_OR_image_OR_video, num sx_OR_x, num sy_OR_y, [num sw_OR_width = null, num height_OR_sh = null, num dx = null, num dy = null, num dw = null, num dh = null]) native;

  void drawImageFromRect(_ImageElementImpl image, [num sx = null, num sy = null, num sw = null, num sh = null, num dx = null, num dy = null, num dw = null, num dh = null, String compositeOperation = null]) native;

  void fill() native;

  void fillRect(num x, num y, num width, num height) native;

  void fillText(String text, num x, num y, [num maxWidth = null]) native;

  _ImageDataImpl getImageData(num sx, num sy, num sw, num sh) native;

  bool isPointInPath(num x, num y) native;

  void lineTo(num x, num y) native;

  _TextMetricsImpl measureText(String text) native;

  void moveTo(num x, num y) native;

  void putImageData(_ImageDataImpl imagedata, num dx, num dy, [num dirtyX = null, num dirtyY = null, num dirtyWidth = null, num dirtyHeight = null]) native;

  void quadraticCurveTo(num cpx, num cpy, num x, num y) native;

  void rect(num x, num y, num width, num height) native;

  void restore() native;

  void rotate(num angle) native;

  void save() native;

  void scale(num sx, num sy) native;

  void setAlpha(num alpha) native;

  void setCompositeOperation(String compositeOperation) native;

  void setFillColor(c_OR_color_OR_grayLevel_OR_r, [num alpha_OR_g_OR_m = null, num b_OR_y = null, num a_OR_k = null, num a = null]) native;

  void setLineCap(String cap) native;

  void setLineJoin(String join) native;

  void setLineWidth(num width) native;

  void setMiterLimit(num limit) native;

  void setShadow(num width, num height, num blur, [c_OR_color_OR_grayLevel_OR_r = null, num alpha_OR_g_OR_m = null, num b_OR_y = null, num a_OR_k = null, num a = null]) native;

  void setStrokeColor(c_OR_color_OR_grayLevel_OR_r, [num alpha_OR_g_OR_m = null, num b_OR_y = null, num a_OR_k = null, num a = null]) native;

  void setTransform(num m11, num m12, num m21, num m22, num dx, num dy) native;

  void stroke() native;

  void strokeRect(num x, num y, num width, num height, [num lineWidth = null]) native;

  void strokeText(String text, num x, num y, [num maxWidth = null]) native;

  void transform(num m11, num m12, num m21, num m22, num dx, num dy) native;

  void translate(num tx, num ty) native;

  _ImageDataImpl webkitGetImageDataHD(num sx, num sy, num sw, num sh) native;

  void webkitPutImageDataHD(_ImageDataImpl imagedata, num dx, num dy, [num dirtyX = null, num dirtyY = null, num dirtyWidth = null, num dirtyHeight = null]) native;
}

class _CharacterDataImpl extends _NodeImpl implements CharacterData native "*CharacterData" {

  String data;

  final int length;

  void appendData(String data) native;

  void deleteData(int offset, int length) native;

  void insertData(int offset, String data) native;

  void replaceData(int offset, int length, String data) native;

  String substringData(int offset, int length) native;
}

class _ClientRectImpl implements ClientRect native "*ClientRect" {

  final num bottom;

  final num height;

  final num left;

  final num right;

  final num top;

  final num width;
}

class _ClientRectListImpl implements ClientRectList native "*ClientRectList" {

  final int length;

  _ClientRectImpl item(int index) native;
}

class _ClipboardImpl implements Clipboard native "*Clipboard" {

  String dropEffect;

  String effectAllowed;

  final _FileListImpl files;

  final _DataTransferItemListImpl items;

  final List types;

  void clearData([String type = null]) native;

  String getData(String type) native;

  bool setData(String type, String data) native;

  void setDragImage(_ImageElementImpl image, int x, int y) native;
}

class _CloseEventImpl extends _EventImpl implements CloseEvent native "*CloseEvent" {

  final int code;

  final String reason;

  final bool wasClean;
}

class _CommentImpl extends _CharacterDataImpl implements Comment native "*Comment" {
}

class _CompositionEventImpl extends _UIEventImpl implements CompositionEvent native "*CompositionEvent" {

  final String data;

  void initCompositionEvent(String typeArg, bool canBubbleArg, bool cancelableArg, _WindowImpl viewArg, String dataArg) native;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _ConsoleImpl
    // Console is sometimes a singleton bag-of-properties without a prototype.
    implements Console 
    native "=(typeof console == 'undefined' ? {} : console)" {

  final _MemoryInfoImpl memory;

  final List<ScriptProfile> profiles;

  void assertCondition(bool condition, Object arg) native;

  void count() native;

  void debug(Object arg) native;

  void dir() native;

  void dirxml() native;

  void error(Object arg) native;

  void group(Object arg) native;

  void groupCollapsed(Object arg) native;

  void groupEnd() native;

  void info(Object arg) native;

  void log(Object arg) native;

  void markTimeline() native;

  void profile(String title) native;

  void profileEnd(String title) native;

  void time(String title) native;

  void timeEnd(String title, Object arg) native;

  void timeStamp(Object arg) native;

  void trace(Object arg) native;

  void warn(Object arg) native;

}

class _ContentElementImpl extends _ElementImpl implements ContentElement native "*HTMLContentElement" {

  String select;
}

class _ConvolverNodeImpl extends _AudioNodeImpl implements ConvolverNode native "*ConvolverNode" {

  _AudioBufferImpl buffer;

  bool normalize;
}

class _CoordinatesImpl implements Coordinates native "*Coordinates" {

  final num accuracy;

  final num altitude;

  final num altitudeAccuracy;

  final num heading;

  final num latitude;

  final num longitude;

  final num speed;
}

class _CounterImpl implements Counter native "*Counter" {

  final String identifier;

  final String listStyle;

  final String separator;
}

class _CryptoImpl implements Crypto native "*Crypto" {

  void getRandomValues(_ArrayBufferViewImpl array) native;
}

class _CustomEventImpl extends _EventImpl implements CustomEvent native "*CustomEvent" {

  final Object detail;

  void initCustomEvent(String typeArg, bool canBubbleArg, bool cancelableArg, Object detailArg) native;
}

class _DListElementImpl extends _ElementImpl implements DListElement native "*HTMLDListElement" {

  bool compact;
}

class _DOMApplicationCacheImpl extends _EventTargetImpl implements DOMApplicationCache native "*DOMApplicationCache" {

  _DOMApplicationCacheEventsImpl get on() =>
    new _DOMApplicationCacheEventsImpl(this);

  static final int CHECKING = 2;

  static final int DOWNLOADING = 3;

  static final int IDLE = 1;

  static final int OBSOLETE = 5;

  static final int UNCACHED = 0;

  static final int UPDATEREADY = 4;

  final int status;

  void abort() native;

  void $dom_addEventListener(String type, EventListener listener, [bool useCapture = null]) native "addEventListener";

  bool $dom_dispatchEvent(_EventImpl evt) native "dispatchEvent";

  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture = null]) native "removeEventListener";

  void swapCache() native;

  void update() native;
}

class _DOMApplicationCacheEventsImpl extends _EventsImpl implements DOMApplicationCacheEvents {
  _DOMApplicationCacheEventsImpl(_ptr) : super(_ptr);

  EventListenerList get cached() => _get('cached');

  EventListenerList get checking() => _get('checking');

  EventListenerList get downloading() => _get('downloading');

  EventListenerList get error() => _get('error');

  EventListenerList get noUpdate() => _get('noupdate');

  EventListenerList get obsolete() => _get('obsolete');

  EventListenerList get progress() => _get('progress');

  EventListenerList get updateReady() => _get('updateready');
}

class _DOMExceptionImpl implements DOMException native "*DOMException" {

  static final int ABORT_ERR = 20;

  static final int DATA_CLONE_ERR = 25;

  static final int DOMSTRING_SIZE_ERR = 2;

  static final int HIERARCHY_REQUEST_ERR = 3;

  static final int INDEX_SIZE_ERR = 1;

  static final int INUSE_ATTRIBUTE_ERR = 10;

  static final int INVALID_ACCESS_ERR = 15;

  static final int INVALID_CHARACTER_ERR = 5;

  static final int INVALID_MODIFICATION_ERR = 13;

  static final int INVALID_NODE_TYPE_ERR = 24;

  static final int INVALID_STATE_ERR = 11;

  static final int NAMESPACE_ERR = 14;

  static final int NETWORK_ERR = 19;

  static final int NOT_FOUND_ERR = 8;

  static final int NOT_SUPPORTED_ERR = 9;

  static final int NO_DATA_ALLOWED_ERR = 6;

  static final int NO_MODIFICATION_ALLOWED_ERR = 7;

  static final int QUOTA_EXCEEDED_ERR = 22;

  static final int SECURITY_ERR = 18;

  static final int SYNTAX_ERR = 12;

  static final int TIMEOUT_ERR = 23;

  static final int TYPE_MISMATCH_ERR = 17;

  static final int URL_MISMATCH_ERR = 21;

  static final int VALIDATION_ERR = 16;

  static final int WRONG_DOCUMENT_ERR = 4;

  final int code;

  final String message;

  final String name;

  String toString() native;
}

class _DOMFileSystemImpl implements DOMFileSystem native "*DOMFileSystem" {

  final String name;

  final _DirectoryEntryImpl root;
}

class _DOMFileSystemSyncImpl implements DOMFileSystemSync native "*DOMFileSystemSync" {

  final String name;

  final _DirectoryEntrySyncImpl root;
}

class _DOMFormDataImpl implements DOMFormData native "*DOMFormData" {

  void append(String name, String value, String filename) native;
}

class _DOMImplementationImpl implements DOMImplementation native "*DOMImplementation" {

  _CSSStyleSheetImpl createCSSStyleSheet(String title, String media) native;

  _DocumentImpl createDocument(String namespaceURI, String qualifiedName, _DocumentTypeImpl doctype) native;

  _DocumentTypeImpl createDocumentType(String qualifiedName, String publicId, String systemId) native;

  _DocumentImpl createHTMLDocument(String title) native;

  bool hasFeature(String feature, String version) native;
}

class _DOMMimeTypeImpl implements DOMMimeType native "*DOMMimeType" {

  final String description;

  final _DOMPluginImpl enabledPlugin;

  final String suffixes;

  final String type;
}

class _DOMMimeTypeArrayImpl implements DOMMimeTypeArray native "*DOMMimeTypeArray" {

  final int length;

  _DOMMimeTypeImpl item(int index) native;

  _DOMMimeTypeImpl namedItem(String name) native;
}

class _DOMParserImpl implements DOMParser native "*DOMParser" {

  _DocumentImpl parseFromString(String str, String contentType) native;
}

class _DOMPluginImpl implements DOMPlugin native "*DOMPlugin" {

  final String description;

  final String filename;

  final int length;

  final String name;

  _DOMMimeTypeImpl item(int index) native;

  _DOMMimeTypeImpl namedItem(String name) native;
}

class _DOMPluginArrayImpl implements DOMPluginArray native "*DOMPluginArray" {

  final int length;

  _DOMPluginImpl item(int index) native;

  _DOMPluginImpl namedItem(String name) native;

  void refresh(bool reload) native;
}

class _DOMSelectionImpl implements DOMSelection native "*DOMSelection" {

  final _NodeImpl anchorNode;

  final int anchorOffset;

  final _NodeImpl baseNode;

  final int baseOffset;

  final _NodeImpl extentNode;

  final int extentOffset;

  final _NodeImpl focusNode;

  final int focusOffset;

  final bool isCollapsed;

  final int rangeCount;

  final String type;

  void addRange(_RangeImpl range) native;

  void collapse(_NodeImpl node, int index) native;

  void collapseToEnd() native;

  void collapseToStart() native;

  bool containsNode(_NodeImpl node, bool allowPartial) native;

  void deleteFromDocument() native;

  void empty() native;

  void extend(_NodeImpl node, int offset) native;

  _RangeImpl getRangeAt(int index) native;

  void modify(String alter, String direction, String granularity) native;

  void removeAllRanges() native;

  void selectAllChildren(_NodeImpl node) native;

  void setBaseAndExtent(_NodeImpl baseNode, int baseOffset, _NodeImpl extentNode, int extentOffset) native;

  void setPosition(_NodeImpl node, int offset) native;

  String toString() native;
}

class _DOMSettableTokenListImpl extends _DOMTokenListImpl implements DOMSettableTokenList native "*DOMSettableTokenList" {

  String value;
}

class _DOMStringListImpl implements DOMStringList native "*DOMStringList" {

  final int length;

  String operator[](int index) native "return this[index];";

  void operator[]=(int index, String value) {
    throw new UnsupportedOperationException("Cannot assign element of immutable List.");
  }
  // -- start List<String> mixins.
  // String is the element type.

  // From Iterable<String>:

  Iterator<String> iterator() {
    // Note: NodeLists are not fixed size. And most probably length shouldn't
    // be cached in both iterator _and_ forEach method. For now caching it
    // for consistency.
    return new _FixedSizeListIterator<String>(this);
  }

  // From Collection<String>:

  void add(String value) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void addLast(String value) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void addAll(Collection<String> collection) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void forEach(void f(String element)) => _Collections.forEach(this, f);

  Collection map(f(String element)) => _Collections.map(this, [], f);

  Collection<String> filter(bool f(String element)) =>
     _Collections.filter(this, <String>[], f);

  bool every(bool f(String element)) => _Collections.every(this, f);

  bool some(bool f(String element)) => _Collections.some(this, f);

  bool isEmpty() => this.length == 0;

  // From List<String>:

  void sort(int compare(String a, String b)) {
    throw new UnsupportedOperationException("Cannot sort immutable List.");
  }

  int indexOf(String element, [int start = 0]) =>
      _Lists.indexOf(this, element, start, this.length);

  int lastIndexOf(String element, [int start]) {
    if (start === null) start = length - 1;
    return _Lists.lastIndexOf(this, element, start);
  }

  String last() => this[length - 1];

  String removeLast() {
    throw new UnsupportedOperationException("Cannot removeLast on immutable List.");
  }

  // FIXME: implement these.
  void setRange(int start, int rangeLength, List<String> from, [int startFrom]) {
    throw new UnsupportedOperationException("Cannot setRange on immutable List.");
  }

  void removeRange(int start, int rangeLength) {
    throw new UnsupportedOperationException("Cannot removeRange on immutable List.");
  }

  void insertRange(int start, int rangeLength, [String initialValue]) {
    throw new UnsupportedOperationException("Cannot insertRange on immutable List.");
  }

  List<String> getRange(int start, int rangeLength) =>
      _Lists.getRange(this, start, rangeLength, <String>[]);

  // -- end List<String> mixins.

  bool contains(String string) native;

  String item(int index) native;
}

class _DOMTokenListImpl implements DOMTokenList native "*DOMTokenList" {

  final int length;

  void add(String token) native;

  bool contains(String token) native;

  String item(int index) native;

  void remove(String token) native;

  String toString() native;

  bool toggle(String token) native;
}

class _DOMURLImpl implements DOMURL native "*DOMURL" {

  String createObjectURL(blob_OR_stream) native;

  void revokeObjectURL(String url) native;
}

class _DataTransferItemImpl implements DataTransferItem native "*DataTransferItem" {

  final String kind;

  final String type;

  _BlobImpl getAsFile() native;

  void getAsString([StringCallback callback = null]) native;

  void webkitGetAsEntry([EntryCallback callback = null]) native;
}

class _DataTransferItemListImpl implements DataTransferItemList native "*DataTransferItemList" {

  final int length;

  void add(data_OR_file, [String type = null]) native;

  void clear() native;

  _DataTransferItemImpl item(int index) native;
}

class _DataViewImpl extends _ArrayBufferViewImpl implements DataView native "*DataView" {

  num getFloat32(int byteOffset, [bool littleEndian = null]) native;

  num getFloat64(int byteOffset, [bool littleEndian = null]) native;

  int getInt16(int byteOffset, [bool littleEndian = null]) native;

  int getInt32(int byteOffset, [bool littleEndian = null]) native;

  Object getInt8() native;

  int getUint16(int byteOffset, [bool littleEndian = null]) native;

  int getUint32(int byteOffset, [bool littleEndian = null]) native;

  Object getUint8() native;

  void setFloat32(int byteOffset, num value, [bool littleEndian = null]) native;

  void setFloat64(int byteOffset, num value, [bool littleEndian = null]) native;

  void setInt16(int byteOffset, int value, [bool littleEndian = null]) native;

  void setInt32(int byteOffset, int value, [bool littleEndian = null]) native;

  void setInt8() native;

  void setUint16(int byteOffset, int value, [bool littleEndian = null]) native;

  void setUint32(int byteOffset, int value, [bool littleEndian = null]) native;

  void setUint8() native;
}

class _DatabaseImpl implements Database native "*Database" {

  final String version;

  void changeVersion(String oldVersion, String newVersion, [SQLTransactionCallback callback = null, SQLTransactionErrorCallback errorCallback = null, VoidCallback successCallback = null]) native;

  void readTransaction(SQLTransactionCallback callback, [SQLTransactionErrorCallback errorCallback = null, VoidCallback successCallback = null]) native;

  void transaction(SQLTransactionCallback callback, [SQLTransactionErrorCallback errorCallback = null, VoidCallback successCallback = null]) native;
}

class _DatabaseSyncImpl implements DatabaseSync native "*DatabaseSync" {

  final String lastErrorMessage;

  final String version;

  void changeVersion(String oldVersion, String newVersion, [SQLTransactionSyncCallback callback = null]) native;

  void readTransaction(SQLTransactionSyncCallback callback) native;

  void transaction(SQLTransactionSyncCallback callback) native;
}

class _DedicatedWorkerContextImpl extends _WorkerContextImpl implements DedicatedWorkerContext native "*DedicatedWorkerContext" {

  _DedicatedWorkerContextEventsImpl get on() =>
    new _DedicatedWorkerContextEventsImpl(this);

  void postMessage(Object message, [List messagePorts = null]) native;

  void webkitPostMessage(Object message, [List transferList = null]) native;
}

class _DedicatedWorkerContextEventsImpl extends _WorkerContextEventsImpl implements DedicatedWorkerContextEvents {
  _DedicatedWorkerContextEventsImpl(_ptr) : super(_ptr);

  EventListenerList get message() => _get('message');
}

class _DelayNodeImpl extends _AudioNodeImpl implements DelayNode native "*DelayNode" {

  final _AudioParamImpl delayTime;
}

class _DeprecatedPeerConnectionImpl extends _EventTargetImpl implements DeprecatedPeerConnection native "*DeprecatedPeerConnection" {

  _DeprecatedPeerConnectionEventsImpl get on() =>
    new _DeprecatedPeerConnectionEventsImpl(this);

  static final int ACTIVE = 2;

  static final int CLOSED = 3;

  static final int NEGOTIATING = 1;

  static final int NEW = 0;

  final _MediaStreamListImpl localStreams;

  final int readyState;

  final _MediaStreamListImpl remoteStreams;

  void $dom_addEventListener(String type, EventListener listener, [bool useCapture = null]) native "addEventListener";

  void addStream(_MediaStreamImpl stream) native;

  void close() native;

  bool $dom_dispatchEvent(_EventImpl event) native "dispatchEvent";

  void processSignalingMessage(String message) native;

  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture = null]) native "removeEventListener";

  void removeStream(_MediaStreamImpl stream) native;

  void send(String text) native;
}

class _DeprecatedPeerConnectionEventsImpl extends _EventsImpl implements DeprecatedPeerConnectionEvents {
  _DeprecatedPeerConnectionEventsImpl(_ptr) : super(_ptr);

  EventListenerList get addStream() => _get('addstream');

  EventListenerList get connecting() => _get('connecting');

  EventListenerList get message() => _get('message');

  EventListenerList get open() => _get('open');

  EventListenerList get removeStream() => _get('removestream');

  EventListenerList get stateChange() => _get('statechange');
}

class _DetailsElementImpl extends _ElementImpl implements DetailsElement native "*HTMLDetailsElement" {

  bool open;
}

class _DeviceMotionEventImpl extends _EventImpl implements DeviceMotionEvent native "*DeviceMotionEvent" {

  final num interval;
}

class _DeviceOrientationEventImpl extends _EventImpl implements DeviceOrientationEvent native "*DeviceOrientationEvent" {

  final bool absolute;

  final num alpha;

  final num beta;

  final num gamma;

  void initDeviceOrientationEvent(String type, bool bubbles, bool cancelable, num alpha, num beta, num gamma, bool absolute) native;
}

class _DirectoryElementImpl extends _ElementImpl implements DirectoryElement native "*HTMLDirectoryElement" {

  bool compact;
}

class _DirectoryEntryImpl extends _EntryImpl implements DirectoryEntry native "*DirectoryEntry" {

  _DirectoryReaderImpl createReader() native;

  void getDirectory(String path, [Object flags = null, EntryCallback successCallback = null, ErrorCallback errorCallback = null]) native;

  void getFile(String path, [Object flags = null, EntryCallback successCallback = null, ErrorCallback errorCallback = null]) native;

  void removeRecursively(VoidCallback successCallback, [ErrorCallback errorCallback = null]) native;
}

class _DirectoryEntrySyncImpl extends _EntrySyncImpl implements DirectoryEntrySync native "*DirectoryEntrySync" {

  _DirectoryReaderSyncImpl createReader() native;

  _DirectoryEntrySyncImpl getDirectory(String path, Object flags) native;

  _FileEntrySyncImpl getFile(String path, Object flags) native;

  void removeRecursively() native;
}

class _DirectoryReaderImpl implements DirectoryReader native "*DirectoryReader" {

  void readEntries(EntriesCallback successCallback, [ErrorCallback errorCallback = null]) native;
}

class _DirectoryReaderSyncImpl implements DirectoryReaderSync native "*DirectoryReaderSync" {

  _EntryArraySyncImpl readEntries() native;
}

class _DivElementImpl extends _ElementImpl implements DivElement native "*HTMLDivElement" {

  String align;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _DocumentImpl extends _NodeImpl
    implements Document
    native "*HTMLDocument"
    {


  _DocumentEventsImpl get on() =>
    new _DocumentEventsImpl(this);

  final _ElementImpl activeElement;

  _ElementImpl body;

  String charset;

  String cookie;

  _WindowImpl get window() native "return this.defaultView;";

  final _ElementImpl documentElement;

  final String domain;

  final _HeadElementImpl head;

  final String lastModified;

  final String preferredStylesheetSet;

  final String readyState;

  final String referrer;

  String selectedStylesheetSet;

  final _StyleSheetListImpl styleSheets;

  String title;

  final _ElementImpl webkitCurrentFullScreenElement;

  final bool webkitFullScreenKeyboardInputAllowed;

  final _ElementImpl webkitFullscreenElement;

  final bool webkitFullscreenEnabled;

  final bool webkitHidden;

  final bool webkitIsFullScreen;

  final String webkitVisibilityState;

  _RangeImpl caretRangeFromPoint(int x, int y) native;

  _CDATASectionImpl createCDATASection(String data) native;

  _DocumentFragmentImpl createDocumentFragment() native;

  _ElementImpl $dom_createElement(String tagName) native "createElement";

  _ElementImpl $dom_createElementNS(String namespaceURI, String qualifiedName) native "createElementNS";

  _EventImpl $dom_createEvent(String eventType) native "createEvent";

  _RangeImpl createRange() native;

  _TextImpl $dom_createTextNode(String data) native "createTextNode";

  _TouchImpl createTouch(_WindowImpl window, _EventTargetImpl target, int identifier, int pageX, int pageY, int screenX, int screenY, int webkitRadiusX, int webkitRadiusY, num webkitRotationAngle, num webkitForce) native;

  _TouchListImpl $dom_createTouchList() native "createTouchList";

  _ElementImpl elementFromPoint(int x, int y) native;

  bool execCommand(String command, bool userInterface, String value) native;

  _CanvasRenderingContextImpl getCSSCanvasContext(String contextId, String name, int width, int height) native;

  _ElementImpl $dom_getElementById(String elementId) native "getElementById";

  _NodeListImpl $dom_getElementsByClassName(String tagname) native "getElementsByClassName";

  _NodeListImpl $dom_getElementsByName(String elementName) native "getElementsByName";

  _NodeListImpl $dom_getElementsByTagName(String tagname) native "getElementsByTagName";

  bool queryCommandEnabled(String command) native;

  bool queryCommandIndeterm(String command) native;

  bool queryCommandState(String command) native;

  bool queryCommandSupported(String command) native;

  String queryCommandValue(String command) native;

  _ElementImpl _query(String selectors) native "querySelector";

  _NodeListImpl $dom_querySelectorAll(String selectors) native "querySelectorAll";

  void webkitCancelFullScreen() native;

  void webkitExitFullscreen() native;

  _WebKitNamedFlowImpl webkitGetFlowByName(String name) native;

  // TODO(jacobr): implement all Element methods not on Document. 

  _ElementImpl query(String selectors) {
    // It is fine for our RegExp to detect element id query selectors to have
    // false negatives but not false positives.
    if (const RegExp("^#[_a-zA-Z]\\w*\$").hasMatch(selectors)) {
      return $dom_getElementById(selectors.substring(1));
    }
    return $dom_querySelector(selectors);
  }

// TODO(jacobr): autogenerate this method.
  _ElementImpl $dom_querySelector(String selectors) native "return this.querySelector(selectors);";

  ElementList queryAll(String selectors) {
    if (const RegExp("""^\\[name=["'][^'"]+['"]\\]\$""").hasMatch(selectors)) {
      final mutableMatches = $dom_getElementsByName(
          selectors.substring(7,selectors.length - 2));
      int len = mutableMatches.length;
      final copyOfMatches = new List<Element>(len);
      for (int i = 0; i < len; ++i) {
        copyOfMatches[i] = mutableMatches[i];
      }
      return new _FrozenElementList._wrap(copyOfMatches);
    } else if (const RegExp("^[*a-zA-Z0-9]+\$").hasMatch(selectors)) {
      final mutableMatches = $dom_getElementsByTagName(selectors);
      int len = mutableMatches.length;
      final copyOfMatches = new List<Element>(len);
      for (int i = 0; i < len; ++i) {
        copyOfMatches[i] = mutableMatches[i];
      }
      return new _FrozenElementList._wrap(copyOfMatches);
    } else {
      return new _FrozenElementList._wrap($dom_querySelectorAll(selectors));
    }
  }
}

class _DocumentEventsImpl extends _ElementEventsImpl implements DocumentEvents {
  _DocumentEventsImpl(_ptr) : super(_ptr);

  EventListenerList get abort() => _get('abort');

  EventListenerList get beforeCopy() => _get('beforecopy');

  EventListenerList get beforeCut() => _get('beforecut');

  EventListenerList get beforePaste() => _get('beforepaste');

  EventListenerList get blur() => _get('blur');

  EventListenerList get change() => _get('change');

  EventListenerList get click() => _get('click');

  EventListenerList get contextMenu() => _get('contextmenu');

  EventListenerList get copy() => _get('copy');

  EventListenerList get cut() => _get('cut');

  EventListenerList get doubleClick() => _get('dblclick');

  EventListenerList get drag() => _get('drag');

  EventListenerList get dragEnd() => _get('dragend');

  EventListenerList get dragEnter() => _get('dragenter');

  EventListenerList get dragLeave() => _get('dragleave');

  EventListenerList get dragOver() => _get('dragover');

  EventListenerList get dragStart() => _get('dragstart');

  EventListenerList get drop() => _get('drop');

  EventListenerList get error() => _get('error');

  EventListenerList get focus() => _get('focus');

  EventListenerList get fullscreenChange() => _get('webkitfullscreenchange');

  EventListenerList get fullscreenError() => _get('webkitfullscreenerror');

  EventListenerList get input() => _get('input');

  EventListenerList get invalid() => _get('invalid');

  EventListenerList get keyDown() => _get('keydown');

  EventListenerList get keyPress() => _get('keypress');

  EventListenerList get keyUp() => _get('keyup');

  EventListenerList get load() => _get('load');

  EventListenerList get mouseDown() => _get('mousedown');

  EventListenerList get mouseMove() => _get('mousemove');

  EventListenerList get mouseOut() => _get('mouseout');

  EventListenerList get mouseOver() => _get('mouseover');

  EventListenerList get mouseUp() => _get('mouseup');

  EventListenerList get mouseWheel() => _get('mousewheel');

  EventListenerList get paste() => _get('paste');

  EventListenerList get readyStateChange() => _get('readystatechange');

  EventListenerList get reset() => _get('reset');

  EventListenerList get scroll() => _get('scroll');

  EventListenerList get search() => _get('search');

  EventListenerList get select() => _get('select');

  EventListenerList get selectStart() => _get('selectstart');

  EventListenerList get selectionChange() => _get('selectionchange');

  EventListenerList get submit() => _get('submit');

  EventListenerList get touchCancel() => _get('touchcancel');

  EventListenerList get touchEnd() => _get('touchend');

  EventListenerList get touchMove() => _get('touchmove');

  EventListenerList get touchStart() => _get('touchstart');
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class FilteredElementList implements ElementList {
  final Node _node;
  final NodeList _childNodes;

  FilteredElementList(Node node): _childNodes = node.nodes, _node = node;

  // We can't memoize this, since it's possible that children will be messed
  // with externally to this class.
  //
  // TODO(nweiz): Do we really need to copy the list to make the types work out?
  List<Element> get _filtered() =>
    new List.from(_childNodes.filter((n) => n is Element));

  // Don't use _filtered.first so we can short-circuit once we find an element.
  Element get first() {
    for (final node in _childNodes) {
      if (node is Element) {
        return node;
      }
    }
    return null;
  }

  void forEach(void f(Element element)) {
    _filtered.forEach(f);
  }

  void operator []=(int index, Element value) {
    this[index].replaceWith(value);
  }

  void set length(int newLength) {
    final len = this.length;
    if (newLength >= len) {
      return;
    } else if (newLength < 0) {
      throw const IllegalArgumentException("Invalid list length");
    }

    removeRange(newLength - 1, len - newLength);
  }

  void add(Element value) {
    _childNodes.add(value);
  }

  void addAll(Collection<Element> collection) {
    collection.forEach(add);
  }

  void addLast(Element value) {
    add(value);
  }

  void sort(int compare(Element a, Element b)) {
    throw const UnsupportedOperationException('TODO(jacobr): should we impl?');
  }

  void copyFrom(List<Object> src, int srcStart, int dstStart, int count) {
    throw const NotImplementedException();
  }

  void setRange(int start, int rangeLength, List from, [int startFrom = 0]) {
    throw const NotImplementedException();
  }

  void removeRange(int start, int rangeLength) {
    _filtered.getRange(start, rangeLength).forEach((el) => el.remove());
  }

  void insertRange(int start, int rangeLength, [initialValue = null]) {
    throw const NotImplementedException();
  }

  void clear() {
    // Currently, ElementList#clear clears even non-element nodes, so we follow
    // that behavior.
    _childNodes.clear();
  }

  Element removeLast() {
    final result = this.last();
    if (result != null) {
      result.remove();
    }
    return result;
  }

  Collection map(f(Element element)) => _filtered.map(f);
  Collection<Element> filter(bool f(Element element)) => _filtered.filter(f);
  bool every(bool f(Element element)) => _filtered.every(f);
  bool some(bool f(Element element)) => _filtered.some(f);
  bool isEmpty() => _filtered.isEmpty();
  int get length() => _filtered.length;
  Element operator [](int index) => _filtered[index];
  Iterator<Element> iterator() => _filtered.iterator();
  List<Element> getRange(int start, int rangeLength) =>
    _filtered.getRange(start, rangeLength);
  int indexOf(Element element, [int start = 0]) =>
    _filtered.indexOf(element, start);

  int lastIndexOf(Element element, [int start = null]) {
    if (start === null) start = length - 1;
    return _filtered.lastIndexOf(element, start);
  }

  Element last() => _filtered.last();
}

Future<CSSStyleDeclaration> _emptyStyleFuture() {
  return _createMeasurementFuture(() => new Element.tag('div').style,
                                  new Completer<CSSStyleDeclaration>());
}

class EmptyElementRect implements ElementRect {
  final ClientRect client = const _SimpleClientRect(0, 0, 0, 0);
  final ClientRect offset = const _SimpleClientRect(0, 0, 0, 0);
  final ClientRect scroll = const _SimpleClientRect(0, 0, 0, 0);
  final ClientRect bounding = const _SimpleClientRect(0, 0, 0, 0);
  final List<ClientRect> clientRects = const <ClientRect>[];

  const EmptyElementRect();
}

class _DocumentFragmentImpl extends _NodeImpl implements DocumentFragment native "*DocumentFragment" {
  ElementList _elements;

  ElementList get elements() {
    if (_elements == null) {
      _elements = new FilteredElementList(this);
    }
    return _elements;
  }

  // TODO: The type of value should be Collection<Element>. See http://b/5392897
  void set elements(value) {
    // Copy list first since we don't want liveness during iteration.
    List copy = new List.from(value);
    final elements = this.elements;
    elements.clear();
    elements.addAll(copy);
  }

  ElementList queryAll(String selectors) =>
    new _FrozenElementList._wrap($dom_querySelectorAll(selectors));

  String get innerHTML() {
    final e = new Element.tag("div");
    e.nodes.add(this.clone(true));
    return e.innerHTML;
  }

  String get outerHTML() => innerHTML;

  // TODO(nweiz): Do we want to support some variant of innerHTML for XML and/or
  // SVG strings?
  void set innerHTML(String value) {
    this.nodes.clear();

    final e = new Element.tag("div");
    e.innerHTML = value;

    // Copy list first since we don't want liveness during iteration.
    List nodes = new List.from(e.nodes);
    this.nodes.addAll(nodes);
  }

  Node _insertAdjacentNode(String where, Node node) {
    switch (where.toLowerCase()) {
      case "beforebegin": return null;
      case "afterend": return null;
      case "afterbegin":
        this.insertBefore(node, this.nodes.first);
        return node;
      case "beforeend":
        this.nodes.add(node);
        return node;
      default:
        throw new IllegalArgumentException("Invalid position ${where}");
    }
  }

  Element insertAdjacentElement(String where, Element element)
    => this._insertAdjacentNode(where, element);

  void insertAdjacentText(String where, String text) {
    this._insertAdjacentNode(where, new Text(text));
  }

  void insertAdjacentHTML(String where, String text) {
    this._insertAdjacentNode(where, new DocumentFragment.html(text));
  }

  Future<ElementRect> get rect() {
    return _createMeasurementFuture(() => const EmptyElementRect(),
                                    new Completer<ElementRect>());
  }

  // If we can come up with a semi-reasonable default value for an Element
  // getter, we'll use it. In general, these return the same values as an
  // element that has no parent.
  String get contentEditable() => "false";
  bool get isContentEditable() => false;
  bool get draggable() => false;
  bool get hidden() => false;
  bool get spellcheck() => false;
  bool get translate() => false;
  int get tabIndex() => -1;
  String get id() => "";
  String get title() => "";
  String get tagName() => "";
  String get webkitdropzone() => "";
  String get webkitRegionOverflow() => "";
  Element get $dom_firstElementChild() => elements.first();
  Element get $dom_lastElementChild() => elements.last();
  Element get nextElementSibling() => null;
  Element get previousElementSibling() => null;
  Element get offsetParent() => null;
  Element get parent() => null;
  Map<String, String> get attributes() => const {};
  // Issue 174: this should be a const set.
  Set<String> get classes() => new Set<String>();
  Map<String, String> get dataAttributes() => const {};
  CSSStyleDeclaration get style() => new Element.tag('div').style;
  Future<CSSStyleDeclaration> get computedStyle() =>
      _emptyStyleFuture();
  Future<CSSStyleDeclaration> getComputedStyle(String pseudoElement) =>
      _emptyStyleFuture();
  bool matchesSelector(String selectors) => false;

  // Imperative Element methods are made into no-ops, as they are on parentless
  // elements.
  void blur() {}
  void focus() {}
  void click() {}
  void scrollByLines(int lines) {}
  void scrollByPages(int pages) {}
  void scrollIntoView([bool centerIfNeeded]) {}
  void webkitRequestFullScreen(int flags) {}
  void webkitRequestFullscreen() {}

  // Setters throw errors rather than being no-ops because we aren't going to
  // retain the values that were set, and erroring out seems clearer.
  void set attributes(Map<String, String> value) {
    throw new UnsupportedOperationException(
      "Attributes can't be set for document fragments.");
  }

  void set classes(Collection<String> value) {
    throw new UnsupportedOperationException(
      "Classes can't be set for document fragments.");
  }

  void set dataAttributes(Map<String, String> value) {
    throw new UnsupportedOperationException(
      "Data attributes can't be set for document fragments.");
  }

  void set contentEditable(String value) {
    throw new UnsupportedOperationException(
      "Content editable can't be set for document fragments.");
  }

  String get dir() {
    throw new UnsupportedOperationException(
      "Document fragments don't support text direction.");
  }

  void set dir(String value) {
    throw new UnsupportedOperationException(
      "Document fragments don't support text direction.");
  }

  void set draggable(bool value) {
    throw new UnsupportedOperationException(
      "Draggable can't be set for document fragments.");
  }

  void set hidden(bool value) {
    throw new UnsupportedOperationException(
      "Hidden can't be set for document fragments.");
  }

  void set id(String value) {
    throw new UnsupportedOperationException(
      "ID can't be set for document fragments.");
  }

  String get lang() {
    throw new UnsupportedOperationException(
      "Document fragments don't support language.");
  }

  void set lang(String value) {
    throw new UnsupportedOperationException(
      "Document fragments don't support language.");
  }

  void set scrollLeft(int value) {
    throw new UnsupportedOperationException(
      "Document fragments don't support scrolling.");
  }

  void set scrollTop(int value) {
    throw new UnsupportedOperationException(
      "Document fragments don't support scrolling.");
  }

  void set spellcheck(bool value) {
     throw new UnsupportedOperationException(
      "Spellcheck can't be set for document fragments.");
  }

  void set translate(bool value) {
     throw new UnsupportedOperationException(
      "Spellcheck can't be set for document fragments.");
  }

  void set tabIndex(int value) {
    throw new UnsupportedOperationException(
      "Tab index can't be set for document fragments.");
  }

  void set title(String value) {
    throw new UnsupportedOperationException(
      "Title can't be set for document fragments.");
  }

  void set webkitdropzone(String value) {
    throw new UnsupportedOperationException(
      "WebKit drop zone can't be set for document fragments.");
  }

  void set webkitRegionOverflow(String value) {
    throw new UnsupportedOperationException(
      "WebKit region overflow can't be set for document fragments.");
  }


  _ElementEventsImpl get on() =>
    new _ElementEventsImpl(this);

  _ElementImpl query(String selectors) native "querySelector";

  _NodeListImpl $dom_querySelectorAll(String selectors) native "querySelectorAll";

}

class _DocumentTypeImpl extends _NodeImpl implements DocumentType native "*DocumentType" {

  final _NamedNodeMapImpl entities;

  final String internalSubset;

  final String name;

  final _NamedNodeMapImpl notations;

  final String publicId;

  final String systemId;
}

class _DynamicsCompressorNodeImpl extends _AudioNodeImpl implements DynamicsCompressorNode native "*DynamicsCompressorNode" {

  final _AudioParamImpl attack;

  final _AudioParamImpl knee;

  final _AudioParamImpl ratio;

  final _AudioParamImpl reduction;

  final _AudioParamImpl release;

  final _AudioParamImpl threshold;
}

class _EXTTextureFilterAnisotropicImpl implements EXTTextureFilterAnisotropic native "*EXTTextureFilterAnisotropic" {

  static final int MAX_TEXTURE_MAX_ANISOTROPY_EXT = 0x84FF;

  static final int TEXTURE_MAX_ANISOTROPY_EXT = 0x84FE;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// TODO(jacobr): use _Lists.dart to remove some of the duplicated
// functionality.
class _ChildrenElementList implements ElementList {
  // Raw Element.
  final _ElementImpl _element;
  final _HTMLCollectionImpl _childElements;

  _ChildrenElementList._wrap(_ElementImpl element)
    : _childElements = element.$dom_children,
      _element = element;

  List<Element> _toList() {
    final output = new List(_childElements.length);
    for (int i = 0, len = _childElements.length; i < len; i++) {
      output[i] = _childElements[i];
    }
    return output;
  }

  _ElementImpl get first() {
    return _element.$dom_firstElementChild;
  }

  void forEach(void f(Element element)) {
    for (_ElementImpl element in _childElements) {
      f(element);
    }
  }

  ElementList filter(bool f(Element element)) {
    final output = <Element>[];
    forEach((Element element) {
      if (f(element)) {
        output.add(element);
      }
    });
    return new _FrozenElementList._wrap(output);
  }

  bool every(bool f(Element element)) {
    for(Element element in this) {
      if (!f(element)) {
        return false;
      }
    };
    return true;
  }

  bool some(bool f(Element element)) {
    for(Element element in this) {
      if (f(element)) {
        return true;
      }
    };
    return false;
  }

  Collection map(f(Element element)) {
    final out = [];
    for (Element el in this) {
      out.add(f(el));
    }
    return out;
  }

  bool isEmpty() {
    return _element.$dom_firstElementChild == null;
  }

  int get length() {
    return _childElements.length;
  }

  _ElementImpl operator [](int index) {
    return _childElements[index];
  }

  void operator []=(int index, _ElementImpl value) {
    _element.$dom_replaceChild(value, _childElements[index]);
  }

   void set length(int newLength) {
     // TODO(jacobr): remove children when length is reduced.
     throw const UnsupportedOperationException('');
   }

  Element add(_ElementImpl value) {
    _element.$dom_appendChild(value);
    return value;
  }

  Element addLast(_ElementImpl value) => add(value);

  Iterator<Element> iterator() => _toList().iterator();

  void addAll(Collection<Element> collection) {
    for (_ElementImpl element in collection) {
      _element.$dom_appendChild(element);
    }
  }

  void sort(int compare(Element a, Element b)) {
    throw const UnsupportedOperationException('TODO(jacobr): should we impl?');
  }

  void copyFrom(List<Object> src, int srcStart, int dstStart, int count) {
    throw 'Not impl yet. todo(jacobr)';
  }

  void setRange(int start, int rangeLength, List from, [int startFrom = 0]) {
    throw const NotImplementedException();
  }

  void removeRange(int start, int rangeLength) {
    throw const NotImplementedException();
  }

  void insertRange(int start, int rangeLength, [initialValue = null]) {
    throw const NotImplementedException();
  }

  List getRange(int start, int rangeLength) =>
    new _FrozenElementList._wrap(_Lists.getRange(this, start, rangeLength,
        <Element>[]));

  int indexOf(Element element, [int start = 0]) {
    return _Lists.indexOf(this, element, start, this.length);
  }

  int lastIndexOf(Element element, [int start = null]) {
    if (start === null) start = length - 1;
    return _Lists.lastIndexOf(this, element, start);
  }

  void clear() {
    // It is unclear if we want to keep non element nodes?
    _element.text = '';
  }

  Element removeLast() {
    final result = this.last();
    if (result != null) {
      _element.$dom_removeChild(result);
    }
    return result;
  }

  Element last() {
    return _element.$dom_lastElementChild;
  }
}

// TODO(jacobr): this is an inefficient implementation but it is hard to see
// a better option given that we cannot quite force NodeList to be an
// ElementList as there are valid cases where a NodeList JavaScript object
// contains Node objects that are not Elements.
class _FrozenElementList implements ElementList {
  final List<Node> _nodeList;

  _FrozenElementList._wrap(this._nodeList);

  Element get first() {
    return _nodeList[0];
  }

  void forEach(void f(Element element)) {
    for (Element el in this) {
      f(el);
    }
  }

  Collection map(f(Element element)) {
    final out = [];
    for (Element el in this) {
      out.add(f(el));
    }
    return out;
  }

  ElementList filter(bool f(Element element)) {
    final out = new _ElementList([]);
    for (Element el in this) {
      if (f(el)) out.add(el);
    }
    return out;
  }

  bool every(bool f(Element element)) {
    for(Element element in this) {
      if (!f(element)) {
        return false;
      }
    };
    return true;
  }

  bool some(bool f(Element element)) {
    for(Element element in this) {
      if (f(element)) {
        return true;
      }
    };
    return false;
  }

  bool isEmpty() => _nodeList.isEmpty();

  int get length() => _nodeList.length;

  Element operator [](int index) => _nodeList[index];

  void operator []=(int index, Element value) {
    throw const UnsupportedOperationException('');
  }

  void set length(int newLength) {
    _nodeList.length = newLength;
  }

  void add(Element value) {
    throw const UnsupportedOperationException('');
  }

  void addLast(Element value) {
    throw const UnsupportedOperationException('');
  }

  Iterator<Element> iterator() => new _FrozenElementListIterator(this);

  void addAll(Collection<Element> collection) {
    throw const UnsupportedOperationException('');
  }

  void sort(int compare(Element a, Element b)) {
    throw const UnsupportedOperationException('');
  }

  void setRange(int start, int rangeLength, List from, [int startFrom = 0]) {
    throw const UnsupportedOperationException('');
  }

  void removeRange(int start, int rangeLength) {
    throw const UnsupportedOperationException('');
  }

  void insertRange(int start, int rangeLength, [initialValue = null]) {
    throw const UnsupportedOperationException('');
  }

  ElementList getRange(int start, int rangeLength) =>
    new _FrozenElementList._wrap(_nodeList.getRange(start, rangeLength));

  int indexOf(Element element, [int start = 0]) =>
    _nodeList.indexOf(element, start);

  int lastIndexOf(Element element, [int start = null]) =>
    _nodeList.lastIndexOf(element, start);

  void clear() {
    throw const UnsupportedOperationException('');
  }

  Element removeLast() {
    throw const UnsupportedOperationException('');
  }

  Element last() => _nodeList.last();
}

class _FrozenElementListIterator implements Iterator<Element> {
  final _FrozenElementList _list;
  int _index = 0;

  _FrozenElementListIterator(this._list);

  /**
   * Gets the next element in the iteration. Throws a
   * [NoMoreElementsException] if no element is left.
   */
  Element next() {
    if (!hasNext()) {
      throw const NoMoreElementsException();
    }

    return _list[_index++];
  }

  /**
   * Returns whether the [Iterator] has elements left.
   */
  bool hasNext() => _index < _list.length;
}

class _ElementList extends _ListWrapper<Element> implements ElementList {
  _ElementList(List<Element> list) : super(list);

  ElementList filter(bool f(Element element)) =>
    new _ElementList(super.filter(f));

  ElementList getRange(int start, int rangeLength) =>
    new _ElementList(super.getRange(start, rangeLength));
}

class _ElementAttributeMap implements AttributeMap {

  final _ElementImpl _element;

  _ElementAttributeMap(this._element);

  bool containsValue(String value) {
    final attributes = _element.$dom_attributes;
    for (int i = 0, len = attributes.length; i < len; i++) {
      if(value == attributes[i].value) {
        return true;
      }
    }
    return false;
  }

  bool containsKey(String key) {
    return _element.$dom_hasAttribute(key);
  }

  String operator [](String key) {
    return _element.$dom_getAttribute(key);
  }

  void operator []=(String key, value) {
    _element.$dom_setAttribute(key, '$value');
  }

  String putIfAbsent(String key, String ifAbsent()) {
    if (!containsKey(key)) {
      this[key] = ifAbsent();
    }
    return this[key];
  }

  String remove(String key) {
    String value = _element.$dom_getAttribute(key);
    _element.$dom_removeAttribute(key);
    return value;
  }

  void clear() {
    final attributes = _element.$dom_attributes;
    for (int i = attributes.length - 1; i >= 0; i--) {
      remove(attributes[i].name);
    }
  }

  void forEach(void f(String key, String value)) {
    final attributes = _element.$dom_attributes;
    for (int i = 0, len = attributes.length; i < len; i++) {
      final item = attributes[i];
      f(item.name, item.value);
    }
  }

  Collection<String> getKeys() {
    // TODO(jacobr): generate a lazy collection instead.
    final attributes = _element.$dom_attributes;
    final keys = new List<String>(attributes.length);
    for (int i = 0, len = attributes.length; i < len; i++) {
      keys[i] = attributes[i].name;
    }
    return keys;
  }

  Collection<String> getValues() {
    // TODO(jacobr): generate a lazy collection instead.
    final attributes = _element.$dom_attributes;
    final values = new List<String>(attributes.length);
    for (int i = 0, len = attributes.length; i < len; i++) {
      values[i] = attributes[i].value;
    }
    return values;
  }

  /**
   * The number of {key, value} pairs in the map.
   */
  int get length() {
    return _element.$dom_attributes.length;
  }

  /**
   * Returns true if there is no {key, value} pair in the map.
   */
  bool isEmpty() {
    return length == 0;
  }
}

/**
 * Provides a Map abstraction on top of data-* attributes, similar to the
 * dataSet in the old DOM.
 */
class _DataAttributeMap implements AttributeMap {

  final Map<String, String> $dom_attributes;

  _DataAttributeMap(this.$dom_attributes);

  // interface Map

  // TODO: Use lazy iterator when it is available on Map.
  bool containsValue(String value) => getValues().some((v) => v == value);

  bool containsKey(String key) => $dom_attributes.containsKey(_attr(key));

  String operator [](String key) => $dom_attributes[_attr(key)];

  void operator []=(String key, value) {
    $dom_attributes[_attr(key)] = '$value';
  }

  String putIfAbsent(String key, String ifAbsent()) =>
    $dom_attributes.putIfAbsent(_attr(key), ifAbsent);

  String remove(String key) => $dom_attributes.remove(_attr(key));

  void clear() {
    // Needs to operate on a snapshot since we are mutating the collection.
    for (String key in getKeys()) {
      remove(key);
    }
  }

  void forEach(void f(String key, String value)) {
    $dom_attributes.forEach((String key, String value) {
      if (_matches(key)) {
        f(_strip(key), value);
      }
    });
  }

  Collection<String> getKeys() {
    final keys = new List<String>();
    $dom_attributes.forEach((String key, String value) {
      if (_matches(key)) {
        keys.add(_strip(key));
      }
    });
    return keys;
  }

  Collection<String> getValues() {
    final values = new List<String>();
    $dom_attributes.forEach((String key, String value) {
      if (_matches(key)) {
        values.add(value);
      }
    });
    return values;
  }

  int get length() => getKeys().length;

  // TODO: Use lazy iterator when it is available on Map.
  bool isEmpty() => length == 0;

  // Helpers.
  String _attr(String key) => 'data-$key';
  bool _matches(String key) => key.startsWith('data-');
  String _strip(String key) => key.substring(5);
}

class _CssClassSet implements Set<String> {

  final _ElementImpl _element;

  _CssClassSet(this._element);

  String toString() => _formatSet(_read());

  // interface Iterable - BEGIN
  Iterator<String> iterator() => _read().iterator();
  // interface Iterable - END

  // interface Collection - BEGIN
  void forEach(void f(String element)) {
    _read().forEach(f);
  }

  Collection map(f(String element)) => _read().map(f);

  Collection<String> filter(bool f(String element)) => _read().filter(f);

  bool every(bool f(String element)) => _read().every(f);

  bool some(bool f(String element)) => _read().some(f);

  bool isEmpty() => _read().isEmpty();

  int get length() =>_read().length;

  // interface Collection - END

  // interface Set - BEGIN
  bool contains(String value) => _read().contains(value);

  void add(String value) {
    // TODO - figure out if we need to do any validation here
    // or if the browser natively does enough
    _modify((s) => s.add(value));
  }

  bool remove(String value) {
    Set<String> s = _read();
    bool result = s.remove(value);
    _write(s);
    return result;
  }

  void addAll(Collection<String> collection) {
    // TODO - see comment above about validation
    _modify((s) => s.addAll(collection));
  }

  void removeAll(Collection<String> collection) {
    _modify((s) => s.removeAll(collection));
  }

  bool isSubsetOf(Collection<String> collection) =>
    _read().isSubsetOf(collection);

  bool containsAll(Collection<String> collection) =>
    _read().containsAll(collection);

  Set<String> intersection(Collection<String> other) =>
    _read().intersection(other);

  void clear() {
    _modify((s) => s.clear());
  }
  // interface Set - END

  /**
   * Helper method used to modify the set of css classes on this element.
   *
   *   f - callback with:
   *      s - a Set of all the css class name currently on this element.
   *
   *   After f returns, the modified set is written to the
   *       className property of this element.
   */
  void _modify( f(Set<String> s)) {
    Set<String> s = _read();
    f(s);
    _write(s);
  }

  /**
   * Read the class names from the Element class property,
   * and put them into a set (duplicates are discarded).
   */
  Set<String> _read() {
    // TODO(mattsh) simplify this once split can take regex.
    Set<String> s = new Set<String>();
    for (String name in _classname().split(' ')) {
      String trimmed = name.trim();
      if (!trimmed.isEmpty()) {
        s.add(trimmed);
      }
    }
    return s;
  }

  /**
   * Read the class names as a space-separated string. This is meant to be
   * overridden by subclasses.
   */
  String _classname() => _element.$dom_className;

  /**
   * Join all the elements of a set into one string and write
   * back to the element.
   */
  void _write(Set s) {
    _element.$dom_className = _formatSet(s);
  }

  String _formatSet(Set<String> s) {
    // TODO(mattsh) should be able to pass Set to String.joins http:/b/5398605
    List list = new List.from(s);
    return Strings.join(list, ' ');
  }
}

class _SimpleClientRect implements ClientRect {
  final num left;
  final num top;
  final num width;
  final num height;
  num get right() => left + width;
  num get bottom() => top + height;

  const _SimpleClientRect(this.left, this.top, this.width, this.height);

  bool operator ==(ClientRect other) {
    return other !== null && left == other.left && top == other.top
        && width == other.width && height == other.height;
  }

  String toString() => "($left, $top, $width, $height)";
}

// TODO(jacobr): we cannot currently be lazy about calculating the client
// rects as we must perform all measurement queries at a safe point to avoid
// triggering unneeded layouts.
/**
 * All your element measurement needs in one place
 * @domName none
 */
class _ElementRectImpl implements ElementRect {
  final ClientRect client;
  final ClientRect offset;
  final ClientRect scroll;

  // TODO(jacobr): should we move these outside of ElementRect to avoid the
  // overhead of computing them every time even though they are rarely used.
  final _ClientRectImpl _boundingClientRect; 
  final _ClientRectListImpl _clientRects;

  _ElementRectImpl(_ElementImpl element) :
    client = new _SimpleClientRect(element.$dom_clientLeft,
                                  element.$dom_clientTop,
                                  element.$dom_clientWidth, 
                                  element.$dom_clientHeight), 
    offset = new _SimpleClientRect(element.$dom_offsetLeft,
                                  element.$dom_offsetTop,
                                  element.$dom_offsetWidth,
                                  element.$dom_offsetHeight),
    scroll = new _SimpleClientRect(element.$dom_scrollLeft,
                                  element.$dom_scrollTop,
                                  element.$dom_scrollWidth,
                                  element.$dom_scrollHeight),
    _boundingClientRect = element.$dom_getBoundingClientRect(),
    _clientRects = element.$dom_getClientRects();

  _ClientRectImpl get bounding() => _boundingClientRect;

  // TODO(jacobr): cleanup.
  List<ClientRect> get clientRects() {
    final out = new List(_clientRects.length);
    for (num i = 0; i < _clientRects.length; i++) {
      out[i] = _clientRects.item(i);
    }
    return out;
  }
}

class _ElementImpl extends _NodeImpl implements Element native "*Element" {

  /**
   * @domName Element.hasAttribute, Element.getAttribute, Element.setAttribute,
   *   Element.removeAttribute
   */
  _ElementAttributeMap get attributes() => new _ElementAttributeMap(this);

  void set attributes(Map<String, String> value) {
    Map<String, String> attributes = this.attributes;
    attributes.clear();
    for (String key in value.getKeys()) {
      attributes[key] = value[key];
    }
  }

  void set elements(Collection<Element> value) {
    final elements = this.elements;
    elements.clear();
    elements.addAll(value);
  }

  ElementList get elements() => new _ChildrenElementList._wrap(this);

  ElementList queryAll(String selectors) =>
    new _FrozenElementList._wrap($dom_querySelectorAll(selectors));

  _CssClassSet get classes() => new _CssClassSet(this);

  void set classes(Collection<String> value) {
    _CssClassSet classSet = classes;
    classSet.clear();
    classSet.addAll(value);
  }

  Map<String, String> get dataAttributes() =>
    new _DataAttributeMap(attributes);

  void set dataAttributes(Map<String, String> value) {
    final dataAttributes = this.dataAttributes;
    dataAttributes.clear();
    for (String key in value.getKeys()) {
      dataAttributes[key] = value[key];
    }
  }

  Future<ElementRect> get rect() {
    return _createMeasurementFuture(
        () => new _ElementRectImpl(this),
        new Completer<ElementRect>());
  }

  Future<CSSStyleDeclaration> get computedStyle() {
     // TODO(jacobr): last param should be null, see b/5045788
     return getComputedStyle('');
  }

  Future<CSSStyleDeclaration> getComputedStyle(String pseudoElement) {
    return _createMeasurementFuture(
        () => _window.$dom_getComputedStyle(this, pseudoElement),
        new Completer<CSSStyleDeclaration>());
  }

  _ElementEventsImpl get on() =>
    new _ElementEventsImpl(this);

  static final int ALLOW_KEYBOARD_INPUT = 1;

  int get $dom_childElementCount() native "return this.childElementCount;";

  _HTMLCollectionImpl get $dom_children() native "return this.children;";

  String get $dom_className() native "return this.className;";

  void set $dom_className(String value) native "this.className = value;";

  int get $dom_clientHeight() native "return this.clientHeight;";

  int get $dom_clientLeft() native "return this.clientLeft;";

  int get $dom_clientTop() native "return this.clientTop;";

  int get $dom_clientWidth() native "return this.clientWidth;";

  String contentEditable;

  final Map<String, String> dataset;

  String dir;

  bool draggable;

  _ElementImpl get $dom_firstElementChild() native "return this.firstElementChild;";

  bool hidden;

  String id;

  String innerHTML;

  final bool isContentEditable;

  String lang;

  _ElementImpl get $dom_lastElementChild() native "return this.lastElementChild;";

  final _ElementImpl nextElementSibling;

  int get $dom_offsetHeight() native "return this.offsetHeight;";

  int get $dom_offsetLeft() native "return this.offsetLeft;";

  final _ElementImpl offsetParent;

  int get $dom_offsetTop() native "return this.offsetTop;";

  int get $dom_offsetWidth() native "return this.offsetWidth;";

  final String outerHTML;

  final _ElementImpl previousElementSibling;

  int get $dom_scrollHeight() native "return this.scrollHeight;";

  int get $dom_scrollLeft() native "return this.scrollLeft;";

  void set $dom_scrollLeft(int value) native "this.scrollLeft = value;";

  int get $dom_scrollTop() native "return this.scrollTop;";

  void set $dom_scrollTop(int value) native "this.scrollTop = value;";

  int get $dom_scrollWidth() native "return this.scrollWidth;";

  bool spellcheck;

  final _CSSStyleDeclarationImpl style;

  int tabIndex;

  final String tagName;

  String title;

  bool translate;

  final String webkitRegionOverflow;

  String webkitdropzone;

  void blur() native;

  void click() native;

  void focus() native;

  String $dom_getAttribute(String name) native "getAttribute";

  _ClientRectImpl $dom_getBoundingClientRect() native "getBoundingClientRect";

  _ClientRectListImpl $dom_getClientRects() native "getClientRects";

  _NodeListImpl $dom_getElementsByClassName(String name) native "getElementsByClassName";

  _NodeListImpl $dom_getElementsByTagName(String name) native "getElementsByTagName";

  bool $dom_hasAttribute(String name) native "hasAttribute";

  _ElementImpl insertAdjacentElement(String where, _ElementImpl element) native;

  void insertAdjacentHTML(String where, String html) native;

  void insertAdjacentText(String where, String text) native;

  _ElementImpl query(String selectors) native "querySelector";

  _NodeListImpl $dom_querySelectorAll(String selectors) native "querySelectorAll";

  void $dom_removeAttribute(String name) native "removeAttribute";

  void scrollByLines(int lines) native;

  void scrollByPages(int pages) native;

  void scrollIntoView([bool centerIfNeeded = null]) native "scrollIntoViewIfNeeded";

  void $dom_setAttribute(String name, String value) native "setAttribute";

  bool matchesSelector(String selectors) native "webkitMatchesSelector";

  void webkitRequestFullScreen(int flags) native;

  void webkitRequestFullscreen() native;

}

final _START_TAG_REGEXP = const RegExp('<(\\w+)');
class _ElementFactoryProvider {
  static final _CUSTOM_PARENT_TAG_MAP = const {
    'body' : 'html',
    'head' : 'html',
    'caption' : 'table',
    'td': 'tr',
    'colgroup': 'table',
    'col' : 'colgroup',
    'tr' : 'tbody',
    'tbody' : 'table',
    'tfoot' : 'table',
    'thead' : 'table',
    'track' : 'audio',
  };

  /** @domName Document.createElement */
  factory Element.html(String html) {
    // TODO(jacobr): this method can be made more robust and performant.
    // 1) Cache the dummy parent elements required to use innerHTML rather than
    //    creating them every call.
    // 2) Verify that the html does not contain leading or trailing text nodes.
    // 3) Verify that the html does not contain both <head> and <body> tags.
    // 4) Detatch the created element from its dummy parent.
    String parentTag = 'div';
    String tag;
    final match = _START_TAG_REGEXP.firstMatch(html);
    if (match !== null) {
      tag = match.group(1).toLowerCase();
      if (_CUSTOM_PARENT_TAG_MAP.containsKey(tag)) {
        parentTag = _CUSTOM_PARENT_TAG_MAP[tag];
      }
    }
    final _ElementImpl temp = new Element.tag(parentTag);
    temp.innerHTML = html;

    Element element;
    if (temp.elements.length == 1) {
      element = temp.elements.first;
    } else if (parentTag == 'html' && temp.elements.length == 2) {
      // Work around for edge case in WebKit and possibly other browsers where
      // both body and head elements are created even though the inner html
      // only contains a head or body element.
      element = temp.elements[tag == 'head' ? 0 : 1];
    } else {
      throw new IllegalArgumentException('HTML had ${temp.elements.length} ' +
          'top level elements but 1 expected');
    }
    element.remove();
    return element;
  }

  /** @domName Document.createElement */
  // Optimization to improve performance until the frog compiler inlines this
  // method.
  factory Element.tag(String tag) native "return document.createElement(tag)";
}

class _ElementEventsImpl extends _EventsImpl implements ElementEvents {
  _ElementEventsImpl(_ptr) : super(_ptr);

  EventListenerList get abort() => _get('abort');

  EventListenerList get beforeCopy() => _get('beforecopy');

  EventListenerList get beforeCut() => _get('beforecut');

  EventListenerList get beforePaste() => _get('beforepaste');

  EventListenerList get blur() => _get('blur');

  EventListenerList get change() => _get('change');

  EventListenerList get click() => _get('click');

  EventListenerList get contextMenu() => _get('contextmenu');

  EventListenerList get copy() => _get('copy');

  EventListenerList get cut() => _get('cut');

  EventListenerList get doubleClick() => _get('dblclick');

  EventListenerList get drag() => _get('drag');

  EventListenerList get dragEnd() => _get('dragend');

  EventListenerList get dragEnter() => _get('dragenter');

  EventListenerList get dragLeave() => _get('dragleave');

  EventListenerList get dragOver() => _get('dragover');

  EventListenerList get dragStart() => _get('dragstart');

  EventListenerList get drop() => _get('drop');

  EventListenerList get error() => _get('error');

  EventListenerList get focus() => _get('focus');

  EventListenerList get fullscreenChange() => _get('webkitfullscreenchange');

  EventListenerList get fullscreenError() => _get('webkitfullscreenerror');

  EventListenerList get input() => _get('input');

  EventListenerList get invalid() => _get('invalid');

  EventListenerList get keyDown() => _get('keydown');

  EventListenerList get keyPress() => _get('keypress');

  EventListenerList get keyUp() => _get('keyup');

  EventListenerList get load() => _get('load');

  EventListenerList get mouseDown() => _get('mousedown');

  EventListenerList get mouseMove() => _get('mousemove');

  EventListenerList get mouseOut() => _get('mouseout');

  EventListenerList get mouseOver() => _get('mouseover');

  EventListenerList get mouseUp() => _get('mouseup');

  EventListenerList get mouseWheel() => _get('mousewheel');

  EventListenerList get paste() => _get('paste');

  EventListenerList get reset() => _get('reset');

  EventListenerList get scroll() => _get('scroll');

  EventListenerList get search() => _get('search');

  EventListenerList get select() => _get('select');

  EventListenerList get selectStart() => _get('selectstart');

  EventListenerList get submit() => _get('submit');

  EventListenerList get touchCancel() => _get('touchcancel');

  EventListenerList get touchEnd() => _get('touchend');

  EventListenerList get touchEnter() => _get('touchenter');

  EventListenerList get touchLeave() => _get('touchleave');

  EventListenerList get touchMove() => _get('touchmove');

  EventListenerList get touchStart() => _get('touchstart');

  EventListenerList get transitionEnd() => _get('webkitTransitionEnd');
}

class _ElementTimeControlImpl implements ElementTimeControl native "*ElementTimeControl" {

  void beginElement() native;

  void beginElementAt(num offset) native;

  void endElement() native;

  void endElementAt(num offset) native;
}

class _ElementTraversalImpl implements ElementTraversal native "*ElementTraversal" {

  final int childElementCount;

  final _ElementImpl firstElementChild;

  final _ElementImpl lastElementChild;

  final _ElementImpl nextElementSibling;

  final _ElementImpl previousElementSibling;
}

class _EmbedElementImpl extends _ElementImpl implements EmbedElement native "*HTMLEmbedElement" {

  String align;

  String height;

  String name;

  String src;

  String type;

  String width;
}

class _EntityImpl extends _NodeImpl implements Entity native "*Entity" {

  final String notationName;

  final String publicId;

  final String systemId;
}

class _EntityReferenceImpl extends _NodeImpl implements EntityReference native "*EntityReference" {
}

class _EntryImpl implements Entry native "*Entry" {

  final _DOMFileSystemImpl filesystem;

  final String fullPath;

  final bool isDirectory;

  final bool isFile;

  final String name;

  void copyTo(_DirectoryEntryImpl parent, [String name = null, EntryCallback successCallback = null, ErrorCallback errorCallback = null]) native;

  void getMetadata(MetadataCallback successCallback, [ErrorCallback errorCallback = null]) native;

  void getParent([EntryCallback successCallback = null, ErrorCallback errorCallback = null]) native;

  void moveTo(_DirectoryEntryImpl parent, [String name = null, EntryCallback successCallback = null, ErrorCallback errorCallback = null]) native;

  void remove(VoidCallback successCallback, [ErrorCallback errorCallback = null]) native;

  String toURL() native;
}

class _EntryArrayImpl implements EntryArray native "*EntryArray" {

  final int length;

  _EntryImpl item(int index) native;
}

class _EntryArraySyncImpl implements EntryArraySync native "*EntryArraySync" {

  final int length;

  _EntrySyncImpl item(int index) native;
}

class _EntrySyncImpl implements EntrySync native "*EntrySync" {

  final _DOMFileSystemSyncImpl filesystem;

  final String fullPath;

  final bool isDirectory;

  final bool isFile;

  final String name;

  _EntrySyncImpl copyTo(_DirectoryEntrySyncImpl parent, String name) native;

  _MetadataImpl getMetadata() native;

  _EntrySyncImpl getParent() native;

  _EntrySyncImpl moveTo(_DirectoryEntrySyncImpl parent, String name) native;

  void remove() native;

  String toURL() native;
}

class _ErrorEventImpl extends _EventImpl implements ErrorEvent native "*ErrorEvent" {

  final String filename;

  final int lineno;

  final String message;
}

class _EventImpl implements Event native "*Event" {

  static final int AT_TARGET = 2;

  static final int BLUR = 8192;

  static final int BUBBLING_PHASE = 3;

  static final int CAPTURING_PHASE = 1;

  static final int CHANGE = 32768;

  static final int CLICK = 64;

  static final int DBLCLICK = 128;

  static final int DRAGDROP = 2048;

  static final int FOCUS = 4096;

  static final int KEYDOWN = 256;

  static final int KEYPRESS = 1024;

  static final int KEYUP = 512;

  static final int MOUSEDOWN = 1;

  static final int MOUSEDRAG = 32;

  static final int MOUSEMOVE = 16;

  static final int MOUSEOUT = 8;

  static final int MOUSEOVER = 4;

  static final int MOUSEUP = 2;

  static final int SELECT = 16384;

  final bool bubbles;

  bool cancelBubble;

  final bool cancelable;

  final _ClipboardImpl clipboardData;

  final _EventTargetImpl currentTarget;

  final bool defaultPrevented;

  final int eventPhase;

  bool returnValue;

  final _EventTargetImpl srcElement;

  final _EventTargetImpl target;

  final int timeStamp;

  final String type;

  void $dom_initEvent(String eventTypeArg, bool canBubbleArg, bool cancelableArg) native "initEvent";

  void preventDefault() native;

  void stopImmediatePropagation() native;

  void stopPropagation() native;
}

class _EventExceptionImpl implements EventException native "*EventException" {

  static final int DISPATCH_REQUEST_ERR = 1;

  static final int UNSPECIFIED_EVENT_TYPE_ERR = 0;

  final int code;

  final String message;

  final String name;

  String toString() native;
}

class _EventSourceImpl extends _EventTargetImpl implements EventSource native "*EventSource" {

  _EventSourceEventsImpl get on() =>
    new _EventSourceEventsImpl(this);

  static final int CLOSED = 2;

  static final int CONNECTING = 0;

  static final int OPEN = 1;

  final String URL;

  final int readyState;

  final String url;

  void $dom_addEventListener(String type, EventListener listener, [bool useCapture = null]) native "addEventListener";

  void close() native;

  bool $dom_dispatchEvent(_EventImpl evt) native "dispatchEvent";

  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture = null]) native "removeEventListener";
}

class _EventSourceEventsImpl extends _EventsImpl implements EventSourceEvents {
  _EventSourceEventsImpl(_ptr) : super(_ptr);

  EventListenerList get error() => _get('error');

  EventListenerList get message() => _get('message');

  EventListenerList get open() => _get('open');
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _EventsImpl implements Events {
  /* Raw event target. */
  // TODO(jacobr): it would be nice if we could specify this as
  // _EventTargetImpl or EventTarget
  final Dynamic _ptr;

  _EventsImpl(this._ptr);

  _EventListenerListImpl operator [](String type) => _get(type.toLowerCase());
  
  _EventListenerListImpl _get(String type) {
    return new _EventListenerListImpl(_ptr, type);
  }
}

class _EventListenerListImpl implements EventListenerList {
  
  // TODO(jacobr): make this _EventTargetImpl
  final Dynamic _ptr;
  final String _type;

  _EventListenerListImpl(this._ptr, this._type);

  // TODO(jacobr): implement equals.

  _EventListenerListImpl add(EventListener listener,
      [bool useCapture = false]) {
    _add(listener, useCapture);
    return this;
  }

  _EventListenerListImpl remove(EventListener listener,
      [bool useCapture = false]) {
    _remove(listener, useCapture);
    return this;
  }

  bool dispatch(Event evt) {
    // TODO(jacobr): what is the correct behavior here. We could alternately
    // force the event to have the expected type.
    assert(evt.type == _type);
    return _ptr.$dom_dispatchEvent(evt);
  }

  void _add(EventListener listener, bool useCapture) {
    _ptr.$dom_addEventListener(_type, listener, useCapture);
  }

  void _remove(EventListener listener, bool useCapture) {
    _ptr.$dom_removeEventListener(_type, listener, useCapture);
  }
}


class _EventTargetImpl implements EventTarget native "*EventTarget" {

  Events get on() => new _EventsImpl(this);

  void $dom_addEventListener(String type, EventListener listener, [bool useCapture = null]) native "addEventListener";

  bool $dom_dispatchEvent(_EventImpl event) native "dispatchEvent";

  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture = null]) native "removeEventListener";

}

class _FieldSetElementImpl extends _ElementImpl implements FieldSetElement native "*HTMLFieldSetElement" {

  bool disabled;

  final _FormElementImpl form;

  String name;

  final String type;

  final String validationMessage;

  final _ValidityStateImpl validity;

  final bool willValidate;

  bool checkValidity() native;

  void setCustomValidity(String error) native;
}

class _FileImpl extends _BlobImpl implements File native "*File" {

  final Date lastModifiedDate;

  final String name;

  final String webkitRelativePath;
}

class _FileEntryImpl extends _EntryImpl implements FileEntry native "*FileEntry" {

  void createWriter(FileWriterCallback successCallback, [ErrorCallback errorCallback = null]) native;

  void file(FileCallback successCallback, [ErrorCallback errorCallback = null]) native;
}

class _FileEntrySyncImpl extends _EntrySyncImpl implements FileEntrySync native "*FileEntrySync" {

  _FileWriterSyncImpl createWriter() native;

  _FileImpl file() native;
}

class _FileErrorImpl implements FileError native "*FileError" {

  static final int ABORT_ERR = 3;

  static final int ENCODING_ERR = 5;

  static final int INVALID_MODIFICATION_ERR = 9;

  static final int INVALID_STATE_ERR = 7;

  static final int NOT_FOUND_ERR = 1;

  static final int NOT_READABLE_ERR = 4;

  static final int NO_MODIFICATION_ALLOWED_ERR = 6;

  static final int PATH_EXISTS_ERR = 12;

  static final int QUOTA_EXCEEDED_ERR = 10;

  static final int SECURITY_ERR = 2;

  static final int SYNTAX_ERR = 8;

  static final int TYPE_MISMATCH_ERR = 11;

  final int code;
}

class _FileExceptionImpl implements FileException native "*FileException" {

  static final int ABORT_ERR = 3;

  static final int ENCODING_ERR = 5;

  static final int INVALID_MODIFICATION_ERR = 9;

  static final int INVALID_STATE_ERR = 7;

  static final int NOT_FOUND_ERR = 1;

  static final int NOT_READABLE_ERR = 4;

  static final int NO_MODIFICATION_ALLOWED_ERR = 6;

  static final int PATH_EXISTS_ERR = 12;

  static final int QUOTA_EXCEEDED_ERR = 10;

  static final int SECURITY_ERR = 2;

  static final int SYNTAX_ERR = 8;

  static final int TYPE_MISMATCH_ERR = 11;

  final int code;

  final String message;

  final String name;

  String toString() native;
}

class _FileListImpl implements FileList native "*FileList" {

  final int length;

  _FileImpl item(int index) native;
}

class _FileReaderImpl extends _EventTargetImpl implements FileReader native "*FileReader" {

  _FileReaderEventsImpl get on() =>
    new _FileReaderEventsImpl(this);

  static final int DONE = 2;

  static final int EMPTY = 0;

  static final int LOADING = 1;

  final _FileErrorImpl error;

  final int readyState;

  final Object result;

  void abort() native;

  void $dom_addEventListener(String type, EventListener listener, [bool useCapture = null]) native "addEventListener";

  bool $dom_dispatchEvent(_EventImpl evt) native "dispatchEvent";

  void readAsArrayBuffer(_BlobImpl blob) native;

  void readAsBinaryString(_BlobImpl blob) native;

  void readAsDataURL(_BlobImpl blob) native;

  void readAsText(_BlobImpl blob, [String encoding = null]) native;

  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture = null]) native "removeEventListener";
}

class _FileReaderEventsImpl extends _EventsImpl implements FileReaderEvents {
  _FileReaderEventsImpl(_ptr) : super(_ptr);

  EventListenerList get abort() => _get('abort');

  EventListenerList get error() => _get('error');

  EventListenerList get load() => _get('load');

  EventListenerList get loadEnd() => _get('loadend');

  EventListenerList get loadStart() => _get('loadstart');

  EventListenerList get progress() => _get('progress');
}

class _FileReaderSyncImpl implements FileReaderSync native "*FileReaderSync" {

  _ArrayBufferImpl readAsArrayBuffer(_BlobImpl blob) native;

  String readAsBinaryString(_BlobImpl blob) native;

  String readAsDataURL(_BlobImpl blob) native;

  String readAsText(_BlobImpl blob, [String encoding = null]) native;
}

class _FileWriterImpl extends _EventTargetImpl implements FileWriter native "*FileWriter" {

  _FileWriterEventsImpl get on() =>
    new _FileWriterEventsImpl(this);

  static final int DONE = 2;

  static final int INIT = 0;

  static final int WRITING = 1;

  final _FileErrorImpl error;

  final int length;

  final int position;

  final int readyState;

  void abort() native;

  void $dom_addEventListener(String type, EventListener listener, [bool useCapture = null]) native "addEventListener";

  bool $dom_dispatchEvent(_EventImpl evt) native "dispatchEvent";

  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture = null]) native "removeEventListener";

  void seek(int position) native;

  void truncate(int size) native;

  void write(_BlobImpl data) native;
}

class _FileWriterEventsImpl extends _EventsImpl implements FileWriterEvents {
  _FileWriterEventsImpl(_ptr) : super(_ptr);

  EventListenerList get abort() => _get('abort');

  EventListenerList get error() => _get('error');

  EventListenerList get progress() => _get('progress');

  EventListenerList get write() => _get('write');

  EventListenerList get writeEnd() => _get('writeend');

  EventListenerList get writeStart() => _get('writestart');
}

class _FileWriterSyncImpl implements FileWriterSync native "*FileWriterSync" {

  final int length;

  final int position;

  void seek(int position) native;

  void truncate(int size) native;

  void write(_BlobImpl data) native;
}

class _Float32ArrayImpl extends _ArrayBufferViewImpl implements Float32Array, List<num> native "*Float32Array" {

  static final int BYTES_PER_ELEMENT = 4;

  final int length;

  num operator[](int index) native "return this[index];";

  void operator[]=(int index, num value) native "this[index] = value";
  // -- start List<num> mixins.
  // num is the element type.

  // From Iterable<num>:

  Iterator<num> iterator() {
    // Note: NodeLists are not fixed size. And most probably length shouldn't
    // be cached in both iterator _and_ forEach method. For now caching it
    // for consistency.
    return new _FixedSizeListIterator<num>(this);
  }

  // From Collection<num>:

  void add(num value) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void addLast(num value) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void addAll(Collection<num> collection) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void forEach(void f(num element)) => _Collections.forEach(this, f);

  Collection map(f(num element)) => _Collections.map(this, [], f);

  Collection<num> filter(bool f(num element)) =>
     _Collections.filter(this, <num>[], f);

  bool every(bool f(num element)) => _Collections.every(this, f);

  bool some(bool f(num element)) => _Collections.some(this, f);

  bool isEmpty() => this.length == 0;

  // From List<num>:

  void sort(int compare(num a, num b)) {
    throw new UnsupportedOperationException("Cannot sort immutable List.");
  }

  int indexOf(num element, [int start = 0]) =>
      _Lists.indexOf(this, element, start, this.length);

  int lastIndexOf(num element, [int start]) {
    if (start === null) start = length - 1;
    return _Lists.lastIndexOf(this, element, start);
  }

  num last() => this[length - 1];

  num removeLast() {
    throw new UnsupportedOperationException("Cannot removeLast on immutable List.");
  }

  // FIXME: implement these.
  void setRange(int start, int rangeLength, List<num> from, [int startFrom]) {
    throw new UnsupportedOperationException("Cannot setRange on immutable List.");
  }

  void removeRange(int start, int rangeLength) {
    throw new UnsupportedOperationException("Cannot removeRange on immutable List.");
  }

  void insertRange(int start, int rangeLength, [num initialValue]) {
    throw new UnsupportedOperationException("Cannot insertRange on immutable List.");
  }

  List<num> getRange(int start, int rangeLength) =>
      _Lists.getRange(this, start, rangeLength, <num>[]);

  // -- end List<num> mixins.

  void setElements(Object array, [int offset = null]) native "set";

  _Float32ArrayImpl subarray(int start, [int end = null]) native;
}

class _Float64ArrayImpl extends _ArrayBufferViewImpl implements Float64Array, List<num> native "*Float64Array" {

  static final int BYTES_PER_ELEMENT = 8;

  final int length;

  num operator[](int index) native "return this[index];";

  void operator[]=(int index, num value) native "this[index] = value";
  // -- start List<num> mixins.
  // num is the element type.

  // From Iterable<num>:

  Iterator<num> iterator() {
    // Note: NodeLists are not fixed size. And most probably length shouldn't
    // be cached in both iterator _and_ forEach method. For now caching it
    // for consistency.
    return new _FixedSizeListIterator<num>(this);
  }

  // From Collection<num>:

  void add(num value) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void addLast(num value) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void addAll(Collection<num> collection) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void forEach(void f(num element)) => _Collections.forEach(this, f);

  Collection map(f(num element)) => _Collections.map(this, [], f);

  Collection<num> filter(bool f(num element)) =>
     _Collections.filter(this, <num>[], f);

  bool every(bool f(num element)) => _Collections.every(this, f);

  bool some(bool f(num element)) => _Collections.some(this, f);

  bool isEmpty() => this.length == 0;

  // From List<num>:

  void sort(int compare(num a, num b)) {
    throw new UnsupportedOperationException("Cannot sort immutable List.");
  }

  int indexOf(num element, [int start = 0]) =>
      _Lists.indexOf(this, element, start, this.length);

  int lastIndexOf(num element, [int start]) {
    if (start === null) start = length - 1;
    return _Lists.lastIndexOf(this, element, start);
  }

  num last() => this[length - 1];

  num removeLast() {
    throw new UnsupportedOperationException("Cannot removeLast on immutable List.");
  }

  // FIXME: implement these.
  void setRange(int start, int rangeLength, List<num> from, [int startFrom]) {
    throw new UnsupportedOperationException("Cannot setRange on immutable List.");
  }

  void removeRange(int start, int rangeLength) {
    throw new UnsupportedOperationException("Cannot removeRange on immutable List.");
  }

  void insertRange(int start, int rangeLength, [num initialValue]) {
    throw new UnsupportedOperationException("Cannot insertRange on immutable List.");
  }

  List<num> getRange(int start, int rangeLength) =>
      _Lists.getRange(this, start, rangeLength, <num>[]);

  // -- end List<num> mixins.

  void setElements(Object array, [int offset = null]) native "set";

  _Float64ArrayImpl subarray(int start, [int end = null]) native;
}

class _FontElementImpl extends _ElementImpl implements FontElement native "*HTMLFontElement" {

  String color;

  String face;

  String size;
}

class _FormElementImpl extends _ElementImpl implements FormElement native "*HTMLFormElement" {

  String acceptCharset;

  String action;

  String autocomplete;

  String encoding;

  String enctype;

  final int length;

  String method;

  String name;

  bool noValidate;

  String target;

  bool checkValidity() native;

  void reset() native;

  void submit() native;
}

class _FrameElementImpl extends _ElementImpl implements FrameElement native "*HTMLFrameElement" {

  final _DocumentImpl contentDocument;

  final _WindowImpl contentWindow;

  String frameBorder;

  final int height;

  String location;

  String longDesc;

  String marginHeight;

  String marginWidth;

  String name;

  bool noResize;

  String scrolling;

  String src;

  final int width;

  _SVGDocumentImpl getSVGDocument() native;
}

class _FrameSetElementImpl extends _ElementImpl implements FrameSetElement native "*HTMLFrameSetElement" {

  _FrameSetElementEventsImpl get on() =>
    new _FrameSetElementEventsImpl(this);

  String cols;

  String rows;
}

class _FrameSetElementEventsImpl extends _ElementEventsImpl implements FrameSetElementEvents {
  _FrameSetElementEventsImpl(_ptr) : super(_ptr);

  EventListenerList get beforeUnload() => _get('beforeunload');

  EventListenerList get blur() => _get('blur');

  EventListenerList get error() => _get('error');

  EventListenerList get focus() => _get('focus');

  EventListenerList get hashChange() => _get('hashchange');

  EventListenerList get load() => _get('load');

  EventListenerList get message() => _get('message');

  EventListenerList get offline() => _get('offline');

  EventListenerList get online() => _get('online');

  EventListenerList get popState() => _get('popstate');

  EventListenerList get resize() => _get('resize');

  EventListenerList get storage() => _get('storage');

  EventListenerList get unload() => _get('unload');
}

class _GeolocationImpl implements Geolocation native "*Geolocation" {

  void clearWatch(int watchId) native;

  void getCurrentPosition(PositionCallback successCallback, [PositionErrorCallback errorCallback = null]) native;

  int watchPosition(PositionCallback successCallback, [PositionErrorCallback errorCallback = null]) native;
}

class _GeopositionImpl implements Geoposition native "*Geoposition" {

  final _CoordinatesImpl coords;

  final int timestamp;
}

class _HRElementImpl extends _ElementImpl implements HRElement native "*HTMLHRElement" {

  String align;

  bool noShade;

  String size;

  String width;
}

class _HTMLAllCollectionImpl implements HTMLAllCollection native "*HTMLAllCollection" {

  final int length;

  _NodeImpl item(int index) native;

  _NodeImpl namedItem(String name) native;

  _NodeListImpl tags(String name) native;
}

class _HTMLCollectionImpl implements HTMLCollection native "*HTMLCollection" {

  final int length;

  _NodeImpl operator[](int index) native "return this[index];";

  void operator[]=(int index, _NodeImpl value) {
    throw new UnsupportedOperationException("Cannot assign element of immutable List.");
  }
  // -- start List<Node> mixins.
  // Node is the element type.

  // From Iterable<Node>:

  Iterator<Node> iterator() {
    // Note: NodeLists are not fixed size. And most probably length shouldn't
    // be cached in both iterator _and_ forEach method. For now caching it
    // for consistency.
    return new _FixedSizeListIterator<Node>(this);
  }

  // From Collection<Node>:

  void add(Node value) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void addLast(Node value) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void addAll(Collection<Node> collection) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void forEach(void f(Node element)) => _Collections.forEach(this, f);

  Collection map(f(Node element)) => _Collections.map(this, [], f);

  Collection<Node> filter(bool f(Node element)) =>
     _Collections.filter(this, <Node>[], f);

  bool every(bool f(Node element)) => _Collections.every(this, f);

  bool some(bool f(Node element)) => _Collections.some(this, f);

  bool isEmpty() => this.length == 0;

  // From List<Node>:

  void sort(int compare(Node a, Node b)) {
    throw new UnsupportedOperationException("Cannot sort immutable List.");
  }

  int indexOf(Node element, [int start = 0]) =>
      _Lists.indexOf(this, element, start, this.length);

  int lastIndexOf(Node element, [int start]) {
    if (start === null) start = length - 1;
    return _Lists.lastIndexOf(this, element, start);
  }

  Node last() => this[length - 1];

  Node removeLast() {
    throw new UnsupportedOperationException("Cannot removeLast on immutable List.");
  }

  // FIXME: implement these.
  void setRange(int start, int rangeLength, List<Node> from, [int startFrom]) {
    throw new UnsupportedOperationException("Cannot setRange on immutable List.");
  }

  void removeRange(int start, int rangeLength) {
    throw new UnsupportedOperationException("Cannot removeRange on immutable List.");
  }

  void insertRange(int start, int rangeLength, [Node initialValue]) {
    throw new UnsupportedOperationException("Cannot insertRange on immutable List.");
  }

  List<Node> getRange(int start, int rangeLength) =>
      _Lists.getRange(this, start, rangeLength, <Node>[]);

  // -- end List<Node> mixins.

  _NodeImpl item(int index) native;

  _NodeImpl namedItem(String name) native;
}

class _HTMLOptionsCollectionImpl extends _HTMLCollectionImpl implements HTMLOptionsCollection native "*HTMLOptionsCollection" {

  // Shadowing definition.
  int get length() native "return this.length;";

  void set length(int value) native "this.length = value;";

  int selectedIndex;

  void remove(int index) native;
}

class _HashChangeEventImpl extends _EventImpl implements HashChangeEvent native "*HashChangeEvent" {

  final String newURL;

  final String oldURL;

  void initHashChangeEvent(String type, bool canBubble, bool cancelable, String oldURL, String newURL) native;
}

class _HeadElementImpl extends _ElementImpl implements HeadElement native "*HTMLHeadElement" {

  String profile;
}

class _HeadingElementImpl extends _ElementImpl implements HeadingElement native "*HTMLHeadingElement" {

  String align;
}

class _HistoryImpl implements History native "*History" {

  final int length;

  final Dynamic state;

  void back() native;

  void forward() native;

  void go(int distance) native;

  void pushState(Object data, String title, [String url = null]) native;

  void replaceState(Object data, String title, [String url = null]) native;
}

class _HtmlElementImpl extends _ElementImpl implements HtmlElement native "*HTMLHtmlElement" {
}

class _IDBAnyImpl implements IDBAny native "*IDBAny" {
}

class _IDBCursorImpl implements IDBCursor native "*IDBCursor" {

  static final int NEXT = 0;

  static final int NEXT_NO_DUPLICATE = 1;

  static final int PREV = 2;

  static final int PREV_NO_DUPLICATE = 3;

  final int direction;

  final Dynamic key;

  final Dynamic primaryKey;

  final Dynamic source;

  void continueFunction([key = null]) native "continue";

  _IDBRequestImpl delete() native;

  _IDBRequestImpl update(value) native;
}

class _IDBCursorWithValueImpl extends _IDBCursorImpl implements IDBCursorWithValue native "*IDBCursorWithValue" {

  final Dynamic value;
}

class _IDBDatabaseImpl extends _EventTargetImpl implements IDBDatabase native "*IDBDatabase" {

  _IDBDatabaseEventsImpl get on() =>
    new _IDBDatabaseEventsImpl(this);

  final String name;

  final List<String> objectStoreNames;

  final String version;

  void $dom_addEventListener(String type, EventListener listener, [bool useCapture = null]) native "addEventListener";

  void close() native;

  _IDBObjectStoreImpl createObjectStore(String name, [Map options = null]) native;

  void deleteObjectStore(String name) native;

  bool $dom_dispatchEvent(_EventImpl evt) native "dispatchEvent";

  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture = null]) native "removeEventListener";

  _IDBVersionChangeRequestImpl setVersion(String version) native;

  _IDBTransactionImpl transaction(storeName_OR_storeNames, [int mode = null]) native;
}

class _IDBDatabaseEventsImpl extends _EventsImpl implements IDBDatabaseEvents {
  _IDBDatabaseEventsImpl(_ptr) : super(_ptr);

  EventListenerList get abort() => _get('abort');

  EventListenerList get error() => _get('error');

  EventListenerList get versionChange() => _get('versionchange');
}

class _IDBDatabaseExceptionImpl implements IDBDatabaseException native "*IDBDatabaseException" {

  static final int ABORT_ERR = 8;

  static final int CONSTRAINT_ERR = 4;

  static final int DATA_ERR = 5;

  static final int NON_TRANSIENT_ERR = 2;

  static final int NOT_ALLOWED_ERR = 6;

  static final int NOT_FOUND_ERR = 3;

  static final int NO_ERR = 0;

  static final int QUOTA_ERR = 11;

  static final int READ_ONLY_ERR = 9;

  static final int TIMEOUT_ERR = 10;

  static final int TRANSACTION_INACTIVE_ERR = 7;

  static final int UNKNOWN_ERR = 1;

  static final int VER_ERR = 12;

  final int code;

  final String message;

  final String name;

  String toString() native;
}

class _IDBFactoryImpl implements IDBFactory native "*IDBFactory" {

  int cmp(first, second) native;

  _IDBVersionChangeRequestImpl deleteDatabase(String name) native;

  _IDBRequestImpl getDatabaseNames() native;

  _IDBRequestImpl open(String name) native;
}

class _IDBIndexImpl implements IDBIndex native "*IDBIndex" {

  final String keyPath;

  final bool multiEntry;

  final String name;

  final _IDBObjectStoreImpl objectStore;

  final bool unique;

  _IDBRequestImpl count([key_OR_range = null]) native;

  _IDBRequestImpl get(key) native;

  _IDBRequestImpl getKey(key) native;

  _IDBRequestImpl openCursor([_IDBKeyRangeImpl range = null, int direction = null]) native;

  _IDBRequestImpl openKeyCursor([_IDBKeyRangeImpl range = null, int direction = null]) native;
}

class _IDBKeyImpl implements IDBKey native "*IDBKey" {
}

class _IDBKeyRangeImpl implements IDBKeyRange native "*IDBKeyRange" {

  final Dynamic lower;

  final bool lowerOpen;

  final Dynamic upper;

  final bool upperOpen;
}

class _IDBObjectStoreImpl implements IDBObjectStore native "*IDBObjectStore" {

  final List<String> indexNames;

  final String keyPath;

  final String name;

  final _IDBTransactionImpl transaction;

  _IDBRequestImpl add(value, [key = null]) native;

  _IDBRequestImpl clear() native;

  _IDBRequestImpl count([key_OR_range = null]) native;

  _IDBIndexImpl createIndex(String name, String keyPath, [Map options = null]) native;

  _IDBRequestImpl delete(key_OR_keyRange) native;

  void deleteIndex(String name) native;

  _IDBRequestImpl getObject(key) native "get";

  _IDBIndexImpl index(String name) native;

  _IDBRequestImpl openCursor([_IDBKeyRangeImpl range = null, int direction = null]) native;

  _IDBRequestImpl put(value, [key = null]) native;
}

class _IDBRequestImpl extends _EventTargetImpl implements IDBRequest native "*IDBRequest" {

  _IDBRequestEventsImpl get on() =>
    new _IDBRequestEventsImpl(this);

  static final int DONE = 2;

  static final int LOADING = 1;

  final int errorCode;

  final int readyState;

  final Dynamic result;

  final Dynamic source;

  final _IDBTransactionImpl transaction;

  final String webkitErrorMessage;

  void $dom_addEventListener(String type, EventListener listener, [bool useCapture = null]) native "addEventListener";

  bool $dom_dispatchEvent(_EventImpl evt) native "dispatchEvent";

  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture = null]) native "removeEventListener";
}

class _IDBRequestEventsImpl extends _EventsImpl implements IDBRequestEvents {
  _IDBRequestEventsImpl(_ptr) : super(_ptr);

  EventListenerList get error() => _get('error');

  EventListenerList get success() => _get('success');
}

class _IDBTransactionImpl extends _EventTargetImpl implements IDBTransaction native "*IDBTransaction" {

  _IDBTransactionEventsImpl get on() =>
    new _IDBTransactionEventsImpl(this);

  static final int READ_ONLY = 0;

  static final int READ_WRITE = 1;

  static final int VERSION_CHANGE = 2;

  final _IDBDatabaseImpl db;

  final int mode;

  void abort() native;

  void $dom_addEventListener(String type, EventListener listener, [bool useCapture = null]) native "addEventListener";

  bool $dom_dispatchEvent(_EventImpl evt) native "dispatchEvent";

  _IDBObjectStoreImpl objectStore(String name) native;

  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture = null]) native "removeEventListener";
}

class _IDBTransactionEventsImpl extends _EventsImpl implements IDBTransactionEvents {
  _IDBTransactionEventsImpl(_ptr) : super(_ptr);

  EventListenerList get abort() => _get('abort');

  EventListenerList get complete() => _get('complete');

  EventListenerList get error() => _get('error');
}

class _IDBVersionChangeEventImpl extends _EventImpl implements IDBVersionChangeEvent native "*IDBVersionChangeEvent" {

  final String version;
}

class _IDBVersionChangeRequestImpl extends _IDBRequestImpl implements IDBVersionChangeRequest native "*IDBVersionChangeRequest" {

  _IDBVersionChangeRequestEventsImpl get on() =>
    new _IDBVersionChangeRequestEventsImpl(this);

  // From EventTarget

  void $dom_addEventListener(String type, EventListener listener, [bool useCapture = null]) native "addEventListener";

  bool $dom_dispatchEvent(_EventImpl event) native "dispatchEvent";

  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture = null]) native "removeEventListener";
}

class _IDBVersionChangeRequestEventsImpl extends _IDBRequestEventsImpl implements IDBVersionChangeRequestEvents {
  _IDBVersionChangeRequestEventsImpl(_ptr) : super(_ptr);

  EventListenerList get blocked() => _get('blocked');
}

class _IFrameElementImpl extends _ElementImpl implements IFrameElement native "*HTMLIFrameElement" {

  String align;

  final _DocumentImpl contentDocument;

  final _WindowImpl contentWindow;

  String frameBorder;

  String height;

  String longDesc;

  String marginHeight;

  String marginWidth;

  String name;

  String sandbox;

  String scrolling;

  String src;

  String srcdoc;

  String width;

  _SVGDocumentImpl getSVGDocument() native;
}

class _IceCandidateImpl implements IceCandidate native "*IceCandidate" {

  final String label;

  String toSdp() native;
}

class _ImageDataImpl implements ImageData native "*ImageData" {

  final _Uint8ClampedArrayImpl data;

  final int height;

  final int width;
}

class _ImageElementImpl extends _ElementImpl implements ImageElement native "*HTMLImageElement" {

  String align;

  String alt;

  String border;

  final bool complete;

  String crossOrigin;

  int height;

  int hspace;

  bool isMap;

  String longDesc;

  String lowsrc;

  String name;

  final int naturalHeight;

  final int naturalWidth;

  String src;

  String useMap;

  int vspace;

  int width;

  final int x;

  final int y;
}

class _InputElementImpl extends _ElementImpl implements InputElement native "*HTMLInputElement" {

  _InputElementEventsImpl get on() =>
    new _InputElementEventsImpl(this);

  String accept;

  String align;

  String alt;

  String autocomplete;

  bool autofocus;

  bool checked;

  bool defaultChecked;

  String defaultValue;

  bool disabled;

  final _FileListImpl files;

  final _FormElementImpl form;

  String formAction;

  String formEnctype;

  String formMethod;

  bool formNoValidate;

  String formTarget;

  bool incremental;

  bool indeterminate;

  final _NodeListImpl labels;

  String max;

  int maxLength;

  String min;

  bool multiple;

  String name;

  String pattern;

  String placeholder;

  bool readOnly;

  bool required;

  String selectionDirection;

  int selectionEnd;

  int selectionStart;

  int size;

  String src;

  String step;

  String type;

  String useMap;

  final String validationMessage;

  final _ValidityStateImpl validity;

  String value;

  Date valueAsDate;

  num valueAsNumber;

  bool webkitGrammar;

  bool webkitSpeech;

  bool webkitdirectory;

  final bool willValidate;

  bool checkValidity() native;

  void select() native;

  void setCustomValidity(String error) native;

  void setSelectionRange(int start, int end, [String direction = null]) native;

  void stepDown([int n = null]) native;

  void stepUp([int n = null]) native;
}

class _InputElementEventsImpl extends _ElementEventsImpl implements InputElementEvents {
  _InputElementEventsImpl(_ptr) : super(_ptr);

  EventListenerList get speechChange() => _get('webkitSpeechChange');
}

class _Int16ArrayImpl extends _ArrayBufferViewImpl implements Int16Array, List<int> native "*Int16Array" {

  static final int BYTES_PER_ELEMENT = 2;

  final int length;

  int operator[](int index) native "return this[index];";

  void operator[]=(int index, int value) native "this[index] = value";
  // -- start List<int> mixins.
  // int is the element type.

  // From Iterable<int>:

  Iterator<int> iterator() {
    // Note: NodeLists are not fixed size. And most probably length shouldn't
    // be cached in both iterator _and_ forEach method. For now caching it
    // for consistency.
    return new _FixedSizeListIterator<int>(this);
  }

  // From Collection<int>:

  void add(int value) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void addLast(int value) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void addAll(Collection<int> collection) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void forEach(void f(int element)) => _Collections.forEach(this, f);

  Collection map(f(int element)) => _Collections.map(this, [], f);

  Collection<int> filter(bool f(int element)) =>
     _Collections.filter(this, <int>[], f);

  bool every(bool f(int element)) => _Collections.every(this, f);

  bool some(bool f(int element)) => _Collections.some(this, f);

  bool isEmpty() => this.length == 0;

  // From List<int>:

  void sort(int compare(int a, int b)) {
    throw new UnsupportedOperationException("Cannot sort immutable List.");
  }

  int indexOf(int element, [int start = 0]) =>
      _Lists.indexOf(this, element, start, this.length);

  int lastIndexOf(int element, [int start]) {
    if (start === null) start = length - 1;
    return _Lists.lastIndexOf(this, element, start);
  }

  int last() => this[length - 1];

  int removeLast() {
    throw new UnsupportedOperationException("Cannot removeLast on immutable List.");
  }

  // FIXME: implement these.
  void setRange(int start, int rangeLength, List<int> from, [int startFrom]) {
    throw new UnsupportedOperationException("Cannot setRange on immutable List.");
  }

  void removeRange(int start, int rangeLength) {
    throw new UnsupportedOperationException("Cannot removeRange on immutable List.");
  }

  void insertRange(int start, int rangeLength, [int initialValue]) {
    throw new UnsupportedOperationException("Cannot insertRange on immutable List.");
  }

  List<int> getRange(int start, int rangeLength) =>
      _Lists.getRange(this, start, rangeLength, <int>[]);

  // -- end List<int> mixins.

  void setElements(Object array, [int offset = null]) native "set";

  _Int16ArrayImpl subarray(int start, [int end = null]) native;
}

class _Int32ArrayImpl extends _ArrayBufferViewImpl implements Int32Array, List<int> native "*Int32Array" {

  static final int BYTES_PER_ELEMENT = 4;

  final int length;

  int operator[](int index) native "return this[index];";

  void operator[]=(int index, int value) native "this[index] = value";
  // -- start List<int> mixins.
  // int is the element type.

  // From Iterable<int>:

  Iterator<int> iterator() {
    // Note: NodeLists are not fixed size. And most probably length shouldn't
    // be cached in both iterator _and_ forEach method. For now caching it
    // for consistency.
    return new _FixedSizeListIterator<int>(this);
  }

  // From Collection<int>:

  void add(int value) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void addLast(int value) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void addAll(Collection<int> collection) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void forEach(void f(int element)) => _Collections.forEach(this, f);

  Collection map(f(int element)) => _Collections.map(this, [], f);

  Collection<int> filter(bool f(int element)) =>
     _Collections.filter(this, <int>[], f);

  bool every(bool f(int element)) => _Collections.every(this, f);

  bool some(bool f(int element)) => _Collections.some(this, f);

  bool isEmpty() => this.length == 0;

  // From List<int>:

  void sort(int compare(int a, int b)) {
    throw new UnsupportedOperationException("Cannot sort immutable List.");
  }

  int indexOf(int element, [int start = 0]) =>
      _Lists.indexOf(this, element, start, this.length);

  int lastIndexOf(int element, [int start]) {
    if (start === null) start = length - 1;
    return _Lists.lastIndexOf(this, element, start);
  }

  int last() => this[length - 1];

  int removeLast() {
    throw new UnsupportedOperationException("Cannot removeLast on immutable List.");
  }

  // FIXME: implement these.
  void setRange(int start, int rangeLength, List<int> from, [int startFrom]) {
    throw new UnsupportedOperationException("Cannot setRange on immutable List.");
  }

  void removeRange(int start, int rangeLength) {
    throw new UnsupportedOperationException("Cannot removeRange on immutable List.");
  }

  void insertRange(int start, int rangeLength, [int initialValue]) {
    throw new UnsupportedOperationException("Cannot insertRange on immutable List.");
  }

  List<int> getRange(int start, int rangeLength) =>
      _Lists.getRange(this, start, rangeLength, <int>[]);

  // -- end List<int> mixins.

  void setElements(Object array, [int offset = null]) native "set";

  _Int32ArrayImpl subarray(int start, [int end = null]) native;
}

class _Int8ArrayImpl extends _ArrayBufferViewImpl implements Int8Array, List<int> native "*Int8Array" {

  static final int BYTES_PER_ELEMENT = 1;

  final int length;

  int operator[](int index) native "return this[index];";

  void operator[]=(int index, int value) native "this[index] = value";
  // -- start List<int> mixins.
  // int is the element type.

  // From Iterable<int>:

  Iterator<int> iterator() {
    // Note: NodeLists are not fixed size. And most probably length shouldn't
    // be cached in both iterator _and_ forEach method. For now caching it
    // for consistency.
    return new _FixedSizeListIterator<int>(this);
  }

  // From Collection<int>:

  void add(int value) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void addLast(int value) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void addAll(Collection<int> collection) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void forEach(void f(int element)) => _Collections.forEach(this, f);

  Collection map(f(int element)) => _Collections.map(this, [], f);

  Collection<int> filter(bool f(int element)) =>
     _Collections.filter(this, <int>[], f);

  bool every(bool f(int element)) => _Collections.every(this, f);

  bool some(bool f(int element)) => _Collections.some(this, f);

  bool isEmpty() => this.length == 0;

  // From List<int>:

  void sort(int compare(int a, int b)) {
    throw new UnsupportedOperationException("Cannot sort immutable List.");
  }

  int indexOf(int element, [int start = 0]) =>
      _Lists.indexOf(this, element, start, this.length);

  int lastIndexOf(int element, [int start]) {
    if (start === null) start = length - 1;
    return _Lists.lastIndexOf(this, element, start);
  }

  int last() => this[length - 1];

  int removeLast() {
    throw new UnsupportedOperationException("Cannot removeLast on immutable List.");
  }

  // FIXME: implement these.
  void setRange(int start, int rangeLength, List<int> from, [int startFrom]) {
    throw new UnsupportedOperationException("Cannot setRange on immutable List.");
  }

  void removeRange(int start, int rangeLength) {
    throw new UnsupportedOperationException("Cannot removeRange on immutable List.");
  }

  void insertRange(int start, int rangeLength, [int initialValue]) {
    throw new UnsupportedOperationException("Cannot insertRange on immutable List.");
  }

  List<int> getRange(int start, int rangeLength) =>
      _Lists.getRange(this, start, rangeLength, <int>[]);

  // -- end List<int> mixins.

  void setElements(Object array, [int offset = null]) native "set";

  _Int8ArrayImpl subarray(int start, [int end = null]) native;
}

class _JavaScriptAudioNodeImpl extends _AudioNodeImpl implements JavaScriptAudioNode native "*JavaScriptAudioNode" {

  _JavaScriptAudioNodeEventsImpl get on() =>
    new _JavaScriptAudioNodeEventsImpl(this);

  final int bufferSize;

  // From EventTarget

  void $dom_addEventListener(String type, EventListener listener, [bool useCapture = null]) native "addEventListener";

  bool $dom_dispatchEvent(_EventImpl event) native "dispatchEvent";

  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture = null]) native "removeEventListener";
}

class _JavaScriptAudioNodeEventsImpl extends _EventsImpl implements JavaScriptAudioNodeEvents {
  _JavaScriptAudioNodeEventsImpl(_ptr) : super(_ptr);

  EventListenerList get audioProcess() => _get('audioprocess');
}

class _JavaScriptCallFrameImpl implements JavaScriptCallFrame native "*JavaScriptCallFrame" {

  static final int CATCH_SCOPE = 4;

  static final int CLOSURE_SCOPE = 3;

  static final int GLOBAL_SCOPE = 0;

  static final int LOCAL_SCOPE = 1;

  static final int WITH_SCOPE = 2;

  final _JavaScriptCallFrameImpl caller;

  final int column;

  final String functionName;

  final int line;

  final List scopeChain;

  final int sourceID;

  final Object thisObject;

  final String type;

  void evaluate(String script) native;

  int scopeType(int scopeIndex) native;
}

class _KeyboardEventImpl extends _UIEventImpl implements KeyboardEvent native "*KeyboardEvent" {

  final bool altGraphKey;

  final bool altKey;

  final bool ctrlKey;

  final String keyIdentifier;

  final int keyLocation;

  final bool metaKey;

  final bool shiftKey;

  void initKeyboardEvent(String type, bool canBubble, bool cancelable, _WindowImpl view, String keyIdentifier, int keyLocation, bool ctrlKey, bool altKey, bool shiftKey, bool metaKey, bool altGraphKey) native;
}

class _KeygenElementImpl extends _ElementImpl implements KeygenElement native "*HTMLKeygenElement" {

  bool autofocus;

  String challenge;

  bool disabled;

  final _FormElementImpl form;

  String keytype;

  final _NodeListImpl labels;

  String name;

  final String type;

  final String validationMessage;

  final _ValidityStateImpl validity;

  final bool willValidate;

  bool checkValidity() native;

  void setCustomValidity(String error) native;
}

class _LIElementImpl extends _ElementImpl implements LIElement native "*HTMLLIElement" {

  String type;

  int value;
}

class _LabelElementImpl extends _ElementImpl implements LabelElement native "*HTMLLabelElement" {

  final _ElementImpl control;

  final _FormElementImpl form;

  String htmlFor;
}

class _LegendElementImpl extends _ElementImpl implements LegendElement native "*HTMLLegendElement" {

  String align;

  final _FormElementImpl form;
}

class _LinkElementImpl extends _ElementImpl implements LinkElement native "*HTMLLinkElement" {

  String charset;

  bool disabled;

  String href;

  String hreflang;

  String media;

  String rel;

  String rev;

  final _StyleSheetImpl sheet;

  _DOMSettableTokenListImpl sizes;

  String target;

  String type;
}

class _LocalMediaStreamImpl extends _MediaStreamImpl implements LocalMediaStream native "*LocalMediaStream" {

  void stop() native;
}

class _LocationImpl implements Location native "*Location" {

  final List<String> ancestorOrigins;

  String hash;

  String host;

  String hostname;

  String href;

  final String origin;

  String pathname;

  String port;

  String protocol;

  String search;

  void assign(String url) native;

  void reload() native;

  void replace(String url) native;

  String toString() native;
}

class _MapElementImpl extends _ElementImpl implements MapElement native "*HTMLMapElement" {

  final _HTMLCollectionImpl areas;

  String name;
}

class _MarqueeElementImpl extends _ElementImpl implements MarqueeElement native "*HTMLMarqueeElement" {

  String behavior;

  String bgColor;

  String direction;

  String height;

  int hspace;

  int loop;

  int scrollAmount;

  int scrollDelay;

  bool trueSpeed;

  int vspace;

  String width;

  void start() native;

  void stop() native;
}

class _MediaControllerImpl extends _EventTargetImpl implements MediaController native "*MediaController" {

  final _TimeRangesImpl buffered;

  num currentTime;

  num defaultPlaybackRate;

  final num duration;

  bool muted;

  final bool paused;

  num playbackRate;

  final _TimeRangesImpl played;

  final _TimeRangesImpl seekable;

  num volume;

  void $dom_addEventListener(String type, EventListener listener, [bool useCapture = null]) native "addEventListener";

  bool $dom_dispatchEvent(_EventImpl evt) native "dispatchEvent";

  void pause() native;

  void play() native;

  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture = null]) native "removeEventListener";
}

class _MediaElementImpl extends _ElementImpl implements MediaElement native "*HTMLMediaElement" {

  _MediaElementEventsImpl get on() =>
    new _MediaElementEventsImpl(this);

  static final int EOS_DECODE_ERR = 2;

  static final int EOS_NETWORK_ERR = 1;

  static final int EOS_NO_ERROR = 0;

  static final int HAVE_CURRENT_DATA = 2;

  static final int HAVE_ENOUGH_DATA = 4;

  static final int HAVE_FUTURE_DATA = 3;

  static final int HAVE_METADATA = 1;

  static final int HAVE_NOTHING = 0;

  static final int NETWORK_EMPTY = 0;

  static final int NETWORK_IDLE = 1;

  static final int NETWORK_LOADING = 2;

  static final int NETWORK_NO_SOURCE = 3;

  static final int SOURCE_CLOSED = 0;

  static final int SOURCE_ENDED = 2;

  static final int SOURCE_OPEN = 1;

  bool autoplay;

  final _TimeRangesImpl buffered;

  _MediaControllerImpl controller;

  bool controls;

  final String currentSrc;

  num currentTime;

  bool defaultMuted;

  num defaultPlaybackRate;

  final num duration;

  final bool ended;

  final _MediaErrorImpl error;

  final num initialTime;

  bool loop;

  String mediaGroup;

  bool muted;

  final int networkState;

  final bool paused;

  num playbackRate;

  final _TimeRangesImpl played;

  String preload;

  final int readyState;

  final _TimeRangesImpl seekable;

  final bool seeking;

  String src;

  final num startTime;

  final _TextTrackListImpl textTracks;

  num volume;

  final int webkitAudioDecodedByteCount;

  bool webkitClosedCaptionsVisible;

  final bool webkitHasClosedCaptions;

  final String webkitMediaSourceURL;

  bool webkitPreservesPitch;

  final int webkitSourceState;

  final int webkitVideoDecodedByteCount;

  _TextTrackImpl addTextTrack(String kind, [String label = null, String language = null]) native;

  String canPlayType(String type, String keySystem) native;

  void load() native;

  void pause() native;

  void play() native;

  void webkitAddKey(String keySystem, _Uint8ArrayImpl key, [_Uint8ArrayImpl initData = null, String sessionId = null]) native;

  void webkitCancelKeyRequest(String keySystem, String sessionId) native;

  void webkitGenerateKeyRequest(String keySystem, [_Uint8ArrayImpl initData = null]) native;

  void webkitSourceAddId(String id, String type) native;

  void webkitSourceAppend(_Uint8ArrayImpl data) native;

  void webkitSourceEndOfStream(int status) native;

  void webkitSourceRemoveId(String id) native;
}

class _MediaElementEventsImpl extends _ElementEventsImpl implements MediaElementEvents {
  _MediaElementEventsImpl(_ptr) : super(_ptr);

  EventListenerList get keyAdded() => _get('webkitkeyadded');

  EventListenerList get keyError() => _get('webkitkeyerror');

  EventListenerList get keyMessage() => _get('webkitkeymessage');

  EventListenerList get needKey() => _get('webkitneedkey');
}

class _MediaElementAudioSourceNodeImpl extends _AudioSourceNodeImpl implements MediaElementAudioSourceNode native "*MediaElementAudioSourceNode" {

  final _MediaElementImpl mediaElement;
}

class _MediaErrorImpl implements MediaError native "*MediaError" {

  static final int MEDIA_ERR_ABORTED = 1;

  static final int MEDIA_ERR_DECODE = 3;

  static final int MEDIA_ERR_ENCRYPTED = 5;

  static final int MEDIA_ERR_NETWORK = 2;

  static final int MEDIA_ERR_SRC_NOT_SUPPORTED = 4;

  final int code;
}

class _MediaKeyErrorImpl implements MediaKeyError native "*MediaKeyError" {

  static final int MEDIA_KEYERR_CLIENT = 2;

  static final int MEDIA_KEYERR_DOMAIN = 6;

  static final int MEDIA_KEYERR_HARDWARECHANGE = 5;

  static final int MEDIA_KEYERR_OUTPUT = 4;

  static final int MEDIA_KEYERR_SERVICE = 3;

  static final int MEDIA_KEYERR_UNKNOWN = 1;

  final int code;
}

class _MediaKeyEventImpl extends _EventImpl implements MediaKeyEvent native "*MediaKeyEvent" {

  final String defaultURL;

  final _MediaKeyErrorImpl errorCode;

  final _Uint8ArrayImpl initData;

  final String keySystem;

  final _Uint8ArrayImpl message;

  final String sessionId;

  final int systemCode;
}

class _MediaListImpl implements MediaList native "*MediaList" {

  final int length;

  String mediaText;

  String operator[](int index) native "return this[index];";

  void operator[]=(int index, String value) {
    throw new UnsupportedOperationException("Cannot assign element of immutable List.");
  }
  // -- start List<String> mixins.
  // String is the element type.

  // From Iterable<String>:

  Iterator<String> iterator() {
    // Note: NodeLists are not fixed size. And most probably length shouldn't
    // be cached in both iterator _and_ forEach method. For now caching it
    // for consistency.
    return new _FixedSizeListIterator<String>(this);
  }

  // From Collection<String>:

  void add(String value) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void addLast(String value) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void addAll(Collection<String> collection) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void forEach(void f(String element)) => _Collections.forEach(this, f);

  Collection map(f(String element)) => _Collections.map(this, [], f);

  Collection<String> filter(bool f(String element)) =>
     _Collections.filter(this, <String>[], f);

  bool every(bool f(String element)) => _Collections.every(this, f);

  bool some(bool f(String element)) => _Collections.some(this, f);

  bool isEmpty() => this.length == 0;

  // From List<String>:

  void sort(int compare(String a, String b)) {
    throw new UnsupportedOperationException("Cannot sort immutable List.");
  }

  int indexOf(String element, [int start = 0]) =>
      _Lists.indexOf(this, element, start, this.length);

  int lastIndexOf(String element, [int start]) {
    if (start === null) start = length - 1;
    return _Lists.lastIndexOf(this, element, start);
  }

  String last() => this[length - 1];

  String removeLast() {
    throw new UnsupportedOperationException("Cannot removeLast on immutable List.");
  }

  // FIXME: implement these.
  void setRange(int start, int rangeLength, List<String> from, [int startFrom]) {
    throw new UnsupportedOperationException("Cannot setRange on immutable List.");
  }

  void removeRange(int start, int rangeLength) {
    throw new UnsupportedOperationException("Cannot removeRange on immutable List.");
  }

  void insertRange(int start, int rangeLength, [String initialValue]) {
    throw new UnsupportedOperationException("Cannot insertRange on immutable List.");
  }

  List<String> getRange(int start, int rangeLength) =>
      _Lists.getRange(this, start, rangeLength, <String>[]);

  // -- end List<String> mixins.

  void appendMedium(String newMedium) native;

  void deleteMedium(String oldMedium) native;

  String item(int index) native;
}

class _MediaQueryListImpl implements MediaQueryList native "*MediaQueryList" {

  final bool matches;

  final String media;

  void addListener(_MediaQueryListListenerImpl listener) native;

  void removeListener(_MediaQueryListListenerImpl listener) native;
}

class _MediaQueryListListenerImpl implements MediaQueryListListener native "*MediaQueryListListener" {

  void queryChanged(_MediaQueryListImpl list) native;
}

class _MediaStreamImpl extends _EventTargetImpl implements MediaStream native "*MediaStream" {

  _MediaStreamEventsImpl get on() =>
    new _MediaStreamEventsImpl(this);

  static final int ENDED = 2;

  static final int LIVE = 1;

  final _MediaStreamTrackListImpl audioTracks;

  final String label;

  final int readyState;

  final _MediaStreamTrackListImpl videoTracks;

  void $dom_addEventListener(String type, EventListener listener, [bool useCapture = null]) native "addEventListener";

  bool $dom_dispatchEvent(_EventImpl event) native "dispatchEvent";

  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture = null]) native "removeEventListener";
}

class _MediaStreamEventsImpl extends _EventsImpl implements MediaStreamEvents {
  _MediaStreamEventsImpl(_ptr) : super(_ptr);

  EventListenerList get ended() => _get('ended');
}

class _MediaStreamEventImpl extends _EventImpl implements MediaStreamEvent native "*MediaStreamEvent" {

  final _MediaStreamImpl stream;
}

class _MediaStreamListImpl implements MediaStreamList native "*MediaStreamList" {

  final int length;

  _MediaStreamImpl item(int index) native;
}

class _MediaStreamTrackImpl implements MediaStreamTrack native "*MediaStreamTrack" {

  bool enabled;

  final String kind;

  final String label;
}

class _MediaStreamTrackListImpl implements MediaStreamTrackList native "*MediaStreamTrackList" {

  final int length;

  _MediaStreamTrackImpl item(int index) native;
}

class _MemoryInfoImpl implements MemoryInfo native "*MemoryInfo" {

  final int jsHeapSizeLimit;

  final int totalJSHeapSize;

  final int usedJSHeapSize;
}

class _MenuElementImpl extends _ElementImpl implements MenuElement native "*HTMLMenuElement" {

  bool compact;
}

class _MessageChannelImpl implements MessageChannel native "*MessageChannel" {

  final _MessagePortImpl port1;

  final _MessagePortImpl port2;
}

class _MessageEventImpl extends _EventImpl implements MessageEvent native "*MessageEvent" {

  final Object data;

  final String lastEventId;

  final String origin;

  final List ports;

  final _WindowImpl source;

  void initMessageEvent(String typeArg, bool canBubbleArg, bool cancelableArg, Object dataArg, String originArg, String lastEventIdArg, _WindowImpl sourceArg, List messagePorts) native;

  void webkitInitMessageEvent(String typeArg, bool canBubbleArg, bool cancelableArg, Object dataArg, String originArg, String lastEventIdArg, _WindowImpl sourceArg, List transferables) native;
}

class _MessagePortImpl extends _EventTargetImpl implements MessagePort native "*MessagePort" {

  _MessagePortEventsImpl get on() =>
    new _MessagePortEventsImpl(this);

  void $dom_addEventListener(String type, EventListener listener, [bool useCapture = null]) native "addEventListener";

  void close() native;

  bool $dom_dispatchEvent(_EventImpl evt) native "dispatchEvent";

  void postMessage(String message, [List messagePorts = null]) native;

  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture = null]) native "removeEventListener";

  void start() native;

  void webkitPostMessage(String message, [List transfer = null]) native;
}

class _MessagePortEventsImpl extends _EventsImpl implements MessagePortEvents {
  _MessagePortEventsImpl(_ptr) : super(_ptr);

  EventListenerList get message() => _get('message');
}

class _MetaElementImpl extends _ElementImpl implements MetaElement native "*HTMLMetaElement" {

  String content;

  String httpEquiv;

  String name;

  String scheme;
}

class _MetadataImpl implements Metadata native "*Metadata" {

  final Date modificationTime;

  final int size;
}

class _MeterElementImpl extends _ElementImpl implements MeterElement native "*HTMLMeterElement" {

  num high;

  final _NodeListImpl labels;

  num low;

  num max;

  num min;

  num optimum;

  num value;
}

class _ModElementImpl extends _ElementImpl implements ModElement native "*HTMLModElement" {

  String cite;

  String dateTime;
}

class _MouseEventImpl extends _UIEventImpl implements MouseEvent native "*MouseEvent" {

  final bool altKey;

  final int button;

  final int clientX;

  final int clientY;

  final bool ctrlKey;

  final _ClipboardImpl dataTransfer;

  final _NodeImpl fromElement;

  final bool metaKey;

  final int offsetX;

  final int offsetY;

  final _EventTargetImpl relatedTarget;

  final int screenX;

  final int screenY;

  final bool shiftKey;

  final _NodeImpl toElement;

  final int webkitMovementX;

  final int webkitMovementY;

  final int x;

  final int y;

  void $dom_initMouseEvent(String type, bool canBubble, bool cancelable, _WindowImpl view, int detail, int screenX, int screenY, int clientX, int clientY, bool ctrlKey, bool altKey, bool shiftKey, bool metaKey, int button, _EventTargetImpl relatedTarget) native "initMouseEvent";
}

class _MutationCallbackImpl implements MutationCallback native "*MutationCallback" {
}

class _MutationEventImpl extends _EventImpl implements MutationEvent native "*MutationEvent" {

  static final int ADDITION = 2;

  static final int MODIFICATION = 1;

  static final int REMOVAL = 3;

  final int attrChange;

  final String attrName;

  final String newValue;

  final String prevValue;

  final _NodeImpl relatedNode;

  void initMutationEvent(String type, bool canBubble, bool cancelable, _NodeImpl relatedNode, String prevValue, String newValue, String attrName, int attrChange) native;
}

class _MutationRecordImpl implements MutationRecord native "*MutationRecord" {

  final _NodeListImpl addedNodes;

  final String attributeName;

  final String attributeNamespace;

  final _NodeImpl nextSibling;

  final String oldValue;

  final _NodeImpl previousSibling;

  final _NodeListImpl removedNodes;

  final _NodeImpl target;

  final String type;
}

class _NamedNodeMapImpl implements NamedNodeMap native "*NamedNodeMap" {

  final int length;

  _NodeImpl operator[](int index) native "return this[index];";

  void operator[]=(int index, _NodeImpl value) {
    throw new UnsupportedOperationException("Cannot assign element of immutable List.");
  }
  // -- start List<Node> mixins.
  // Node is the element type.

  // From Iterable<Node>:

  Iterator<Node> iterator() {
    // Note: NodeLists are not fixed size. And most probably length shouldn't
    // be cached in both iterator _and_ forEach method. For now caching it
    // for consistency.
    return new _FixedSizeListIterator<Node>(this);
  }

  // From Collection<Node>:

  void add(Node value) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void addLast(Node value) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void addAll(Collection<Node> collection) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void forEach(void f(Node element)) => _Collections.forEach(this, f);

  Collection map(f(Node element)) => _Collections.map(this, [], f);

  Collection<Node> filter(bool f(Node element)) =>
     _Collections.filter(this, <Node>[], f);

  bool every(bool f(Node element)) => _Collections.every(this, f);

  bool some(bool f(Node element)) => _Collections.some(this, f);

  bool isEmpty() => this.length == 0;

  // From List<Node>:

  void sort(int compare(Node a, Node b)) {
    throw new UnsupportedOperationException("Cannot sort immutable List.");
  }

  int indexOf(Node element, [int start = 0]) =>
      _Lists.indexOf(this, element, start, this.length);

  int lastIndexOf(Node element, [int start]) {
    if (start === null) start = length - 1;
    return _Lists.lastIndexOf(this, element, start);
  }

  Node last() => this[length - 1];

  Node removeLast() {
    throw new UnsupportedOperationException("Cannot removeLast on immutable List.");
  }

  // FIXME: implement these.
  void setRange(int start, int rangeLength, List<Node> from, [int startFrom]) {
    throw new UnsupportedOperationException("Cannot setRange on immutable List.");
  }

  void removeRange(int start, int rangeLength) {
    throw new UnsupportedOperationException("Cannot removeRange on immutable List.");
  }

  void insertRange(int start, int rangeLength, [Node initialValue]) {
    throw new UnsupportedOperationException("Cannot insertRange on immutable List.");
  }

  List<Node> getRange(int start, int rangeLength) =>
      _Lists.getRange(this, start, rangeLength, <Node>[]);

  // -- end List<Node> mixins.

  _NodeImpl getNamedItem(String name) native;

  _NodeImpl getNamedItemNS(String namespaceURI, String localName) native;

  _NodeImpl item(int index) native;

  _NodeImpl removeNamedItem(String name) native;

  _NodeImpl removeNamedItemNS(String namespaceURI, String localName) native;

  _NodeImpl setNamedItem(_NodeImpl node) native;

  _NodeImpl setNamedItemNS(_NodeImpl node) native;
}

class _NavigatorImpl implements Navigator native "*Navigator" {

  final String appCodeName;

  final String appName;

  final String appVersion;

  final bool cookieEnabled;

  final _GeolocationImpl geolocation;

  final String language;

  final _DOMMimeTypeArrayImpl mimeTypes;

  final bool onLine;

  final String platform;

  final _DOMPluginArrayImpl plugins;

  final String product;

  final String productSub;

  final String userAgent;

  final String vendor;

  final String vendorSub;

  final _BatteryManagerImpl webkitBattery;

  final _PointerLockImpl webkitPointer;

  void getStorageUpdates() native;

  bool javaEnabled() native;

  void registerProtocolHandler(String scheme, String url, String title) native;

  void webkitGetUserMedia(String options, NavigatorUserMediaSuccessCallback successCallback, [NavigatorUserMediaErrorCallback errorCallback = null]) native;
}

class _NavigatorUserMediaErrorImpl implements NavigatorUserMediaError native "*NavigatorUserMediaError" {

  static final int PERMISSION_DENIED = 1;

  final int code;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/**
 * Lazy implementation of the child nodes of an element that does not request
 * the actual child nodes of an element until strictly necessary greatly
 * improving performance for the typical cases where it is not required.
 */
class _ChildNodeListLazy implements NodeList {
  final _NodeImpl _this;

  _ChildNodeListLazy(this._this);


  _NodeImpl get first() native "return this._this.firstChild;";
  _NodeImpl last() native "return this._this.lastChild;";

  void add(_NodeImpl value) {
    _this.$dom_appendChild(value);
  }

  void addLast(_NodeImpl value) {
    _this.$dom_appendChild(value);
  }


  void addAll(Collection<_NodeImpl> collection) {
    for (_NodeImpl node in collection) {
      _this.$dom_appendChild(node);
    }
  }

  _NodeImpl removeLast() {
    final result = last();
    if (result != null) {
      _this.$dom_removeChild(result);
    }
    return result;
  }

  void clear() {
    _this.text = '';
  }

  void operator []=(int index, _NodeImpl value) {
    _this.$dom_replaceChild(value, this[index]);
  }

  Iterator<Node> iterator() => _this.$dom_childNodes.iterator();

  // TODO(jacobr): We can implement these methods much more efficiently by
  // looking up the nodeList only once instead of once per iteration.
  void forEach(void f(Node element)) => _Collections.forEach(this, f);

  Collection map(f(Node element)) => _Collections.map(this, [], f);

  Collection<Node> filter(bool f(Node element)) =>
     new _NodeListWrapper(_Collections.filter(this, <Node>[], f));

  bool every(bool f(Node element)) => _Collections.every(this, f);

  bool some(bool f(Node element)) => _Collections.some(this, f);

  bool isEmpty() => this.length == 0;

  // From List<Node>:

  // TODO(jacobr): this could be implemented for child node lists.
  // The exception we throw here is misleading.
  void sort(int compare(Node a, Node b)) {
    throw new UnsupportedOperationException("Cannot sort immutable List.");
  }

  int indexOf(Node element, [int start = 0]) =>
      _Lists.indexOf(this, element, start, this.length);

  int lastIndexOf(Node element, [int start = 0]) =>
      _Lists.lastIndexOf(this, element, start);

  // FIXME: implement these.
  void setRange(int start, int rangeLength, List<Node> from, [int startFrom]) {
    throw new UnsupportedOperationException(
        "Cannot setRange on immutable List.");
  }
  void removeRange(int start, int rangeLength) {
    throw new UnsupportedOperationException(
        "Cannot removeRange on immutable List.");
  }
  void insertRange(int start, int rangeLength, [Node initialValue]) {
    throw new UnsupportedOperationException(
        "Cannot insertRange on immutable List.");
  }
  NodeList getRange(int start, int rangeLength) =>
    new _NodeListWrapper(_Lists.getRange(this, start, rangeLength, <Node>[]));

  // -- end List<Node> mixins.

  // TODO(jacobr): benchmark whether this is more efficient or whether caching
  // a local copy of $dom_childNodes is more efficient.
  int get length() => _this.$dom_childNodes.length;

  _NodeImpl operator[](int index) => _this.$dom_childNodes[index];
}

class _NodeImpl extends _EventTargetImpl implements Node native "*Node" {
  _ChildNodeListLazy get nodes() {
    return new _ChildNodeListLazy(this);
  }

  void set nodes(Collection<Node> value) {
    // Copy list first since we don't want liveness during iteration.
    // TODO(jacobr): there is a better way to do this.
    List copy = new List.from(value);
    text = '';
    for (Node node in copy) {
      $dom_appendChild(node);
    }
  }

  // TODO(jacobr): should we throw an exception if parent is already null?
  _NodeImpl remove() {
    if (this.parent != null) {
      final _NodeImpl parent = this.parent;
      parent.$dom_removeChild(this);
    }
    return this;
  }

  _NodeImpl replaceWith(Node otherNode) {
    try {
      final _NodeImpl parent = this.parent;
      parent.$dom_replaceChild(otherNode, this);
    } catch(var e) {
      
    };
    return this;
  }


  static final int ATTRIBUTE_NODE = 2;

  static final int CDATA_SECTION_NODE = 4;

  static final int COMMENT_NODE = 8;

  static final int DOCUMENT_FRAGMENT_NODE = 11;

  static final int DOCUMENT_NODE = 9;

  static final int DOCUMENT_POSITION_CONTAINED_BY = 0x10;

  static final int DOCUMENT_POSITION_CONTAINS = 0x08;

  static final int DOCUMENT_POSITION_DISCONNECTED = 0x01;

  static final int DOCUMENT_POSITION_FOLLOWING = 0x04;

  static final int DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC = 0x20;

  static final int DOCUMENT_POSITION_PRECEDING = 0x02;

  static final int DOCUMENT_TYPE_NODE = 10;

  static final int ELEMENT_NODE = 1;

  static final int ENTITY_NODE = 6;

  static final int ENTITY_REFERENCE_NODE = 5;

  static final int NOTATION_NODE = 12;

  static final int PROCESSING_INSTRUCTION_NODE = 7;

  static final int TEXT_NODE = 3;

  _NamedNodeMapImpl get $dom_attributes() native "return this.attributes;";

  _NodeListImpl get $dom_childNodes() native "return this.childNodes;";

  _NodeImpl get $dom_firstChild() native "return this.firstChild;";

  _NodeImpl get $dom_lastChild() native "return this.lastChild;";

  _NodeImpl get nextNode() native "return this.nextSibling;";

  int get $dom_nodeType() native "return this.nodeType;";

  _DocumentImpl get document() native "return this.ownerDocument;";

  _NodeImpl get parent() native "return this.parentNode;";

  _NodeImpl get previousNode() native "return this.previousSibling;";

  String get text() native "return this.textContent;";

  void set text(String value) native "this.textContent = value;";

  _NodeImpl $dom_appendChild(_NodeImpl newChild) native "appendChild";

  _NodeImpl clone(bool deep) native "cloneNode";

  bool contains(_NodeImpl other) native;

  bool hasChildNodes() native;

  _NodeImpl insertBefore(_NodeImpl newChild, _NodeImpl refChild) native;

  _NodeImpl $dom_removeChild(_NodeImpl oldChild) native "removeChild";

  _NodeImpl $dom_replaceChild(_NodeImpl newChild, _NodeImpl oldChild) native "replaceChild";

}

class _NodeFilterImpl implements NodeFilter native "*NodeFilter" {

  static final int FILTER_ACCEPT = 1;

  static final int FILTER_REJECT = 2;

  static final int FILTER_SKIP = 3;

  static final int SHOW_ALL = 0xFFFFFFFF;

  static final int SHOW_ATTRIBUTE = 0x00000002;

  static final int SHOW_CDATA_SECTION = 0x00000008;

  static final int SHOW_COMMENT = 0x00000080;

  static final int SHOW_DOCUMENT = 0x00000100;

  static final int SHOW_DOCUMENT_FRAGMENT = 0x00000400;

  static final int SHOW_DOCUMENT_TYPE = 0x00000200;

  static final int SHOW_ELEMENT = 0x00000001;

  static final int SHOW_ENTITY = 0x00000020;

  static final int SHOW_ENTITY_REFERENCE = 0x00000010;

  static final int SHOW_NOTATION = 0x00000800;

  static final int SHOW_PROCESSING_INSTRUCTION = 0x00000040;

  static final int SHOW_TEXT = 0x00000004;

  int acceptNode(_NodeImpl n) native;
}

class _NodeIteratorImpl implements NodeIterator native "*NodeIterator" {

  final bool expandEntityReferences;

  final _NodeFilterImpl filter;

  final bool pointerBeforeReferenceNode;

  final _NodeImpl referenceNode;

  final _NodeImpl root;

  final int whatToShow;

  void detach() native;

  _NodeImpl nextNode() native;

  _NodeImpl previousNode() native;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// TODO(nweiz): when all implementations we target have the same name for the
// coreimpl implementation of List<E>, extend that rather than wrapping.
class _ListWrapper<E> implements List<E> {
  List _list;

  _ListWrapper(List this._list);

  Iterator<E> iterator() => _list.iterator();

  void forEach(void f(E element)) => _list.forEach(f);

  Collection map(f(E element)) => _list.map(f);

  List<E> filter(bool f(E element)) => _list.filter(f);

  bool every(bool f(E element)) => _list.every(f);

  bool some(bool f(E element)) => _list.some(f);

  bool isEmpty() => _list.isEmpty();

  int get length() => _list.length;

  E operator [](int index) => _list[index];

  void operator []=(int index, E value) { _list[index] = value; }

  void set length(int newLength) { _list.length = newLength; }

  void add(E value) => _list.add(value);

  void addLast(E value) => _list.addLast(value);

  void addAll(Collection<E> collection) => _list.addAll(collection);

  void sort(int compare(E a, E b)) => _list.sort(compare);

  int indexOf(E element, [int start = 0]) => _list.indexOf(element, start);

  int lastIndexOf(E element, [int start = 0]) =>
    _list.lastIndexOf(element, start);

  void clear() => _list.clear();

  E removeLast() => _list.removeLast();

  E last() => _list.last();

  List<E> getRange(int start, int rangeLength) =>
    _list.getRange(start, rangeLength);

  void setRange(int start, int rangeLength, List<E> from, [int startFrom = 0])
      => _list.setRange(start, rangeLength, from, startFrom);

  void removeRange(int start, int rangeLength) =>
    _list.removeRange(start, rangeLength);

  void insertRange(int start, int rangeLength, [E initialValue = null]) =>
    _list.insertRange(start, rangeLength, initialValue);

  E get first() => _list[0];
}

/**
 * This class is used to insure the results of list operations are NodeLists
 * instead of lists.
 */
class _NodeListWrapper extends _ListWrapper<Node> implements NodeList {
  _NodeListWrapper(List list) : super(list);

  NodeList filter(bool f(Node element)) =>
    new _NodeListWrapper(_list.filter(f));

  NodeList getRange(int start, int rangeLength) =>
    new _NodeListWrapper(_list.getRange(start, rangeLength));
}

class _NodeListImpl implements NodeList native "*NodeList" {
  _NodeImpl _parent;

  // -- start List<Node> mixins.
  // Node is the element type.

  // From Iterable<Node>:

  Iterator<Node> iterator() {
    // Note: NodeLists are not fixed size. And most probably length shouldn't
    // be cached in both iterator _and_ forEach method. For now caching it
    // for consistency.
    return new _FixedSizeListIterator<Node>(this);
  }

  // From Collection<Node>:

  void add(_NodeImpl value) {
    _parent.$dom_appendChild(value);
  }

  void addLast(_NodeImpl value) {
    _parent.$dom_appendChild(value);
  }

  void addAll(Collection<_NodeImpl> collection) {
    for (_NodeImpl node in collection) {
      _parent.$dom_appendChild(node);      
    }
  }

  _NodeImpl removeLast() {
    final result = this.last();
    if (result != null) {
      _parent.$dom_removeChild(result);
    }
    return result;
  }

  void clear() {
    _parent.text = '';
  }

  void operator []=(int index, _NodeImpl value) {
    _parent.$dom_replaceChild(value, this[index]);
  }

  void forEach(void f(Node element)) => _Collections.forEach(this, f);

  Collection map(f(Node element)) => _Collections.map(this, [], f);

  Collection<Node> filter(bool f(Node element)) =>
     new _NodeListWrapper(_Collections.filter(this, <Node>[], f));

  bool every(bool f(Node element)) => _Collections.every(this, f);

  bool some(bool f(Node element)) => _Collections.some(this, f);

  bool isEmpty() => this.length == 0;

  // From List<Node>:

  void sort(int compare(Node a, Node b)) {
    throw new UnsupportedOperationException("Cannot sort immutable List.");
  }

  int indexOf(Node element, [int start = 0]) =>
      _Lists.indexOf(this, element, start, this.length);

  int lastIndexOf(Node element, [int start = 0]) =>
      _Lists.lastIndexOf(this, element, start);

  Node last() => this[length - 1];
  Node get first() => this[0];

  // FIXME: implement thesee.
  void setRange(int start, int rangeLength, List<Node> from, [int startFrom]) {
    throw new UnsupportedOperationException("Cannot setRange on immutable List.");
  }
  void removeRange(int start, int rangeLength) {
    throw new UnsupportedOperationException("Cannot removeRange on immutable List.");
  }
  void insertRange(int start, int rangeLength, [Node initialValue]) {
    throw new UnsupportedOperationException("Cannot insertRange on immutable List.");
  }
  NodeList getRange(int start, int rangeLength) =>
    new _NodeListWrapper(_Lists.getRange(this, start, rangeLength, <Node>[]));

  // -- end List<Node> mixins.


  final int length;

  _NodeImpl operator[](int index) native "return this[index];";

}

class _NodeSelectorImpl implements NodeSelector native "*NodeSelector" {

  _ElementImpl query(String selectors) native "querySelector";

  _NodeListImpl $dom_querySelectorAll(String selectors) native "querySelectorAll";
}

class _NotationImpl extends _NodeImpl implements Notation native "*Notation" {

  final String publicId;

  final String systemId;
}

class _NotificationImpl extends _EventTargetImpl implements Notification native "*Notification" {

  _NotificationEventsImpl get on() =>
    new _NotificationEventsImpl(this);

  String dir;

  String replaceId;

  String tag;

  void cancel() native;

  void close() native;

  void show() native;
}

class _NotificationEventsImpl extends _EventsImpl implements NotificationEvents {
  _NotificationEventsImpl(_ptr) : super(_ptr);

  EventListenerList get click() => _get('click');

  EventListenerList get close() => _get('close');

  EventListenerList get display() => _get('display');

  EventListenerList get error() => _get('error');

  EventListenerList get show() => _get('show');
}

class _NotificationCenterImpl implements NotificationCenter native "*NotificationCenter" {

  int checkPermission() native;

  _NotificationImpl createHTMLNotification(String url) native;

  _NotificationImpl createNotification(String iconUrl, String title, String body) native;

  void requestPermission(VoidCallback callback) native;
}

class _OESStandardDerivativesImpl implements OESStandardDerivatives native "*OESStandardDerivatives" {

  static final int FRAGMENT_SHADER_DERIVATIVE_HINT_OES = 0x8B8B;
}

class _OESTextureFloatImpl implements OESTextureFloat native "*OESTextureFloat" {
}

class _OESVertexArrayObjectImpl implements OESVertexArrayObject native "*OESVertexArrayObject" {

  static final int VERTEX_ARRAY_BINDING_OES = 0x85B5;

  void bindVertexArrayOES(_WebGLVertexArrayObjectOESImpl arrayObject) native;

  _WebGLVertexArrayObjectOESImpl createVertexArrayOES() native;

  void deleteVertexArrayOES(_WebGLVertexArrayObjectOESImpl arrayObject) native;

  bool isVertexArrayOES(_WebGLVertexArrayObjectOESImpl arrayObject) native;
}

class _OListElementImpl extends _ElementImpl implements OListElement native "*HTMLOListElement" {

  bool compact;

  bool reversed;

  int start;

  String type;
}

class _ObjectElementImpl extends _ElementImpl implements ObjectElement native "*HTMLObjectElement" {

  String align;

  String archive;

  String border;

  String code;

  String codeBase;

  String codeType;

  final _DocumentImpl contentDocument;

  String data;

  bool declare;

  final _FormElementImpl form;

  String height;

  int hspace;

  String name;

  String standby;

  String type;

  String useMap;

  final String validationMessage;

  final _ValidityStateImpl validity;

  int vspace;

  String width;

  final bool willValidate;

  bool checkValidity() native;

  void setCustomValidity(String error) native;
}

class _OfflineAudioCompletionEventImpl extends _EventImpl implements OfflineAudioCompletionEvent native "*OfflineAudioCompletionEvent" {

  final _AudioBufferImpl renderedBuffer;
}

class _OperationNotAllowedExceptionImpl implements OperationNotAllowedException native "*OperationNotAllowedException" {

  static final int NOT_ALLOWED_ERR = 1;

  final int code;

  final String message;

  final String name;

  String toString() native;
}

class _OptGroupElementImpl extends _ElementImpl implements OptGroupElement native "*HTMLOptGroupElement" {

  bool disabled;

  String label;
}

class _OptionElementImpl extends _ElementImpl implements OptionElement native "*HTMLOptionElement" {

  bool defaultSelected;

  bool disabled;

  final _FormElementImpl form;

  final int index;

  String label;

  bool selected;

  String value;
}

class _OscillatorImpl extends _AudioSourceNodeImpl implements Oscillator native "*Oscillator" {

  static final int CUSTOM = 4;

  static final int SAWTOOTH = 2;

  static final int SINE = 0;

  static final int SQUARE = 1;

  static final int TRIANGLE = 3;

  final _AudioParamImpl detune;

  final _AudioParamImpl frequency;

  int type;

  void setWaveTable(_WaveTableImpl waveTable) native;
}

class _OutputElementImpl extends _ElementImpl implements OutputElement native "*HTMLOutputElement" {

  String defaultValue;

  final _FormElementImpl form;

  _DOMSettableTokenListImpl htmlFor;

  final _NodeListImpl labels;

  String name;

  final String type;

  final String validationMessage;

  final _ValidityStateImpl validity;

  String value;

  final bool willValidate;

  bool checkValidity() native;

  void setCustomValidity(String error) native;
}

class _OverflowEventImpl extends _EventImpl implements OverflowEvent native "*OverflowEvent" {

  static final int BOTH = 2;

  static final int HORIZONTAL = 0;

  static final int VERTICAL = 1;

  final bool horizontalOverflow;

  final int orient;

  final bool verticalOverflow;
}

class _PageTransitionEventImpl extends _EventImpl implements PageTransitionEvent native "*PageTransitionEvent" {

  final bool persisted;
}

class _ParagraphElementImpl extends _ElementImpl implements ParagraphElement native "*HTMLParagraphElement" {

  String align;
}

class _ParamElementImpl extends _ElementImpl implements ParamElement native "*HTMLParamElement" {

  String name;

  String type;

  String value;

  String valueType;
}

class _PeerConnection00Impl extends _EventTargetImpl implements PeerConnection00 native "*PeerConnection00" {

  _PeerConnection00EventsImpl get on() =>
    new _PeerConnection00EventsImpl(this);

  static final int ACTIVE = 2;

  static final int CLOSED = 3;

  static final int ICE_CHECKING = 0x300;

  static final int ICE_CLOSED = 0x700;

  static final int ICE_COMPLETED = 0x500;

  static final int ICE_CONNECTED = 0x400;

  static final int ICE_FAILED = 0x600;

  static final int ICE_GATHERING = 0x100;

  static final int ICE_WAITING = 0x200;

  static final int NEGOTIATING = 1;

  static final int NEW = 0;

  static final int SDP_ANSWER = 0x300;

  static final int SDP_OFFER = 0x100;

  static final int SDP_PRANSWER = 0x200;

  final int iceState;

  final _SessionDescriptionImpl localDescription;

  final _MediaStreamListImpl localStreams;

  final int readyState;

  final _SessionDescriptionImpl remoteDescription;

  final _MediaStreamListImpl remoteStreams;

  void $dom_addEventListener(String type, EventListener listener, [bool useCapture = null]) native "addEventListener";

  void addStream(_MediaStreamImpl stream, [String mediaStreamHints = null]) native;

  void close() native;

  _SessionDescriptionImpl createAnswer(String offer, [String mediaHints = null]) native;

  _SessionDescriptionImpl createOffer([String mediaHints = null]) native;

  bool $dom_dispatchEvent(_EventImpl event) native "dispatchEvent";

  void processIceMessage(_IceCandidateImpl candidate) native;

  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture = null]) native "removeEventListener";

  void removeStream(_MediaStreamImpl stream) native;

  void setLocalDescription(int action, _SessionDescriptionImpl desc) native;

  void setRemoteDescription(int action, _SessionDescriptionImpl desc) native;

  void startIce([String iceOptions = null]) native;
}

class _PeerConnection00EventsImpl extends _EventsImpl implements PeerConnection00Events {
  _PeerConnection00EventsImpl(_ptr) : super(_ptr);

  EventListenerList get addStream() => _get('addstream');

  EventListenerList get connecting() => _get('connecting');

  EventListenerList get open() => _get('open');

  EventListenerList get removeStream() => _get('removestream');

  EventListenerList get stateChange() => _get('statechange');
}

class _PerformanceImpl implements Performance native "*Performance" {

  final _MemoryInfoImpl memory;

  final _PerformanceNavigationImpl navigation;

  final _PerformanceTimingImpl timing;
}

class _PerformanceNavigationImpl implements PerformanceNavigation native "*PerformanceNavigation" {

  static final int TYPE_BACK_FORWARD = 2;

  static final int TYPE_NAVIGATE = 0;

  static final int TYPE_RELOAD = 1;

  static final int TYPE_RESERVED = 255;

  final int redirectCount;

  final int type;
}

class _PerformanceTimingImpl implements PerformanceTiming native "*PerformanceTiming" {

  final int connectEnd;

  final int connectStart;

  final int domComplete;

  final int domContentLoadedEventEnd;

  final int domContentLoadedEventStart;

  final int domInteractive;

  final int domLoading;

  final int domainLookupEnd;

  final int domainLookupStart;

  final int fetchStart;

  final int loadEventEnd;

  final int loadEventStart;

  final int navigationStart;

  final int redirectEnd;

  final int redirectStart;

  final int requestStart;

  final int responseEnd;

  final int responseStart;

  final int secureConnectionStart;

  final int unloadEventEnd;

  final int unloadEventStart;
}

class _PointImpl implements Point native "*WebKitPoint" {

  num x;

  num y;
}

class _PointerLockImpl implements PointerLock native "*PointerLock" {

  final bool isLocked;

  void lock(_ElementImpl target, [VoidCallback successCallback = null, VoidCallback failureCallback = null]) native;

  void unlock() native;
}

class _PopStateEventImpl extends _EventImpl implements PopStateEvent native "*PopStateEvent" {

  final Object state;
}

class _PositionErrorImpl implements PositionError native "*PositionError" {

  static final int PERMISSION_DENIED = 1;

  static final int POSITION_UNAVAILABLE = 2;

  static final int TIMEOUT = 3;

  final int code;

  final String message;
}

class _PreElementImpl extends _ElementImpl implements PreElement native "*HTMLPreElement" {

  int width;

  bool wrap;
}

class _ProcessingInstructionImpl extends _NodeImpl implements ProcessingInstruction native "*ProcessingInstruction" {

  String data;

  final _StyleSheetImpl sheet;

  final String target;
}

class _ProgressElementImpl extends _ElementImpl implements ProgressElement native "*HTMLProgressElement" {

  final _NodeListImpl labels;

  num max;

  final num position;

  num value;
}

class _ProgressEventImpl extends _EventImpl implements ProgressEvent native "*ProgressEvent" {

  final bool lengthComputable;

  final int loaded;

  final int total;
}

class _QuoteElementImpl extends _ElementImpl implements QuoteElement native "*HTMLQuoteElement" {

  String cite;
}

class _RGBColorImpl implements RGBColor native "*RGBColor" {

  final _CSSPrimitiveValueImpl blue;

  final _CSSPrimitiveValueImpl green;

  final _CSSPrimitiveValueImpl red;
}

class _RangeImpl implements Range native "*Range" {

  static final int END_TO_END = 2;

  static final int END_TO_START = 3;

  static final int NODE_AFTER = 1;

  static final int NODE_BEFORE = 0;

  static final int NODE_BEFORE_AND_AFTER = 2;

  static final int NODE_INSIDE = 3;

  static final int START_TO_END = 1;

  static final int START_TO_START = 0;

  final bool collapsed;

  final _NodeImpl commonAncestorContainer;

  final _NodeImpl endContainer;

  final int endOffset;

  final _NodeImpl startContainer;

  final int startOffset;

  _DocumentFragmentImpl cloneContents() native;

  _RangeImpl cloneRange() native;

  void collapse(bool toStart) native;

  int compareNode(_NodeImpl refNode) native;

  int comparePoint(_NodeImpl refNode, int offset) native;

  _DocumentFragmentImpl createContextualFragment(String html) native;

  void deleteContents() native;

  void detach() native;

  void expand(String unit) native;

  _DocumentFragmentImpl extractContents() native;

  _ClientRectImpl getBoundingClientRect() native;

  _ClientRectListImpl getClientRects() native;

  void insertNode(_NodeImpl newNode) native;

  bool intersectsNode(_NodeImpl refNode) native;

  bool isPointInRange(_NodeImpl refNode, int offset) native;

  void selectNode(_NodeImpl refNode) native;

  void selectNodeContents(_NodeImpl refNode) native;

  void setEnd(_NodeImpl refNode, int offset) native;

  void setEndAfter(_NodeImpl refNode) native;

  void setEndBefore(_NodeImpl refNode) native;

  void setStart(_NodeImpl refNode, int offset) native;

  void setStartAfter(_NodeImpl refNode) native;

  void setStartBefore(_NodeImpl refNode) native;

  void surroundContents(_NodeImpl newParent) native;

  String toString() native;
}

class _RangeExceptionImpl implements RangeException native "*RangeException" {

  static final int BAD_BOUNDARYPOINTS_ERR = 1;

  static final int INVALID_NODE_TYPE_ERR = 2;

  final int code;

  final String message;

  final String name;

  String toString() native;
}

class _RealtimeAnalyserNodeImpl extends _AudioNodeImpl implements RealtimeAnalyserNode native "*RealtimeAnalyserNode" {

  int fftSize;

  final int frequencyBinCount;

  num maxDecibels;

  num minDecibels;

  num smoothingTimeConstant;

  void getByteFrequencyData(_Uint8ArrayImpl array) native;

  void getByteTimeDomainData(_Uint8ArrayImpl array) native;

  void getFloatFrequencyData(_Float32ArrayImpl array) native;
}

class _RectImpl implements Rect native "*Rect" {

  final _CSSPrimitiveValueImpl bottom;

  final _CSSPrimitiveValueImpl left;

  final _CSSPrimitiveValueImpl right;

  final _CSSPrimitiveValueImpl top;
}

class _SQLErrorImpl implements SQLError native "*SQLError" {

  static final int CONSTRAINT_ERR = 6;

  static final int DATABASE_ERR = 1;

  static final int QUOTA_ERR = 4;

  static final int SYNTAX_ERR = 5;

  static final int TIMEOUT_ERR = 7;

  static final int TOO_LARGE_ERR = 3;

  static final int UNKNOWN_ERR = 0;

  static final int VERSION_ERR = 2;

  final int code;

  final String message;
}

class _SQLExceptionImpl implements SQLException native "*SQLException" {

  static final int CONSTRAINT_ERR = 6;

  static final int DATABASE_ERR = 1;

  static final int QUOTA_ERR = 4;

  static final int SYNTAX_ERR = 5;

  static final int TIMEOUT_ERR = 7;

  static final int TOO_LARGE_ERR = 3;

  static final int UNKNOWN_ERR = 0;

  static final int VERSION_ERR = 2;

  final int code;

  final String message;
}

class _SQLResultSetImpl implements SQLResultSet native "*SQLResultSet" {

  final int insertId;

  final _SQLResultSetRowListImpl rows;

  final int rowsAffected;
}

class _SQLResultSetRowListImpl implements SQLResultSetRowList native "*SQLResultSetRowList" {

  final int length;

  Object item(int index) native;
}

class _SQLTransactionImpl implements SQLTransaction native "*SQLTransaction" {
}

class _SQLTransactionSyncImpl implements SQLTransactionSync native "*SQLTransactionSync" {
}

class _SVGAElementImpl extends _SVGElementImpl implements SVGAElement native "*SVGAElement" {

  final _SVGAnimatedStringImpl target;

  // From SVGURIReference

  final _SVGAnimatedStringImpl href;

  // From SVGTests

  final _SVGStringListImpl requiredExtensions;

  final _SVGStringListImpl requiredFeatures;

  final _SVGStringListImpl systemLanguage;

  bool hasExtension(String extension) native;

  // From SVGLangSpace

  String xmllang;

  String xmlspace;

  // From SVGExternalResourcesRequired

  final _SVGAnimatedBooleanImpl externalResourcesRequired;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;

  // From SVGTransformable

  final _SVGAnimatedTransformListImpl transform;

  // From SVGLocatable

  final _SVGElementImpl farthestViewportElement;

  final _SVGElementImpl nearestViewportElement;

  _SVGRectImpl getBBox() native;

  _SVGMatrixImpl getCTM() native;

  _SVGMatrixImpl getScreenCTM() native;

  _SVGMatrixImpl getTransformToElement(_SVGElementImpl element) native;
}

class _SVGAltGlyphDefElementImpl extends _SVGElementImpl implements SVGAltGlyphDefElement native "*SVGAltGlyphDefElement" {
}

class _SVGAltGlyphElementImpl extends _SVGTextPositioningElementImpl implements SVGAltGlyphElement native "*SVGAltGlyphElement" {

  String format;

  String glyphRef;

  // From SVGURIReference

  final _SVGAnimatedStringImpl href;
}

class _SVGAltGlyphItemElementImpl extends _SVGElementImpl implements SVGAltGlyphItemElement native "*SVGAltGlyphItemElement" {
}

class _SVGAngleImpl implements SVGAngle native "*SVGAngle" {

  static final int SVG_ANGLETYPE_DEG = 2;

  static final int SVG_ANGLETYPE_GRAD = 4;

  static final int SVG_ANGLETYPE_RAD = 3;

  static final int SVG_ANGLETYPE_UNKNOWN = 0;

  static final int SVG_ANGLETYPE_UNSPECIFIED = 1;

  final int unitType;

  num value;

  String valueAsString;

  num valueInSpecifiedUnits;

  void convertToSpecifiedUnits(int unitType) native;

  void newValueSpecifiedUnits(int unitType, num valueInSpecifiedUnits) native;
}

class _SVGAnimateColorElementImpl extends _SVGAnimationElementImpl implements SVGAnimateColorElement native "*SVGAnimateColorElement" {
}

class _SVGAnimateElementImpl extends _SVGAnimationElementImpl implements SVGAnimateElement native "*SVGAnimateElement" {
}

class _SVGAnimateMotionElementImpl extends _SVGAnimationElementImpl implements SVGAnimateMotionElement native "*SVGAnimateMotionElement" {
}

class _SVGAnimateTransformElementImpl extends _SVGAnimationElementImpl implements SVGAnimateTransformElement native "*SVGAnimateTransformElement" {
}

class _SVGAnimatedAngleImpl implements SVGAnimatedAngle native "*SVGAnimatedAngle" {

  final _SVGAngleImpl animVal;

  final _SVGAngleImpl baseVal;
}

class _SVGAnimatedBooleanImpl implements SVGAnimatedBoolean native "*SVGAnimatedBoolean" {

  final bool animVal;

  bool baseVal;
}

class _SVGAnimatedEnumerationImpl implements SVGAnimatedEnumeration native "*SVGAnimatedEnumeration" {

  final int animVal;

  int baseVal;
}

class _SVGAnimatedIntegerImpl implements SVGAnimatedInteger native "*SVGAnimatedInteger" {

  final int animVal;

  int baseVal;
}

class _SVGAnimatedLengthImpl implements SVGAnimatedLength native "*SVGAnimatedLength" {

  final _SVGLengthImpl animVal;

  final _SVGLengthImpl baseVal;
}

class _SVGAnimatedLengthListImpl implements SVGAnimatedLengthList native "*SVGAnimatedLengthList" {

  final _SVGLengthListImpl animVal;

  final _SVGLengthListImpl baseVal;
}

class _SVGAnimatedNumberImpl implements SVGAnimatedNumber native "*SVGAnimatedNumber" {

  final num animVal;

  num baseVal;
}

class _SVGAnimatedNumberListImpl implements SVGAnimatedNumberList native "*SVGAnimatedNumberList" {

  final _SVGNumberListImpl animVal;

  final _SVGNumberListImpl baseVal;
}

class _SVGAnimatedPreserveAspectRatioImpl implements SVGAnimatedPreserveAspectRatio native "*SVGAnimatedPreserveAspectRatio" {

  final _SVGPreserveAspectRatioImpl animVal;

  final _SVGPreserveAspectRatioImpl baseVal;
}

class _SVGAnimatedRectImpl implements SVGAnimatedRect native "*SVGAnimatedRect" {

  final _SVGRectImpl animVal;

  final _SVGRectImpl baseVal;
}

class _SVGAnimatedStringImpl implements SVGAnimatedString native "*SVGAnimatedString" {

  final String animVal;

  String baseVal;
}

class _SVGAnimatedTransformListImpl implements SVGAnimatedTransformList native "*SVGAnimatedTransformList" {

  final _SVGTransformListImpl animVal;

  final _SVGTransformListImpl baseVal;
}

class _SVGAnimationElementImpl extends _SVGElementImpl implements SVGAnimationElement native "*SVGAnimationElement" {

  final _SVGElementImpl targetElement;

  num getCurrentTime() native;

  num getSimpleDuration() native;

  num getStartTime() native;

  // From SVGTests

  final _SVGStringListImpl requiredExtensions;

  final _SVGStringListImpl requiredFeatures;

  final _SVGStringListImpl systemLanguage;

  bool hasExtension(String extension) native;

  // From SVGExternalResourcesRequired

  final _SVGAnimatedBooleanImpl externalResourcesRequired;

  // From ElementTimeControl

  void beginElement() native;

  void beginElementAt(num offset) native;

  void endElement() native;

  void endElementAt(num offset) native;
}

class _SVGCircleElementImpl extends _SVGElementImpl implements SVGCircleElement native "*SVGCircleElement" {

  final _SVGAnimatedLengthImpl cx;

  final _SVGAnimatedLengthImpl cy;

  final _SVGAnimatedLengthImpl r;

  // From SVGTests

  final _SVGStringListImpl requiredExtensions;

  final _SVGStringListImpl requiredFeatures;

  final _SVGStringListImpl systemLanguage;

  bool hasExtension(String extension) native;

  // From SVGLangSpace

  String xmllang;

  String xmlspace;

  // From SVGExternalResourcesRequired

  final _SVGAnimatedBooleanImpl externalResourcesRequired;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;

  // From SVGTransformable

  final _SVGAnimatedTransformListImpl transform;

  // From SVGLocatable

  final _SVGElementImpl farthestViewportElement;

  final _SVGElementImpl nearestViewportElement;

  _SVGRectImpl getBBox() native;

  _SVGMatrixImpl getCTM() native;

  _SVGMatrixImpl getScreenCTM() native;

  _SVGMatrixImpl getTransformToElement(_SVGElementImpl element) native;
}

class _SVGClipPathElementImpl extends _SVGElementImpl implements SVGClipPathElement native "*SVGClipPathElement" {

  final _SVGAnimatedEnumerationImpl clipPathUnits;

  // From SVGTests

  final _SVGStringListImpl requiredExtensions;

  final _SVGStringListImpl requiredFeatures;

  final _SVGStringListImpl systemLanguage;

  bool hasExtension(String extension) native;

  // From SVGLangSpace

  String xmllang;

  String xmlspace;

  // From SVGExternalResourcesRequired

  final _SVGAnimatedBooleanImpl externalResourcesRequired;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;

  // From SVGTransformable

  final _SVGAnimatedTransformListImpl transform;

  // From SVGLocatable

  final _SVGElementImpl farthestViewportElement;

  final _SVGElementImpl nearestViewportElement;

  _SVGRectImpl getBBox() native;

  _SVGMatrixImpl getCTM() native;

  _SVGMatrixImpl getScreenCTM() native;

  _SVGMatrixImpl getTransformToElement(_SVGElementImpl element) native;
}

class _SVGColorImpl extends _CSSValueImpl implements SVGColor native "*SVGColor" {

  static final int SVG_COLORTYPE_CURRENTCOLOR = 3;

  static final int SVG_COLORTYPE_RGBCOLOR = 1;

  static final int SVG_COLORTYPE_RGBCOLOR_ICCCOLOR = 2;

  static final int SVG_COLORTYPE_UNKNOWN = 0;

  final int colorType;

  final _RGBColorImpl rgbColor;

  void setColor(int colorType, String rgbColor, String iccColor) native;

  void setRGBColor(String rgbColor) native;

  void setRGBColorICCColor(String rgbColor, String iccColor) native;
}

class _SVGComponentTransferFunctionElementImpl extends _SVGElementImpl implements SVGComponentTransferFunctionElement native "*SVGComponentTransferFunctionElement" {

  static final int SVG_FECOMPONENTTRANSFER_TYPE_DISCRETE = 3;

  static final int SVG_FECOMPONENTTRANSFER_TYPE_GAMMA = 5;

  static final int SVG_FECOMPONENTTRANSFER_TYPE_IDENTITY = 1;

  static final int SVG_FECOMPONENTTRANSFER_TYPE_LINEAR = 4;

  static final int SVG_FECOMPONENTTRANSFER_TYPE_TABLE = 2;

  static final int SVG_FECOMPONENTTRANSFER_TYPE_UNKNOWN = 0;

  final _SVGAnimatedNumberImpl amplitude;

  final _SVGAnimatedNumberImpl exponent;

  final _SVGAnimatedNumberImpl intercept;

  final _SVGAnimatedNumberImpl offset;

  final _SVGAnimatedNumberImpl slope;

  final _SVGAnimatedNumberListImpl tableValues;

  final _SVGAnimatedEnumerationImpl type;
}

class _SVGCursorElementImpl extends _SVGElementImpl implements SVGCursorElement native "*SVGCursorElement" {

  final _SVGAnimatedLengthImpl x;

  final _SVGAnimatedLengthImpl y;

  // From SVGURIReference

  final _SVGAnimatedStringImpl href;

  // From SVGTests

  final _SVGStringListImpl requiredExtensions;

  final _SVGStringListImpl requiredFeatures;

  final _SVGStringListImpl systemLanguage;

  bool hasExtension(String extension) native;

  // From SVGExternalResourcesRequired

  final _SVGAnimatedBooleanImpl externalResourcesRequired;
}

class _SVGDefsElementImpl extends _SVGElementImpl implements SVGDefsElement native "*SVGDefsElement" {

  // From SVGTests

  final _SVGStringListImpl requiredExtensions;

  final _SVGStringListImpl requiredFeatures;

  final _SVGStringListImpl systemLanguage;

  bool hasExtension(String extension) native;

  // From SVGLangSpace

  String xmllang;

  String xmlspace;

  // From SVGExternalResourcesRequired

  final _SVGAnimatedBooleanImpl externalResourcesRequired;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;

  // From SVGTransformable

  final _SVGAnimatedTransformListImpl transform;

  // From SVGLocatable

  final _SVGElementImpl farthestViewportElement;

  final _SVGElementImpl nearestViewportElement;

  _SVGRectImpl getBBox() native;

  _SVGMatrixImpl getCTM() native;

  _SVGMatrixImpl getScreenCTM() native;

  _SVGMatrixImpl getTransformToElement(_SVGElementImpl element) native;
}

class _SVGDescElementImpl extends _SVGElementImpl implements SVGDescElement native "*SVGDescElement" {

  // From SVGLangSpace

  String xmllang;

  String xmlspace;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;
}

class _SVGDocumentImpl extends _DocumentImpl implements SVGDocument native "*SVGDocument" {

  final _SVGSVGElementImpl rootElement;

  _EventImpl $dom_createEvent(String eventType) native "createEvent";
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _AttributeClassSet extends _CssClassSet {
  _AttributeClassSet(element) : super(element);

  String $dom_className() => _element.attributes['class'];

  void _write(Set s) {
    _element.attributes['class'] = _formatSet(s);
  }
}

class _SVGElementImpl extends _ElementImpl implements SVGElement native "*SVGElement" {
  Set<String> get classes() {
    if (_cssClassSet === null) {
      _cssClassSet = new _AttributeClassSet(_ptr);
    }
    return _cssClassSet;
  }

  ElementList get elements() => new FilteredElementList(this);

  void set elements(Collection<Element> value) {
    final elements = this.elements;
    elements.clear();
    elements.addAll(value);
  }

  String get outerHTML() {
    final container = new Element.tag("div");
    final SVGElement cloned = this.clone(true);
    container.elements.add(cloned);
    return container.innerHTML;
  }

  String get innerHTML() {
    final container = new Element.tag("div");
    final SVGElement cloned = this.clone(true);
    container.elements.addAll(cloned.elements);
    return container.innerHTML;
  }

  void set innerHTML(String svg) {
    final container = new Element.tag("div");
    // Wrap the SVG string in <svg> so that SVGElements are created, rather than
    // HTMLElements.
    container.innerHTML = '<svg version="1.1">$svg</svg>';
    this.elements = container.elements.first.elements;
  }


  // Shadowing definition.
  String get id() native "return this.id;";

  void set id(String value) native "this.id = value;";

  final _SVGSVGElementImpl ownerSVGElement;

  final _SVGElementImpl viewportElement;

  String xmlbase;

}

class _SVGElementInstanceImpl implements SVGElementInstance native "*SVGElementInstance" {

  _SVGElementInstanceEventsImpl get on() =>
    new _SVGElementInstanceEventsImpl(this);

  final _SVGElementInstanceListImpl childNodes;

  final _SVGElementImpl correspondingElement;

  final _SVGUseElementImpl correspondingUseElement;

  final _SVGElementInstanceImpl firstChild;

  final _SVGElementInstanceImpl lastChild;

  final _SVGElementInstanceImpl nextSibling;

  final _SVGElementInstanceImpl parentNode;

  final _SVGElementInstanceImpl previousSibling;

  void addEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  bool dispatchEvent(_EventImpl event) native;

  void removeEventListener(String type, EventListener listener, [bool useCapture = null]) native;
}

class _SVGElementInstanceEventsImpl extends _EventsImpl implements SVGElementInstanceEvents {
  _SVGElementInstanceEventsImpl(_ptr) : super(_ptr);

  EventListenerList get abort() => _get('abort');

  EventListenerList get beforeCopy() => _get('beforecopy');

  EventListenerList get beforeCut() => _get('beforecut');

  EventListenerList get beforePaste() => _get('beforepaste');

  EventListenerList get blur() => _get('blur');

  EventListenerList get change() => _get('change');

  EventListenerList get click() => _get('click');

  EventListenerList get contextMenu() => _get('contextmenu');

  EventListenerList get copy() => _get('copy');

  EventListenerList get cut() => _get('cut');

  EventListenerList get doubleClick() => _get('dblclick');

  EventListenerList get drag() => _get('drag');

  EventListenerList get dragEnd() => _get('dragend');

  EventListenerList get dragEnter() => _get('dragenter');

  EventListenerList get dragLeave() => _get('dragleave');

  EventListenerList get dragOver() => _get('dragover');

  EventListenerList get dragStart() => _get('dragstart');

  EventListenerList get drop() => _get('drop');

  EventListenerList get error() => _get('error');

  EventListenerList get focus() => _get('focus');

  EventListenerList get input() => _get('input');

  EventListenerList get keyDown() => _get('keydown');

  EventListenerList get keyPress() => _get('keypress');

  EventListenerList get keyUp() => _get('keyup');

  EventListenerList get load() => _get('load');

  EventListenerList get mouseDown() => _get('mousedown');

  EventListenerList get mouseMove() => _get('mousemove');

  EventListenerList get mouseOut() => _get('mouseout');

  EventListenerList get mouseOver() => _get('mouseover');

  EventListenerList get mouseUp() => _get('mouseup');

  EventListenerList get mouseWheel() => _get('mousewheel');

  EventListenerList get paste() => _get('paste');

  EventListenerList get reset() => _get('reset');

  EventListenerList get resize() => _get('resize');

  EventListenerList get scroll() => _get('scroll');

  EventListenerList get search() => _get('search');

  EventListenerList get select() => _get('select');

  EventListenerList get selectStart() => _get('selectstart');

  EventListenerList get submit() => _get('submit');

  EventListenerList get unload() => _get('unload');
}

class _SVGElementInstanceListImpl implements SVGElementInstanceList native "*SVGElementInstanceList" {

  final int length;

  _SVGElementInstanceImpl item(int index) native;
}

class _SVGEllipseElementImpl extends _SVGElementImpl implements SVGEllipseElement native "*SVGEllipseElement" {

  final _SVGAnimatedLengthImpl cx;

  final _SVGAnimatedLengthImpl cy;

  final _SVGAnimatedLengthImpl rx;

  final _SVGAnimatedLengthImpl ry;

  // From SVGTests

  final _SVGStringListImpl requiredExtensions;

  final _SVGStringListImpl requiredFeatures;

  final _SVGStringListImpl systemLanguage;

  bool hasExtension(String extension) native;

  // From SVGLangSpace

  String xmllang;

  String xmlspace;

  // From SVGExternalResourcesRequired

  final _SVGAnimatedBooleanImpl externalResourcesRequired;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;

  // From SVGTransformable

  final _SVGAnimatedTransformListImpl transform;

  // From SVGLocatable

  final _SVGElementImpl farthestViewportElement;

  final _SVGElementImpl nearestViewportElement;

  _SVGRectImpl getBBox() native;

  _SVGMatrixImpl getCTM() native;

  _SVGMatrixImpl getScreenCTM() native;

  _SVGMatrixImpl getTransformToElement(_SVGElementImpl element) native;
}

class _SVGExceptionImpl implements SVGException native "*SVGException" {

  static final int SVG_INVALID_VALUE_ERR = 1;

  static final int SVG_MATRIX_NOT_INVERTABLE = 2;

  static final int SVG_WRONG_TYPE_ERR = 0;

  final int code;

  final String message;

  final String name;

  String toString() native;
}

class _SVGExternalResourcesRequiredImpl implements SVGExternalResourcesRequired native "*SVGExternalResourcesRequired" {

  final _SVGAnimatedBooleanImpl externalResourcesRequired;
}

class _SVGFEBlendElementImpl extends _SVGElementImpl implements SVGFEBlendElement native "*SVGFEBlendElement" {

  static final int SVG_FEBLEND_MODE_DARKEN = 4;

  static final int SVG_FEBLEND_MODE_LIGHTEN = 5;

  static final int SVG_FEBLEND_MODE_MULTIPLY = 2;

  static final int SVG_FEBLEND_MODE_NORMAL = 1;

  static final int SVG_FEBLEND_MODE_SCREEN = 3;

  static final int SVG_FEBLEND_MODE_UNKNOWN = 0;

  final _SVGAnimatedStringImpl in1;

  final _SVGAnimatedStringImpl in2;

  final _SVGAnimatedEnumerationImpl mode;

  // From SVGFilterPrimitiveStandardAttributes

  final _SVGAnimatedLengthImpl height;

  final _SVGAnimatedStringImpl result;

  final _SVGAnimatedLengthImpl width;

  final _SVGAnimatedLengthImpl x;

  final _SVGAnimatedLengthImpl y;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;
}

class _SVGFEColorMatrixElementImpl extends _SVGElementImpl implements SVGFEColorMatrixElement native "*SVGFEColorMatrixElement" {

  static final int SVG_FECOLORMATRIX_TYPE_HUEROTATE = 3;

  static final int SVG_FECOLORMATRIX_TYPE_LUMINANCETOALPHA = 4;

  static final int SVG_FECOLORMATRIX_TYPE_MATRIX = 1;

  static final int SVG_FECOLORMATRIX_TYPE_SATURATE = 2;

  static final int SVG_FECOLORMATRIX_TYPE_UNKNOWN = 0;

  final _SVGAnimatedStringImpl in1;

  final _SVGAnimatedEnumerationImpl type;

  final _SVGAnimatedNumberListImpl values;

  // From SVGFilterPrimitiveStandardAttributes

  final _SVGAnimatedLengthImpl height;

  final _SVGAnimatedStringImpl result;

  final _SVGAnimatedLengthImpl width;

  final _SVGAnimatedLengthImpl x;

  final _SVGAnimatedLengthImpl y;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;
}

class _SVGFEComponentTransferElementImpl extends _SVGElementImpl implements SVGFEComponentTransferElement native "*SVGFEComponentTransferElement" {

  final _SVGAnimatedStringImpl in1;

  // From SVGFilterPrimitiveStandardAttributes

  final _SVGAnimatedLengthImpl height;

  final _SVGAnimatedStringImpl result;

  final _SVGAnimatedLengthImpl width;

  final _SVGAnimatedLengthImpl x;

  final _SVGAnimatedLengthImpl y;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;
}

class _SVGFECompositeElementImpl extends _SVGElementImpl implements SVGFECompositeElement native "*SVGFECompositeElement" {

  static final int SVG_FECOMPOSITE_OPERATOR_ARITHMETIC = 6;

  static final int SVG_FECOMPOSITE_OPERATOR_ATOP = 4;

  static final int SVG_FECOMPOSITE_OPERATOR_IN = 2;

  static final int SVG_FECOMPOSITE_OPERATOR_OUT = 3;

  static final int SVG_FECOMPOSITE_OPERATOR_OVER = 1;

  static final int SVG_FECOMPOSITE_OPERATOR_UNKNOWN = 0;

  static final int SVG_FECOMPOSITE_OPERATOR_XOR = 5;

  final _SVGAnimatedStringImpl in1;

  final _SVGAnimatedStringImpl in2;

  final _SVGAnimatedNumberImpl k1;

  final _SVGAnimatedNumberImpl k2;

  final _SVGAnimatedNumberImpl k3;

  final _SVGAnimatedNumberImpl k4;

  final _SVGAnimatedEnumerationImpl operator;

  // From SVGFilterPrimitiveStandardAttributes

  final _SVGAnimatedLengthImpl height;

  final _SVGAnimatedStringImpl result;

  final _SVGAnimatedLengthImpl width;

  final _SVGAnimatedLengthImpl x;

  final _SVGAnimatedLengthImpl y;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;
}

class _SVGFEConvolveMatrixElementImpl extends _SVGElementImpl implements SVGFEConvolveMatrixElement native "*SVGFEConvolveMatrixElement" {

  static final int SVG_EDGEMODE_DUPLICATE = 1;

  static final int SVG_EDGEMODE_NONE = 3;

  static final int SVG_EDGEMODE_UNKNOWN = 0;

  static final int SVG_EDGEMODE_WRAP = 2;

  final _SVGAnimatedNumberImpl bias;

  final _SVGAnimatedNumberImpl divisor;

  final _SVGAnimatedEnumerationImpl edgeMode;

  final _SVGAnimatedStringImpl in1;

  final _SVGAnimatedNumberListImpl kernelMatrix;

  final _SVGAnimatedNumberImpl kernelUnitLengthX;

  final _SVGAnimatedNumberImpl kernelUnitLengthY;

  final _SVGAnimatedIntegerImpl orderX;

  final _SVGAnimatedIntegerImpl orderY;

  final _SVGAnimatedBooleanImpl preserveAlpha;

  final _SVGAnimatedIntegerImpl targetX;

  final _SVGAnimatedIntegerImpl targetY;

  // From SVGFilterPrimitiveStandardAttributes

  final _SVGAnimatedLengthImpl height;

  final _SVGAnimatedStringImpl result;

  final _SVGAnimatedLengthImpl width;

  final _SVGAnimatedLengthImpl x;

  final _SVGAnimatedLengthImpl y;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;
}

class _SVGFEDiffuseLightingElementImpl extends _SVGElementImpl implements SVGFEDiffuseLightingElement native "*SVGFEDiffuseLightingElement" {

  final _SVGAnimatedNumberImpl diffuseConstant;

  final _SVGAnimatedStringImpl in1;

  final _SVGAnimatedNumberImpl kernelUnitLengthX;

  final _SVGAnimatedNumberImpl kernelUnitLengthY;

  final _SVGAnimatedNumberImpl surfaceScale;

  // From SVGFilterPrimitiveStandardAttributes

  final _SVGAnimatedLengthImpl height;

  final _SVGAnimatedStringImpl result;

  final _SVGAnimatedLengthImpl width;

  final _SVGAnimatedLengthImpl x;

  final _SVGAnimatedLengthImpl y;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;
}

class _SVGFEDisplacementMapElementImpl extends _SVGElementImpl implements SVGFEDisplacementMapElement native "*SVGFEDisplacementMapElement" {

  static final int SVG_CHANNEL_A = 4;

  static final int SVG_CHANNEL_B = 3;

  static final int SVG_CHANNEL_G = 2;

  static final int SVG_CHANNEL_R = 1;

  static final int SVG_CHANNEL_UNKNOWN = 0;

  final _SVGAnimatedStringImpl in1;

  final _SVGAnimatedStringImpl in2;

  final _SVGAnimatedNumberImpl scale;

  final _SVGAnimatedEnumerationImpl xChannelSelector;

  final _SVGAnimatedEnumerationImpl yChannelSelector;

  // From SVGFilterPrimitiveStandardAttributes

  final _SVGAnimatedLengthImpl height;

  final _SVGAnimatedStringImpl result;

  final _SVGAnimatedLengthImpl width;

  final _SVGAnimatedLengthImpl x;

  final _SVGAnimatedLengthImpl y;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;
}

class _SVGFEDistantLightElementImpl extends _SVGElementImpl implements SVGFEDistantLightElement native "*SVGFEDistantLightElement" {

  final _SVGAnimatedNumberImpl azimuth;

  final _SVGAnimatedNumberImpl elevation;
}

class _SVGFEDropShadowElementImpl extends _SVGElementImpl implements SVGFEDropShadowElement native "*SVGFEDropShadowElement" {

  final _SVGAnimatedNumberImpl dx;

  final _SVGAnimatedNumberImpl dy;

  final _SVGAnimatedStringImpl in1;

  final _SVGAnimatedNumberImpl stdDeviationX;

  final _SVGAnimatedNumberImpl stdDeviationY;

  void setStdDeviation(num stdDeviationX, num stdDeviationY) native;

  // From SVGFilterPrimitiveStandardAttributes

  final _SVGAnimatedLengthImpl height;

  final _SVGAnimatedStringImpl result;

  final _SVGAnimatedLengthImpl width;

  final _SVGAnimatedLengthImpl x;

  final _SVGAnimatedLengthImpl y;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;
}

class _SVGFEFloodElementImpl extends _SVGElementImpl implements SVGFEFloodElement native "*SVGFEFloodElement" {

  // From SVGFilterPrimitiveStandardAttributes

  final _SVGAnimatedLengthImpl height;

  final _SVGAnimatedStringImpl result;

  final _SVGAnimatedLengthImpl width;

  final _SVGAnimatedLengthImpl x;

  final _SVGAnimatedLengthImpl y;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;
}

class _SVGFEFuncAElementImpl extends _SVGComponentTransferFunctionElementImpl implements SVGFEFuncAElement native "*SVGFEFuncAElement" {
}

class _SVGFEFuncBElementImpl extends _SVGComponentTransferFunctionElementImpl implements SVGFEFuncBElement native "*SVGFEFuncBElement" {
}

class _SVGFEFuncGElementImpl extends _SVGComponentTransferFunctionElementImpl implements SVGFEFuncGElement native "*SVGFEFuncGElement" {
}

class _SVGFEFuncRElementImpl extends _SVGComponentTransferFunctionElementImpl implements SVGFEFuncRElement native "*SVGFEFuncRElement" {
}

class _SVGFEGaussianBlurElementImpl extends _SVGElementImpl implements SVGFEGaussianBlurElement native "*SVGFEGaussianBlurElement" {

  final _SVGAnimatedStringImpl in1;

  final _SVGAnimatedNumberImpl stdDeviationX;

  final _SVGAnimatedNumberImpl stdDeviationY;

  void setStdDeviation(num stdDeviationX, num stdDeviationY) native;

  // From SVGFilterPrimitiveStandardAttributes

  final _SVGAnimatedLengthImpl height;

  final _SVGAnimatedStringImpl result;

  final _SVGAnimatedLengthImpl width;

  final _SVGAnimatedLengthImpl x;

  final _SVGAnimatedLengthImpl y;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;
}

class _SVGFEImageElementImpl extends _SVGElementImpl implements SVGFEImageElement native "*SVGFEImageElement" {

  final _SVGAnimatedPreserveAspectRatioImpl preserveAspectRatio;

  // From SVGURIReference

  final _SVGAnimatedStringImpl href;

  // From SVGLangSpace

  String xmllang;

  String xmlspace;

  // From SVGExternalResourcesRequired

  final _SVGAnimatedBooleanImpl externalResourcesRequired;

  // From SVGFilterPrimitiveStandardAttributes

  final _SVGAnimatedLengthImpl height;

  final _SVGAnimatedStringImpl result;

  final _SVGAnimatedLengthImpl width;

  final _SVGAnimatedLengthImpl x;

  final _SVGAnimatedLengthImpl y;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;
}

class _SVGFEMergeElementImpl extends _SVGElementImpl implements SVGFEMergeElement native "*SVGFEMergeElement" {

  // From SVGFilterPrimitiveStandardAttributes

  final _SVGAnimatedLengthImpl height;

  final _SVGAnimatedStringImpl result;

  final _SVGAnimatedLengthImpl width;

  final _SVGAnimatedLengthImpl x;

  final _SVGAnimatedLengthImpl y;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;
}

class _SVGFEMergeNodeElementImpl extends _SVGElementImpl implements SVGFEMergeNodeElement native "*SVGFEMergeNodeElement" {

  final _SVGAnimatedStringImpl in1;
}

class _SVGFEMorphologyElementImpl extends _SVGElementImpl implements SVGFEMorphologyElement native "*SVGFEMorphologyElement" {

  static final int SVG_MORPHOLOGY_OPERATOR_DILATE = 2;

  static final int SVG_MORPHOLOGY_OPERATOR_ERODE = 1;

  static final int SVG_MORPHOLOGY_OPERATOR_UNKNOWN = 0;

  final _SVGAnimatedStringImpl in1;

  final _SVGAnimatedEnumerationImpl operator;

  final _SVGAnimatedNumberImpl radiusX;

  final _SVGAnimatedNumberImpl radiusY;

  void setRadius(num radiusX, num radiusY) native;

  // From SVGFilterPrimitiveStandardAttributes

  final _SVGAnimatedLengthImpl height;

  final _SVGAnimatedStringImpl result;

  final _SVGAnimatedLengthImpl width;

  final _SVGAnimatedLengthImpl x;

  final _SVGAnimatedLengthImpl y;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;
}

class _SVGFEOffsetElementImpl extends _SVGElementImpl implements SVGFEOffsetElement native "*SVGFEOffsetElement" {

  final _SVGAnimatedNumberImpl dx;

  final _SVGAnimatedNumberImpl dy;

  final _SVGAnimatedStringImpl in1;

  // From SVGFilterPrimitiveStandardAttributes

  final _SVGAnimatedLengthImpl height;

  final _SVGAnimatedStringImpl result;

  final _SVGAnimatedLengthImpl width;

  final _SVGAnimatedLengthImpl x;

  final _SVGAnimatedLengthImpl y;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;
}

class _SVGFEPointLightElementImpl extends _SVGElementImpl implements SVGFEPointLightElement native "*SVGFEPointLightElement" {

  final _SVGAnimatedNumberImpl x;

  final _SVGAnimatedNumberImpl y;

  final _SVGAnimatedNumberImpl z;
}

class _SVGFESpecularLightingElementImpl extends _SVGElementImpl implements SVGFESpecularLightingElement native "*SVGFESpecularLightingElement" {

  final _SVGAnimatedStringImpl in1;

  final _SVGAnimatedNumberImpl specularConstant;

  final _SVGAnimatedNumberImpl specularExponent;

  final _SVGAnimatedNumberImpl surfaceScale;

  // From SVGFilterPrimitiveStandardAttributes

  final _SVGAnimatedLengthImpl height;

  final _SVGAnimatedStringImpl result;

  final _SVGAnimatedLengthImpl width;

  final _SVGAnimatedLengthImpl x;

  final _SVGAnimatedLengthImpl y;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;
}

class _SVGFESpotLightElementImpl extends _SVGElementImpl implements SVGFESpotLightElement native "*SVGFESpotLightElement" {

  final _SVGAnimatedNumberImpl limitingConeAngle;

  final _SVGAnimatedNumberImpl pointsAtX;

  final _SVGAnimatedNumberImpl pointsAtY;

  final _SVGAnimatedNumberImpl pointsAtZ;

  final _SVGAnimatedNumberImpl specularExponent;

  final _SVGAnimatedNumberImpl x;

  final _SVGAnimatedNumberImpl y;

  final _SVGAnimatedNumberImpl z;
}

class _SVGFETileElementImpl extends _SVGElementImpl implements SVGFETileElement native "*SVGFETileElement" {

  final _SVGAnimatedStringImpl in1;

  // From SVGFilterPrimitiveStandardAttributes

  final _SVGAnimatedLengthImpl height;

  final _SVGAnimatedStringImpl result;

  final _SVGAnimatedLengthImpl width;

  final _SVGAnimatedLengthImpl x;

  final _SVGAnimatedLengthImpl y;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;
}

class _SVGFETurbulenceElementImpl extends _SVGElementImpl implements SVGFETurbulenceElement native "*SVGFETurbulenceElement" {

  static final int SVG_STITCHTYPE_NOSTITCH = 2;

  static final int SVG_STITCHTYPE_STITCH = 1;

  static final int SVG_STITCHTYPE_UNKNOWN = 0;

  static final int SVG_TURBULENCE_TYPE_FRACTALNOISE = 1;

  static final int SVG_TURBULENCE_TYPE_TURBULENCE = 2;

  static final int SVG_TURBULENCE_TYPE_UNKNOWN = 0;

  final _SVGAnimatedNumberImpl baseFrequencyX;

  final _SVGAnimatedNumberImpl baseFrequencyY;

  final _SVGAnimatedIntegerImpl numOctaves;

  final _SVGAnimatedNumberImpl seed;

  final _SVGAnimatedEnumerationImpl stitchTiles;

  final _SVGAnimatedEnumerationImpl type;

  // From SVGFilterPrimitiveStandardAttributes

  final _SVGAnimatedLengthImpl height;

  final _SVGAnimatedStringImpl result;

  final _SVGAnimatedLengthImpl width;

  final _SVGAnimatedLengthImpl x;

  final _SVGAnimatedLengthImpl y;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;
}

class _SVGFilterElementImpl extends _SVGElementImpl implements SVGFilterElement native "*SVGFilterElement" {

  final _SVGAnimatedIntegerImpl filterResX;

  final _SVGAnimatedIntegerImpl filterResY;

  final _SVGAnimatedEnumerationImpl filterUnits;

  final _SVGAnimatedLengthImpl height;

  final _SVGAnimatedEnumerationImpl primitiveUnits;

  final _SVGAnimatedLengthImpl width;

  final _SVGAnimatedLengthImpl x;

  final _SVGAnimatedLengthImpl y;

  void setFilterRes(int filterResX, int filterResY) native;

  // From SVGURIReference

  final _SVGAnimatedStringImpl href;

  // From SVGLangSpace

  String xmllang;

  String xmlspace;

  // From SVGExternalResourcesRequired

  final _SVGAnimatedBooleanImpl externalResourcesRequired;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;
}

class _SVGFilterPrimitiveStandardAttributesImpl extends _SVGStylableImpl implements SVGFilterPrimitiveStandardAttributes native "*SVGFilterPrimitiveStandardAttributes" {

  final _SVGAnimatedLengthImpl height;

  final _SVGAnimatedStringImpl result;

  final _SVGAnimatedLengthImpl width;

  final _SVGAnimatedLengthImpl x;

  final _SVGAnimatedLengthImpl y;
}

class _SVGFitToViewBoxImpl implements SVGFitToViewBox native "*SVGFitToViewBox" {

  final _SVGAnimatedPreserveAspectRatioImpl preserveAspectRatio;

  final _SVGAnimatedRectImpl viewBox;
}

class _SVGFontElementImpl extends _SVGElementImpl implements SVGFontElement native "*SVGFontElement" {
}

class _SVGFontFaceElementImpl extends _SVGElementImpl implements SVGFontFaceElement native "*SVGFontFaceElement" {
}

class _SVGFontFaceFormatElementImpl extends _SVGElementImpl implements SVGFontFaceFormatElement native "*SVGFontFaceFormatElement" {
}

class _SVGFontFaceNameElementImpl extends _SVGElementImpl implements SVGFontFaceNameElement native "*SVGFontFaceNameElement" {
}

class _SVGFontFaceSrcElementImpl extends _SVGElementImpl implements SVGFontFaceSrcElement native "*SVGFontFaceSrcElement" {
}

class _SVGFontFaceUriElementImpl extends _SVGElementImpl implements SVGFontFaceUriElement native "*SVGFontFaceUriElement" {
}

class _SVGForeignObjectElementImpl extends _SVGElementImpl implements SVGForeignObjectElement native "*SVGForeignObjectElement" {

  final _SVGAnimatedLengthImpl height;

  final _SVGAnimatedLengthImpl width;

  final _SVGAnimatedLengthImpl x;

  final _SVGAnimatedLengthImpl y;

  // From SVGTests

  final _SVGStringListImpl requiredExtensions;

  final _SVGStringListImpl requiredFeatures;

  final _SVGStringListImpl systemLanguage;

  bool hasExtension(String extension) native;

  // From SVGLangSpace

  String xmllang;

  String xmlspace;

  // From SVGExternalResourcesRequired

  final _SVGAnimatedBooleanImpl externalResourcesRequired;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;

  // From SVGTransformable

  final _SVGAnimatedTransformListImpl transform;

  // From SVGLocatable

  final _SVGElementImpl farthestViewportElement;

  final _SVGElementImpl nearestViewportElement;

  _SVGRectImpl getBBox() native;

  _SVGMatrixImpl getCTM() native;

  _SVGMatrixImpl getScreenCTM() native;

  _SVGMatrixImpl getTransformToElement(_SVGElementImpl element) native;
}

class _SVGGElementImpl extends _SVGElementImpl implements SVGGElement native "*SVGGElement" {

  // From SVGTests

  final _SVGStringListImpl requiredExtensions;

  final _SVGStringListImpl requiredFeatures;

  final _SVGStringListImpl systemLanguage;

  bool hasExtension(String extension) native;

  // From SVGLangSpace

  String xmllang;

  String xmlspace;

  // From SVGExternalResourcesRequired

  final _SVGAnimatedBooleanImpl externalResourcesRequired;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;

  // From SVGTransformable

  final _SVGAnimatedTransformListImpl transform;

  // From SVGLocatable

  final _SVGElementImpl farthestViewportElement;

  final _SVGElementImpl nearestViewportElement;

  _SVGRectImpl getBBox() native;

  _SVGMatrixImpl getCTM() native;

  _SVGMatrixImpl getScreenCTM() native;

  _SVGMatrixImpl getTransformToElement(_SVGElementImpl element) native;
}

class _SVGGlyphElementImpl extends _SVGElementImpl implements SVGGlyphElement native "*SVGGlyphElement" {
}

class _SVGGlyphRefElementImpl extends _SVGElementImpl implements SVGGlyphRefElement native "*SVGGlyphRefElement" {

  num dx;

  num dy;

  String format;

  String glyphRef;

  num x;

  num y;

  // From SVGURIReference

  final _SVGAnimatedStringImpl href;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;
}

class _SVGGradientElementImpl extends _SVGElementImpl implements SVGGradientElement native "*SVGGradientElement" {

  static final int SVG_SPREADMETHOD_PAD = 1;

  static final int SVG_SPREADMETHOD_REFLECT = 2;

  static final int SVG_SPREADMETHOD_REPEAT = 3;

  static final int SVG_SPREADMETHOD_UNKNOWN = 0;

  final _SVGAnimatedTransformListImpl gradientTransform;

  final _SVGAnimatedEnumerationImpl gradientUnits;

  final _SVGAnimatedEnumerationImpl spreadMethod;

  // From SVGURIReference

  final _SVGAnimatedStringImpl href;

  // From SVGExternalResourcesRequired

  final _SVGAnimatedBooleanImpl externalResourcesRequired;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;
}

class _SVGHKernElementImpl extends _SVGElementImpl implements SVGHKernElement native "*SVGHKernElement" {
}

class _SVGImageElementImpl extends _SVGElementImpl implements SVGImageElement native "*SVGImageElement" {

  final _SVGAnimatedLengthImpl height;

  final _SVGAnimatedPreserveAspectRatioImpl preserveAspectRatio;

  final _SVGAnimatedLengthImpl width;

  final _SVGAnimatedLengthImpl x;

  final _SVGAnimatedLengthImpl y;

  // From SVGURIReference

  final _SVGAnimatedStringImpl href;

  // From SVGTests

  final _SVGStringListImpl requiredExtensions;

  final _SVGStringListImpl requiredFeatures;

  final _SVGStringListImpl systemLanguage;

  bool hasExtension(String extension) native;

  // From SVGLangSpace

  String xmllang;

  String xmlspace;

  // From SVGExternalResourcesRequired

  final _SVGAnimatedBooleanImpl externalResourcesRequired;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;

  // From SVGTransformable

  final _SVGAnimatedTransformListImpl transform;

  // From SVGLocatable

  final _SVGElementImpl farthestViewportElement;

  final _SVGElementImpl nearestViewportElement;

  _SVGRectImpl getBBox() native;

  _SVGMatrixImpl getCTM() native;

  _SVGMatrixImpl getScreenCTM() native;

  _SVGMatrixImpl getTransformToElement(_SVGElementImpl element) native;
}

class _SVGLangSpaceImpl implements SVGLangSpace native "*SVGLangSpace" {

  String xmllang;

  String xmlspace;
}

class _SVGLengthImpl implements SVGLength native "*SVGLength" {

  static final int SVG_LENGTHTYPE_CM = 6;

  static final int SVG_LENGTHTYPE_EMS = 3;

  static final int SVG_LENGTHTYPE_EXS = 4;

  static final int SVG_LENGTHTYPE_IN = 8;

  static final int SVG_LENGTHTYPE_MM = 7;

  static final int SVG_LENGTHTYPE_NUMBER = 1;

  static final int SVG_LENGTHTYPE_PC = 10;

  static final int SVG_LENGTHTYPE_PERCENTAGE = 2;

  static final int SVG_LENGTHTYPE_PT = 9;

  static final int SVG_LENGTHTYPE_PX = 5;

  static final int SVG_LENGTHTYPE_UNKNOWN = 0;

  final int unitType;

  num value;

  String valueAsString;

  num valueInSpecifiedUnits;

  void convertToSpecifiedUnits(int unitType) native;

  void newValueSpecifiedUnits(int unitType, num valueInSpecifiedUnits) native;
}

class _SVGLengthListImpl implements SVGLengthList native "*SVGLengthList" {

  final int numberOfItems;

  _SVGLengthImpl appendItem(_SVGLengthImpl item) native;

  void clear() native;

  _SVGLengthImpl getItem(int index) native;

  _SVGLengthImpl initialize(_SVGLengthImpl item) native;

  _SVGLengthImpl insertItemBefore(_SVGLengthImpl item, int index) native;

  _SVGLengthImpl removeItem(int index) native;

  _SVGLengthImpl replaceItem(_SVGLengthImpl item, int index) native;
}

class _SVGLineElementImpl extends _SVGElementImpl implements SVGLineElement native "*SVGLineElement" {

  final _SVGAnimatedLengthImpl x1;

  final _SVGAnimatedLengthImpl x2;

  final _SVGAnimatedLengthImpl y1;

  final _SVGAnimatedLengthImpl y2;

  // From SVGTests

  final _SVGStringListImpl requiredExtensions;

  final _SVGStringListImpl requiredFeatures;

  final _SVGStringListImpl systemLanguage;

  bool hasExtension(String extension) native;

  // From SVGLangSpace

  String xmllang;

  String xmlspace;

  // From SVGExternalResourcesRequired

  final _SVGAnimatedBooleanImpl externalResourcesRequired;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;

  // From SVGTransformable

  final _SVGAnimatedTransformListImpl transform;

  // From SVGLocatable

  final _SVGElementImpl farthestViewportElement;

  final _SVGElementImpl nearestViewportElement;

  _SVGRectImpl getBBox() native;

  _SVGMatrixImpl getCTM() native;

  _SVGMatrixImpl getScreenCTM() native;

  _SVGMatrixImpl getTransformToElement(_SVGElementImpl element) native;
}

class _SVGLinearGradientElementImpl extends _SVGGradientElementImpl implements SVGLinearGradientElement native "*SVGLinearGradientElement" {

  final _SVGAnimatedLengthImpl x1;

  final _SVGAnimatedLengthImpl x2;

  final _SVGAnimatedLengthImpl y1;

  final _SVGAnimatedLengthImpl y2;
}

class _SVGLocatableImpl implements SVGLocatable native "*SVGLocatable" {

  final _SVGElementImpl farthestViewportElement;

  final _SVGElementImpl nearestViewportElement;

  _SVGRectImpl getBBox() native;

  _SVGMatrixImpl getCTM() native;

  _SVGMatrixImpl getScreenCTM() native;

  _SVGMatrixImpl getTransformToElement(_SVGElementImpl element) native;
}

class _SVGMPathElementImpl extends _SVGElementImpl implements SVGMPathElement native "*SVGMPathElement" {

  // From SVGURIReference

  final _SVGAnimatedStringImpl href;

  // From SVGExternalResourcesRequired

  final _SVGAnimatedBooleanImpl externalResourcesRequired;
}

class _SVGMarkerElementImpl extends _SVGElementImpl implements SVGMarkerElement native "*SVGMarkerElement" {

  static final int SVG_MARKERUNITS_STROKEWIDTH = 2;

  static final int SVG_MARKERUNITS_UNKNOWN = 0;

  static final int SVG_MARKERUNITS_USERSPACEONUSE = 1;

  static final int SVG_MARKER_ORIENT_ANGLE = 2;

  static final int SVG_MARKER_ORIENT_AUTO = 1;

  static final int SVG_MARKER_ORIENT_UNKNOWN = 0;

  final _SVGAnimatedLengthImpl markerHeight;

  final _SVGAnimatedEnumerationImpl markerUnits;

  final _SVGAnimatedLengthImpl markerWidth;

  final _SVGAnimatedAngleImpl orientAngle;

  final _SVGAnimatedEnumerationImpl orientType;

  final _SVGAnimatedLengthImpl refX;

  final _SVGAnimatedLengthImpl refY;

  void setOrientToAngle(_SVGAngleImpl angle) native;

  void setOrientToAuto() native;

  // From SVGLangSpace

  String xmllang;

  String xmlspace;

  // From SVGExternalResourcesRequired

  final _SVGAnimatedBooleanImpl externalResourcesRequired;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;

  // From SVGFitToViewBox

  final _SVGAnimatedPreserveAspectRatioImpl preserveAspectRatio;

  final _SVGAnimatedRectImpl viewBox;
}

class _SVGMaskElementImpl extends _SVGElementImpl implements SVGMaskElement native "*SVGMaskElement" {

  final _SVGAnimatedLengthImpl height;

  final _SVGAnimatedEnumerationImpl maskContentUnits;

  final _SVGAnimatedEnumerationImpl maskUnits;

  final _SVGAnimatedLengthImpl width;

  final _SVGAnimatedLengthImpl x;

  final _SVGAnimatedLengthImpl y;

  // From SVGTests

  final _SVGStringListImpl requiredExtensions;

  final _SVGStringListImpl requiredFeatures;

  final _SVGStringListImpl systemLanguage;

  bool hasExtension(String extension) native;

  // From SVGLangSpace

  String xmllang;

  String xmlspace;

  // From SVGExternalResourcesRequired

  final _SVGAnimatedBooleanImpl externalResourcesRequired;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;
}

class _SVGMatrixImpl implements SVGMatrix native "*SVGMatrix" {

  num a;

  num b;

  num c;

  num d;

  num e;

  num f;

  _SVGMatrixImpl flipX() native;

  _SVGMatrixImpl flipY() native;

  _SVGMatrixImpl inverse() native;

  _SVGMatrixImpl multiply(_SVGMatrixImpl secondMatrix) native;

  _SVGMatrixImpl rotate(num angle) native;

  _SVGMatrixImpl rotateFromVector(num x, num y) native;

  _SVGMatrixImpl scale(num scaleFactor) native;

  _SVGMatrixImpl scaleNonUniform(num scaleFactorX, num scaleFactorY) native;

  _SVGMatrixImpl skewX(num angle) native;

  _SVGMatrixImpl skewY(num angle) native;

  _SVGMatrixImpl translate(num x, num y) native;
}

class _SVGMetadataElementImpl extends _SVGElementImpl implements SVGMetadataElement native "*SVGMetadataElement" {
}

class _SVGMissingGlyphElementImpl extends _SVGElementImpl implements SVGMissingGlyphElement native "*SVGMissingGlyphElement" {
}

class _SVGNumberImpl implements SVGNumber native "*SVGNumber" {

  num value;
}

class _SVGNumberListImpl implements SVGNumberList native "*SVGNumberList" {

  final int numberOfItems;

  _SVGNumberImpl appendItem(_SVGNumberImpl item) native;

  void clear() native;

  _SVGNumberImpl getItem(int index) native;

  _SVGNumberImpl initialize(_SVGNumberImpl item) native;

  _SVGNumberImpl insertItemBefore(_SVGNumberImpl item, int index) native;

  _SVGNumberImpl removeItem(int index) native;

  _SVGNumberImpl replaceItem(_SVGNumberImpl item, int index) native;
}

class _SVGPaintImpl extends _SVGColorImpl implements SVGPaint native "*SVGPaint" {

  static final int SVG_PAINTTYPE_CURRENTCOLOR = 102;

  static final int SVG_PAINTTYPE_NONE = 101;

  static final int SVG_PAINTTYPE_RGBCOLOR = 1;

  static final int SVG_PAINTTYPE_RGBCOLOR_ICCCOLOR = 2;

  static final int SVG_PAINTTYPE_UNKNOWN = 0;

  static final int SVG_PAINTTYPE_URI = 107;

  static final int SVG_PAINTTYPE_URI_CURRENTCOLOR = 104;

  static final int SVG_PAINTTYPE_URI_NONE = 103;

  static final int SVG_PAINTTYPE_URI_RGBCOLOR = 105;

  static final int SVG_PAINTTYPE_URI_RGBCOLOR_ICCCOLOR = 106;

  final int paintType;

  final String uri;

  void setPaint(int paintType, String uri, String rgbColor, String iccColor) native;

  void setUri(String uri) native;
}

class _SVGPathElementImpl extends _SVGElementImpl implements SVGPathElement native "*SVGPathElement" {

  final _SVGPathSegListImpl animatedNormalizedPathSegList;

  final _SVGPathSegListImpl animatedPathSegList;

  final _SVGPathSegListImpl normalizedPathSegList;

  final _SVGAnimatedNumberImpl pathLength;

  final _SVGPathSegListImpl pathSegList;

  _SVGPathSegArcAbsImpl createSVGPathSegArcAbs(num x, num y, num r1, num r2, num angle, bool largeArcFlag, bool sweepFlag) native;

  _SVGPathSegArcRelImpl createSVGPathSegArcRel(num x, num y, num r1, num r2, num angle, bool largeArcFlag, bool sweepFlag) native;

  _SVGPathSegClosePathImpl createSVGPathSegClosePath() native;

  _SVGPathSegCurvetoCubicAbsImpl createSVGPathSegCurvetoCubicAbs(num x, num y, num x1, num y1, num x2, num y2) native;

  _SVGPathSegCurvetoCubicRelImpl createSVGPathSegCurvetoCubicRel(num x, num y, num x1, num y1, num x2, num y2) native;

  _SVGPathSegCurvetoCubicSmoothAbsImpl createSVGPathSegCurvetoCubicSmoothAbs(num x, num y, num x2, num y2) native;

  _SVGPathSegCurvetoCubicSmoothRelImpl createSVGPathSegCurvetoCubicSmoothRel(num x, num y, num x2, num y2) native;

  _SVGPathSegCurvetoQuadraticAbsImpl createSVGPathSegCurvetoQuadraticAbs(num x, num y, num x1, num y1) native;

  _SVGPathSegCurvetoQuadraticRelImpl createSVGPathSegCurvetoQuadraticRel(num x, num y, num x1, num y1) native;

  _SVGPathSegCurvetoQuadraticSmoothAbsImpl createSVGPathSegCurvetoQuadraticSmoothAbs(num x, num y) native;

  _SVGPathSegCurvetoQuadraticSmoothRelImpl createSVGPathSegCurvetoQuadraticSmoothRel(num x, num y) native;

  _SVGPathSegLinetoAbsImpl createSVGPathSegLinetoAbs(num x, num y) native;

  _SVGPathSegLinetoHorizontalAbsImpl createSVGPathSegLinetoHorizontalAbs(num x) native;

  _SVGPathSegLinetoHorizontalRelImpl createSVGPathSegLinetoHorizontalRel(num x) native;

  _SVGPathSegLinetoRelImpl createSVGPathSegLinetoRel(num x, num y) native;

  _SVGPathSegLinetoVerticalAbsImpl createSVGPathSegLinetoVerticalAbs(num y) native;

  _SVGPathSegLinetoVerticalRelImpl createSVGPathSegLinetoVerticalRel(num y) native;

  _SVGPathSegMovetoAbsImpl createSVGPathSegMovetoAbs(num x, num y) native;

  _SVGPathSegMovetoRelImpl createSVGPathSegMovetoRel(num x, num y) native;

  int getPathSegAtLength(num distance) native;

  _SVGPointImpl getPointAtLength(num distance) native;

  num getTotalLength() native;

  // From SVGTests

  final _SVGStringListImpl requiredExtensions;

  final _SVGStringListImpl requiredFeatures;

  final _SVGStringListImpl systemLanguage;

  bool hasExtension(String extension) native;

  // From SVGLangSpace

  String xmllang;

  String xmlspace;

  // From SVGExternalResourcesRequired

  final _SVGAnimatedBooleanImpl externalResourcesRequired;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;

  // From SVGTransformable

  final _SVGAnimatedTransformListImpl transform;

  // From SVGLocatable

  final _SVGElementImpl farthestViewportElement;

  final _SVGElementImpl nearestViewportElement;

  _SVGRectImpl getBBox() native;

  _SVGMatrixImpl getCTM() native;

  _SVGMatrixImpl getScreenCTM() native;

  _SVGMatrixImpl getTransformToElement(_SVGElementImpl element) native;
}

class _SVGPathSegImpl implements SVGPathSeg native "*SVGPathSeg" {

  static final int PATHSEG_ARC_ABS = 10;

  static final int PATHSEG_ARC_REL = 11;

  static final int PATHSEG_CLOSEPATH = 1;

  static final int PATHSEG_CURVETO_CUBIC_ABS = 6;

  static final int PATHSEG_CURVETO_CUBIC_REL = 7;

  static final int PATHSEG_CURVETO_CUBIC_SMOOTH_ABS = 16;

  static final int PATHSEG_CURVETO_CUBIC_SMOOTH_REL = 17;

  static final int PATHSEG_CURVETO_QUADRATIC_ABS = 8;

  static final int PATHSEG_CURVETO_QUADRATIC_REL = 9;

  static final int PATHSEG_CURVETO_QUADRATIC_SMOOTH_ABS = 18;

  static final int PATHSEG_CURVETO_QUADRATIC_SMOOTH_REL = 19;

  static final int PATHSEG_LINETO_ABS = 4;

  static final int PATHSEG_LINETO_HORIZONTAL_ABS = 12;

  static final int PATHSEG_LINETO_HORIZONTAL_REL = 13;

  static final int PATHSEG_LINETO_REL = 5;

  static final int PATHSEG_LINETO_VERTICAL_ABS = 14;

  static final int PATHSEG_LINETO_VERTICAL_REL = 15;

  static final int PATHSEG_MOVETO_ABS = 2;

  static final int PATHSEG_MOVETO_REL = 3;

  static final int PATHSEG_UNKNOWN = 0;

  final int pathSegType;

  final String pathSegTypeAsLetter;
}

class _SVGPathSegArcAbsImpl extends _SVGPathSegImpl implements SVGPathSegArcAbs native "*SVGPathSegArcAbs" {

  num angle;

  bool largeArcFlag;

  num r1;

  num r2;

  bool sweepFlag;

  num x;

  num y;
}

class _SVGPathSegArcRelImpl extends _SVGPathSegImpl implements SVGPathSegArcRel native "*SVGPathSegArcRel" {

  num angle;

  bool largeArcFlag;

  num r1;

  num r2;

  bool sweepFlag;

  num x;

  num y;
}

class _SVGPathSegClosePathImpl extends _SVGPathSegImpl implements SVGPathSegClosePath native "*SVGPathSegClosePath" {
}

class _SVGPathSegCurvetoCubicAbsImpl extends _SVGPathSegImpl implements SVGPathSegCurvetoCubicAbs native "*SVGPathSegCurvetoCubicAbs" {

  num x;

  num x1;

  num x2;

  num y;

  num y1;

  num y2;
}

class _SVGPathSegCurvetoCubicRelImpl extends _SVGPathSegImpl implements SVGPathSegCurvetoCubicRel native "*SVGPathSegCurvetoCubicRel" {

  num x;

  num x1;

  num x2;

  num y;

  num y1;

  num y2;
}

class _SVGPathSegCurvetoCubicSmoothAbsImpl extends _SVGPathSegImpl implements SVGPathSegCurvetoCubicSmoothAbs native "*SVGPathSegCurvetoCubicSmoothAbs" {

  num x;

  num x2;

  num y;

  num y2;
}

class _SVGPathSegCurvetoCubicSmoothRelImpl extends _SVGPathSegImpl implements SVGPathSegCurvetoCubicSmoothRel native "*SVGPathSegCurvetoCubicSmoothRel" {

  num x;

  num x2;

  num y;

  num y2;
}

class _SVGPathSegCurvetoQuadraticAbsImpl extends _SVGPathSegImpl implements SVGPathSegCurvetoQuadraticAbs native "*SVGPathSegCurvetoQuadraticAbs" {

  num x;

  num x1;

  num y;

  num y1;
}

class _SVGPathSegCurvetoQuadraticRelImpl extends _SVGPathSegImpl implements SVGPathSegCurvetoQuadraticRel native "*SVGPathSegCurvetoQuadraticRel" {

  num x;

  num x1;

  num y;

  num y1;
}

class _SVGPathSegCurvetoQuadraticSmoothAbsImpl extends _SVGPathSegImpl implements SVGPathSegCurvetoQuadraticSmoothAbs native "*SVGPathSegCurvetoQuadraticSmoothAbs" {

  num x;

  num y;
}

class _SVGPathSegCurvetoQuadraticSmoothRelImpl extends _SVGPathSegImpl implements SVGPathSegCurvetoQuadraticSmoothRel native "*SVGPathSegCurvetoQuadraticSmoothRel" {

  num x;

  num y;
}

class _SVGPathSegLinetoAbsImpl extends _SVGPathSegImpl implements SVGPathSegLinetoAbs native "*SVGPathSegLinetoAbs" {

  num x;

  num y;
}

class _SVGPathSegLinetoHorizontalAbsImpl extends _SVGPathSegImpl implements SVGPathSegLinetoHorizontalAbs native "*SVGPathSegLinetoHorizontalAbs" {

  num x;
}

class _SVGPathSegLinetoHorizontalRelImpl extends _SVGPathSegImpl implements SVGPathSegLinetoHorizontalRel native "*SVGPathSegLinetoHorizontalRel" {

  num x;
}

class _SVGPathSegLinetoRelImpl extends _SVGPathSegImpl implements SVGPathSegLinetoRel native "*SVGPathSegLinetoRel" {

  num x;

  num y;
}

class _SVGPathSegLinetoVerticalAbsImpl extends _SVGPathSegImpl implements SVGPathSegLinetoVerticalAbs native "*SVGPathSegLinetoVerticalAbs" {

  num y;
}

class _SVGPathSegLinetoVerticalRelImpl extends _SVGPathSegImpl implements SVGPathSegLinetoVerticalRel native "*SVGPathSegLinetoVerticalRel" {

  num y;
}

class _SVGPathSegListImpl implements SVGPathSegList native "*SVGPathSegList" {

  final int numberOfItems;

  _SVGPathSegImpl appendItem(_SVGPathSegImpl newItem) native;

  void clear() native;

  _SVGPathSegImpl getItem(int index) native;

  _SVGPathSegImpl initialize(_SVGPathSegImpl newItem) native;

  _SVGPathSegImpl insertItemBefore(_SVGPathSegImpl newItem, int index) native;

  _SVGPathSegImpl removeItem(int index) native;

  _SVGPathSegImpl replaceItem(_SVGPathSegImpl newItem, int index) native;
}

class _SVGPathSegMovetoAbsImpl extends _SVGPathSegImpl implements SVGPathSegMovetoAbs native "*SVGPathSegMovetoAbs" {

  num x;

  num y;
}

class _SVGPathSegMovetoRelImpl extends _SVGPathSegImpl implements SVGPathSegMovetoRel native "*SVGPathSegMovetoRel" {

  num x;

  num y;
}

class _SVGPatternElementImpl extends _SVGElementImpl implements SVGPatternElement native "*SVGPatternElement" {

  final _SVGAnimatedLengthImpl height;

  final _SVGAnimatedEnumerationImpl patternContentUnits;

  final _SVGAnimatedTransformListImpl patternTransform;

  final _SVGAnimatedEnumerationImpl patternUnits;

  final _SVGAnimatedLengthImpl width;

  final _SVGAnimatedLengthImpl x;

  final _SVGAnimatedLengthImpl y;

  // From SVGURIReference

  final _SVGAnimatedStringImpl href;

  // From SVGTests

  final _SVGStringListImpl requiredExtensions;

  final _SVGStringListImpl requiredFeatures;

  final _SVGStringListImpl systemLanguage;

  bool hasExtension(String extension) native;

  // From SVGLangSpace

  String xmllang;

  String xmlspace;

  // From SVGExternalResourcesRequired

  final _SVGAnimatedBooleanImpl externalResourcesRequired;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;

  // From SVGFitToViewBox

  final _SVGAnimatedPreserveAspectRatioImpl preserveAspectRatio;

  final _SVGAnimatedRectImpl viewBox;
}

class _SVGPointImpl implements SVGPoint native "*SVGPoint" {

  num x;

  num y;

  _SVGPointImpl matrixTransform(_SVGMatrixImpl matrix) native;
}

class _SVGPointListImpl implements SVGPointList native "*SVGPointList" {

  final int numberOfItems;

  _SVGPointImpl appendItem(_SVGPointImpl item) native;

  void clear() native;

  _SVGPointImpl getItem(int index) native;

  _SVGPointImpl initialize(_SVGPointImpl item) native;

  _SVGPointImpl insertItemBefore(_SVGPointImpl item, int index) native;

  _SVGPointImpl removeItem(int index) native;

  _SVGPointImpl replaceItem(_SVGPointImpl item, int index) native;
}

class _SVGPolygonElementImpl extends _SVGElementImpl implements SVGPolygonElement native "*SVGPolygonElement" {

  final _SVGPointListImpl animatedPoints;

  final _SVGPointListImpl points;

  // From SVGTests

  final _SVGStringListImpl requiredExtensions;

  final _SVGStringListImpl requiredFeatures;

  final _SVGStringListImpl systemLanguage;

  bool hasExtension(String extension) native;

  // From SVGLangSpace

  String xmllang;

  String xmlspace;

  // From SVGExternalResourcesRequired

  final _SVGAnimatedBooleanImpl externalResourcesRequired;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;

  // From SVGTransformable

  final _SVGAnimatedTransformListImpl transform;

  // From SVGLocatable

  final _SVGElementImpl farthestViewportElement;

  final _SVGElementImpl nearestViewportElement;

  _SVGRectImpl getBBox() native;

  _SVGMatrixImpl getCTM() native;

  _SVGMatrixImpl getScreenCTM() native;

  _SVGMatrixImpl getTransformToElement(_SVGElementImpl element) native;
}

class _SVGPolylineElementImpl extends _SVGElementImpl implements SVGPolylineElement native "*SVGPolylineElement" {

  final _SVGPointListImpl animatedPoints;

  final _SVGPointListImpl points;

  // From SVGTests

  final _SVGStringListImpl requiredExtensions;

  final _SVGStringListImpl requiredFeatures;

  final _SVGStringListImpl systemLanguage;

  bool hasExtension(String extension) native;

  // From SVGLangSpace

  String xmllang;

  String xmlspace;

  // From SVGExternalResourcesRequired

  final _SVGAnimatedBooleanImpl externalResourcesRequired;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;

  // From SVGTransformable

  final _SVGAnimatedTransformListImpl transform;

  // From SVGLocatable

  final _SVGElementImpl farthestViewportElement;

  final _SVGElementImpl nearestViewportElement;

  _SVGRectImpl getBBox() native;

  _SVGMatrixImpl getCTM() native;

  _SVGMatrixImpl getScreenCTM() native;

  _SVGMatrixImpl getTransformToElement(_SVGElementImpl element) native;
}

class _SVGPreserveAspectRatioImpl implements SVGPreserveAspectRatio native "*SVGPreserveAspectRatio" {

  static final int SVG_MEETORSLICE_MEET = 1;

  static final int SVG_MEETORSLICE_SLICE = 2;

  static final int SVG_MEETORSLICE_UNKNOWN = 0;

  static final int SVG_PRESERVEASPECTRATIO_NONE = 1;

  static final int SVG_PRESERVEASPECTRATIO_UNKNOWN = 0;

  static final int SVG_PRESERVEASPECTRATIO_XMAXYMAX = 10;

  static final int SVG_PRESERVEASPECTRATIO_XMAXYMID = 7;

  static final int SVG_PRESERVEASPECTRATIO_XMAXYMIN = 4;

  static final int SVG_PRESERVEASPECTRATIO_XMIDYMAX = 9;

  static final int SVG_PRESERVEASPECTRATIO_XMIDYMID = 6;

  static final int SVG_PRESERVEASPECTRATIO_XMIDYMIN = 3;

  static final int SVG_PRESERVEASPECTRATIO_XMINYMAX = 8;

  static final int SVG_PRESERVEASPECTRATIO_XMINYMID = 5;

  static final int SVG_PRESERVEASPECTRATIO_XMINYMIN = 2;

  int align;

  int meetOrSlice;
}

class _SVGRadialGradientElementImpl extends _SVGGradientElementImpl implements SVGRadialGradientElement native "*SVGRadialGradientElement" {

  final _SVGAnimatedLengthImpl cx;

  final _SVGAnimatedLengthImpl cy;

  final _SVGAnimatedLengthImpl fx;

  final _SVGAnimatedLengthImpl fy;

  final _SVGAnimatedLengthImpl r;
}

class _SVGRectImpl implements SVGRect native "*SVGRect" {

  num height;

  num width;

  num x;

  num y;
}

class _SVGRectElementImpl extends _SVGElementImpl implements SVGRectElement native "*SVGRectElement" {

  final _SVGAnimatedLengthImpl height;

  final _SVGAnimatedLengthImpl rx;

  final _SVGAnimatedLengthImpl ry;

  final _SVGAnimatedLengthImpl width;

  final _SVGAnimatedLengthImpl x;

  final _SVGAnimatedLengthImpl y;

  // From SVGTests

  final _SVGStringListImpl requiredExtensions;

  final _SVGStringListImpl requiredFeatures;

  final _SVGStringListImpl systemLanguage;

  bool hasExtension(String extension) native;

  // From SVGLangSpace

  String xmllang;

  String xmlspace;

  // From SVGExternalResourcesRequired

  final _SVGAnimatedBooleanImpl externalResourcesRequired;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;

  // From SVGTransformable

  final _SVGAnimatedTransformListImpl transform;

  // From SVGLocatable

  final _SVGElementImpl farthestViewportElement;

  final _SVGElementImpl nearestViewportElement;

  _SVGRectImpl getBBox() native;

  _SVGMatrixImpl getCTM() native;

  _SVGMatrixImpl getScreenCTM() native;

  _SVGMatrixImpl getTransformToElement(_SVGElementImpl element) native;
}

class _SVGRenderingIntentImpl implements SVGRenderingIntent native "*SVGRenderingIntent" {

  static final int RENDERING_INTENT_ABSOLUTE_COLORIMETRIC = 5;

  static final int RENDERING_INTENT_AUTO = 1;

  static final int RENDERING_INTENT_PERCEPTUAL = 2;

  static final int RENDERING_INTENT_RELATIVE_COLORIMETRIC = 3;

  static final int RENDERING_INTENT_SATURATION = 4;

  static final int RENDERING_INTENT_UNKNOWN = 0;
}

class _SVGSVGElementImpl extends _SVGElementImpl implements SVGSVGElement native "*SVGSVGElement" {

  String contentScriptType;

  String contentStyleType;

  num currentScale;

  final _SVGPointImpl currentTranslate;

  final _SVGAnimatedLengthImpl height;

  final num pixelUnitToMillimeterX;

  final num pixelUnitToMillimeterY;

  final num screenPixelToMillimeterX;

  final num screenPixelToMillimeterY;

  bool useCurrentView;

  final _SVGRectImpl viewport;

  final _SVGAnimatedLengthImpl width;

  final _SVGAnimatedLengthImpl x;

  final _SVGAnimatedLengthImpl y;

  bool animationsPaused() native;

  bool checkEnclosure(_SVGElementImpl element, _SVGRectImpl rect) native;

  bool checkIntersection(_SVGElementImpl element, _SVGRectImpl rect) native;

  _SVGAngleImpl createSVGAngle() native;

  _SVGLengthImpl createSVGLength() native;

  _SVGMatrixImpl createSVGMatrix() native;

  _SVGNumberImpl createSVGNumber() native;

  _SVGPointImpl createSVGPoint() native;

  _SVGRectImpl createSVGRect() native;

  _SVGTransformImpl createSVGTransform() native;

  _SVGTransformImpl createSVGTransformFromMatrix(_SVGMatrixImpl matrix) native;

  void deselectAll() native;

  void forceRedraw() native;

  num getCurrentTime() native;

  _ElementImpl getElementById(String elementId) native;

  _NodeListImpl getEnclosureList(_SVGRectImpl rect, _SVGElementImpl referenceElement) native;

  _NodeListImpl getIntersectionList(_SVGRectImpl rect, _SVGElementImpl referenceElement) native;

  void pauseAnimations() native;

  void setCurrentTime(num seconds) native;

  int suspendRedraw(int maxWaitMilliseconds) native;

  void unpauseAnimations() native;

  void unsuspendRedraw(int suspendHandleId) native;

  void unsuspendRedrawAll() native;

  // From SVGTests

  final _SVGStringListImpl requiredExtensions;

  final _SVGStringListImpl requiredFeatures;

  final _SVGStringListImpl systemLanguage;

  bool hasExtension(String extension) native;

  // From SVGLangSpace

  String xmllang;

  String xmlspace;

  // From SVGExternalResourcesRequired

  final _SVGAnimatedBooleanImpl externalResourcesRequired;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;

  // From SVGLocatable

  final _SVGElementImpl farthestViewportElement;

  final _SVGElementImpl nearestViewportElement;

  _SVGRectImpl getBBox() native;

  _SVGMatrixImpl getCTM() native;

  _SVGMatrixImpl getScreenCTM() native;

  _SVGMatrixImpl getTransformToElement(_SVGElementImpl element) native;

  // From SVGFitToViewBox

  final _SVGAnimatedPreserveAspectRatioImpl preserveAspectRatio;

  final _SVGAnimatedRectImpl viewBox;

  // From SVGZoomAndPan

  int zoomAndPan;
}

class _SVGScriptElementImpl extends _SVGElementImpl implements SVGScriptElement native "*SVGScriptElement" {

  String type;

  // From SVGURIReference

  final _SVGAnimatedStringImpl href;

  // From SVGExternalResourcesRequired

  final _SVGAnimatedBooleanImpl externalResourcesRequired;
}

class _SVGSetElementImpl extends _SVGAnimationElementImpl implements SVGSetElement native "*SVGSetElement" {
}

class _SVGStopElementImpl extends _SVGElementImpl implements SVGStopElement native "*SVGStopElement" {

  final _SVGAnimatedNumberImpl offset;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;
}

class _SVGStringListImpl implements SVGStringList native "*SVGStringList" {

  final int numberOfItems;

  String appendItem(String item) native;

  void clear() native;

  String getItem(int index) native;

  String initialize(String item) native;

  String insertItemBefore(String item, int index) native;

  String removeItem(int index) native;

  String replaceItem(String item, int index) native;
}

class _SVGStylableImpl implements SVGStylable native "*SVGStylable" {

  _SVGAnimatedStringImpl get $dom_svgClassName() native "return this.className;";

  final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;
}

class _SVGStyleElementImpl extends _SVGElementImpl implements SVGStyleElement native "*SVGStyleElement" {

  bool disabled;

  String media;

  // Shadowing definition.
  String get title() native "return this.title;";

  void set title(String value) native "this.title = value;";

  String type;

  // From SVGLangSpace

  String xmllang;

  String xmlspace;
}

class _SVGSwitchElementImpl extends _SVGElementImpl implements SVGSwitchElement native "*SVGSwitchElement" {

  // From SVGTests

  final _SVGStringListImpl requiredExtensions;

  final _SVGStringListImpl requiredFeatures;

  final _SVGStringListImpl systemLanguage;

  bool hasExtension(String extension) native;

  // From SVGLangSpace

  String xmllang;

  String xmlspace;

  // From SVGExternalResourcesRequired

  final _SVGAnimatedBooleanImpl externalResourcesRequired;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;

  // From SVGTransformable

  final _SVGAnimatedTransformListImpl transform;

  // From SVGLocatable

  final _SVGElementImpl farthestViewportElement;

  final _SVGElementImpl nearestViewportElement;

  _SVGRectImpl getBBox() native;

  _SVGMatrixImpl getCTM() native;

  _SVGMatrixImpl getScreenCTM() native;

  _SVGMatrixImpl getTransformToElement(_SVGElementImpl element) native;
}

class _SVGSymbolElementImpl extends _SVGElementImpl implements SVGSymbolElement native "*SVGSymbolElement" {

  // From SVGLangSpace

  String xmllang;

  String xmlspace;

  // From SVGExternalResourcesRequired

  final _SVGAnimatedBooleanImpl externalResourcesRequired;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;

  // From SVGFitToViewBox

  final _SVGAnimatedPreserveAspectRatioImpl preserveAspectRatio;

  final _SVGAnimatedRectImpl viewBox;
}

class _SVGTRefElementImpl extends _SVGTextPositioningElementImpl implements SVGTRefElement native "*SVGTRefElement" {

  // From SVGURIReference

  final _SVGAnimatedStringImpl href;
}

class _SVGTSpanElementImpl extends _SVGTextPositioningElementImpl implements SVGTSpanElement native "*SVGTSpanElement" {
}

class _SVGTestsImpl implements SVGTests native "*SVGTests" {

  final _SVGStringListImpl requiredExtensions;

  final _SVGStringListImpl requiredFeatures;

  final _SVGStringListImpl systemLanguage;

  bool hasExtension(String extension) native;
}

class _SVGTextContentElementImpl extends _SVGElementImpl implements SVGTextContentElement native "*SVGTextContentElement" {

  static final int LENGTHADJUST_SPACING = 1;

  static final int LENGTHADJUST_SPACINGANDGLYPHS = 2;

  static final int LENGTHADJUST_UNKNOWN = 0;

  final _SVGAnimatedEnumerationImpl lengthAdjust;

  final _SVGAnimatedLengthImpl textLength;

  int getCharNumAtPosition(_SVGPointImpl point) native;

  num getComputedTextLength() native;

  _SVGPointImpl getEndPositionOfChar(int offset) native;

  _SVGRectImpl getExtentOfChar(int offset) native;

  int getNumberOfChars() native;

  num getRotationOfChar(int offset) native;

  _SVGPointImpl getStartPositionOfChar(int offset) native;

  num getSubStringLength(int offset, int length) native;

  void selectSubString(int offset, int length) native;

  // From SVGTests

  final _SVGStringListImpl requiredExtensions;

  final _SVGStringListImpl requiredFeatures;

  final _SVGStringListImpl systemLanguage;

  bool hasExtension(String extension) native;

  // From SVGLangSpace

  String xmllang;

  String xmlspace;

  // From SVGExternalResourcesRequired

  final _SVGAnimatedBooleanImpl externalResourcesRequired;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;
}

class _SVGTextElementImpl extends _SVGTextPositioningElementImpl implements SVGTextElement native "*SVGTextElement" {

  // From SVGTransformable

  final _SVGAnimatedTransformListImpl transform;

  // From SVGLocatable

  final _SVGElementImpl farthestViewportElement;

  final _SVGElementImpl nearestViewportElement;

  _SVGRectImpl getBBox() native;

  _SVGMatrixImpl getCTM() native;

  _SVGMatrixImpl getScreenCTM() native;

  _SVGMatrixImpl getTransformToElement(_SVGElementImpl element) native;
}

class _SVGTextPathElementImpl extends _SVGTextContentElementImpl implements SVGTextPathElement native "*SVGTextPathElement" {

  static final int TEXTPATH_METHODTYPE_ALIGN = 1;

  static final int TEXTPATH_METHODTYPE_STRETCH = 2;

  static final int TEXTPATH_METHODTYPE_UNKNOWN = 0;

  static final int TEXTPATH_SPACINGTYPE_AUTO = 1;

  static final int TEXTPATH_SPACINGTYPE_EXACT = 2;

  static final int TEXTPATH_SPACINGTYPE_UNKNOWN = 0;

  final _SVGAnimatedEnumerationImpl method;

  final _SVGAnimatedEnumerationImpl spacing;

  final _SVGAnimatedLengthImpl startOffset;

  // From SVGURIReference

  final _SVGAnimatedStringImpl href;
}

class _SVGTextPositioningElementImpl extends _SVGTextContentElementImpl implements SVGTextPositioningElement native "*SVGTextPositioningElement" {

  final _SVGAnimatedLengthListImpl dx;

  final _SVGAnimatedLengthListImpl dy;

  final _SVGAnimatedNumberListImpl rotate;

  final _SVGAnimatedLengthListImpl x;

  final _SVGAnimatedLengthListImpl y;
}

class _SVGTitleElementImpl extends _SVGElementImpl implements SVGTitleElement native "*SVGTitleElement" {

  // From SVGLangSpace

  String xmllang;

  String xmlspace;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;
}

class _SVGTransformImpl implements SVGTransform native "*SVGTransform" {

  static final int SVG_TRANSFORM_MATRIX = 1;

  static final int SVG_TRANSFORM_ROTATE = 4;

  static final int SVG_TRANSFORM_SCALE = 3;

  static final int SVG_TRANSFORM_SKEWX = 5;

  static final int SVG_TRANSFORM_SKEWY = 6;

  static final int SVG_TRANSFORM_TRANSLATE = 2;

  static final int SVG_TRANSFORM_UNKNOWN = 0;

  final num angle;

  final _SVGMatrixImpl matrix;

  final int type;

  void setMatrix(_SVGMatrixImpl matrix) native;

  void setRotate(num angle, num cx, num cy) native;

  void setScale(num sx, num sy) native;

  void setSkewX(num angle) native;

  void setSkewY(num angle) native;

  void setTranslate(num tx, num ty) native;
}

class _SVGTransformListImpl implements SVGTransformList native "*SVGTransformList" {

  final int numberOfItems;

  _SVGTransformImpl appendItem(_SVGTransformImpl item) native;

  void clear() native;

  _SVGTransformImpl consolidate() native;

  _SVGTransformImpl createSVGTransformFromMatrix(_SVGMatrixImpl matrix) native;

  _SVGTransformImpl getItem(int index) native;

  _SVGTransformImpl initialize(_SVGTransformImpl item) native;

  _SVGTransformImpl insertItemBefore(_SVGTransformImpl item, int index) native;

  _SVGTransformImpl removeItem(int index) native;

  _SVGTransformImpl replaceItem(_SVGTransformImpl item, int index) native;
}

class _SVGTransformableImpl extends _SVGLocatableImpl implements SVGTransformable native "*SVGTransformable" {

  final _SVGAnimatedTransformListImpl transform;
}

class _SVGURIReferenceImpl implements SVGURIReference native "*SVGURIReference" {

  final _SVGAnimatedStringImpl href;
}

class _SVGUnitTypesImpl implements SVGUnitTypes native "*SVGUnitTypes" {

  static final int SVG_UNIT_TYPE_OBJECTBOUNDINGBOX = 2;

  static final int SVG_UNIT_TYPE_UNKNOWN = 0;

  static final int SVG_UNIT_TYPE_USERSPACEONUSE = 1;
}

class _SVGUseElementImpl extends _SVGElementImpl implements SVGUseElement native "*SVGUseElement" {

  final _SVGElementInstanceImpl animatedInstanceRoot;

  final _SVGAnimatedLengthImpl height;

  final _SVGElementInstanceImpl instanceRoot;

  final _SVGAnimatedLengthImpl width;

  final _SVGAnimatedLengthImpl x;

  final _SVGAnimatedLengthImpl y;

  // From SVGURIReference

  final _SVGAnimatedStringImpl href;

  // From SVGTests

  final _SVGStringListImpl requiredExtensions;

  final _SVGStringListImpl requiredFeatures;

  final _SVGStringListImpl systemLanguage;

  bool hasExtension(String extension) native;

  // From SVGLangSpace

  String xmllang;

  String xmlspace;

  // From SVGExternalResourcesRequired

  final _SVGAnimatedBooleanImpl externalResourcesRequired;

  // From SVGStylable

  _SVGAnimatedStringImpl get $dom_$dom_svgClassName() native "return this.className;";

  // Use implementation from Element.
  // final _CSSStyleDeclarationImpl style;

  _CSSValueImpl getPresentationAttribute(String name) native;

  // From SVGTransformable

  final _SVGAnimatedTransformListImpl transform;

  // From SVGLocatable

  final _SVGElementImpl farthestViewportElement;

  final _SVGElementImpl nearestViewportElement;

  _SVGRectImpl getBBox() native;

  _SVGMatrixImpl getCTM() native;

  _SVGMatrixImpl getScreenCTM() native;

  _SVGMatrixImpl getTransformToElement(_SVGElementImpl element) native;
}

class _SVGVKernElementImpl extends _SVGElementImpl implements SVGVKernElement native "*SVGVKernElement" {
}

class _SVGViewElementImpl extends _SVGElementImpl implements SVGViewElement native "*SVGViewElement" {

  final _SVGStringListImpl viewTarget;

  // From SVGExternalResourcesRequired

  final _SVGAnimatedBooleanImpl externalResourcesRequired;

  // From SVGFitToViewBox

  final _SVGAnimatedPreserveAspectRatioImpl preserveAspectRatio;

  final _SVGAnimatedRectImpl viewBox;

  // From SVGZoomAndPan

  int zoomAndPan;
}

class _SVGViewSpecImpl extends _SVGZoomAndPanImpl implements SVGViewSpec native "*SVGViewSpec" {

  final String preserveAspectRatioString;

  final _SVGTransformListImpl transform;

  final String transformString;

  final String viewBoxString;

  final _SVGElementImpl viewTarget;

  final String viewTargetString;

  // From SVGFitToViewBox

  final _SVGAnimatedPreserveAspectRatioImpl preserveAspectRatio;

  final _SVGAnimatedRectImpl viewBox;
}

class _SVGZoomAndPanImpl implements SVGZoomAndPan native "*SVGZoomAndPan" {

  static final int SVG_ZOOMANDPAN_DISABLE = 1;

  static final int SVG_ZOOMANDPAN_MAGNIFY = 2;

  static final int SVG_ZOOMANDPAN_UNKNOWN = 0;

  int zoomAndPan;
}

class _SVGZoomEventImpl extends _UIEventImpl implements SVGZoomEvent native "*SVGZoomEvent" {

  final num newScale;

  final _SVGPointImpl newTranslate;

  final num previousScale;

  final _SVGPointImpl previousTranslate;

  final _SVGRectImpl zoomRectScreen;
}

class _ScreenImpl implements Screen native "*Screen" {

  final int availHeight;

  final int availLeft;

  final int availTop;

  final int availWidth;

  final int colorDepth;

  final int height;

  final int pixelDepth;

  final int width;
}

class _ScriptElementImpl extends _ElementImpl implements ScriptElement native "*HTMLScriptElement" {

  bool async;

  String charset;

  String crossOrigin;

  bool defer;

  String event;

  String htmlFor;

  String src;

  String type;
}

class _ScriptProfileImpl implements ScriptProfile native "*ScriptProfile" {

  final _ScriptProfileNodeImpl head;

  final String title;

  final int uid;
}

class _ScriptProfileNodeImpl implements ScriptProfileNode native "*ScriptProfileNode" {

  final int callUID;

  final List<ScriptProfileNode> children;

  final String functionName;

  final int lineNumber;

  final int numberOfCalls;

  final num selfTime;

  final num totalTime;

  final String url;

  final bool visible;
}

class _SelectElementImpl extends _ElementImpl implements SelectElement native "*HTMLSelectElement" {

  bool autofocus;

  bool disabled;

  final _FormElementImpl form;

  final _NodeListImpl labels;

  int length;

  bool multiple;

  String name;

  final _HTMLOptionsCollectionImpl options;

  bool required;

  int selectedIndex;

  final _HTMLCollectionImpl selectedOptions;

  int size;

  final String type;

  final String validationMessage;

  final _ValidityStateImpl validity;

  String value;

  final bool willValidate;

  void add(_ElementImpl element, _ElementImpl before) native;

  bool checkValidity() native;

  _NodeImpl item(int index) native;

  _NodeImpl namedItem(String name) native;

  void setCustomValidity(String error) native;
}

class _SessionDescriptionImpl implements SessionDescription native "*SessionDescription" {

  void addCandidate(_IceCandidateImpl candidate) native;

  String toSdp() native;
}

class _ShadowElementImpl extends _ElementImpl implements ShadowElement native "*HTMLShadowElement" {
}

class _ShadowRootImpl extends _DocumentFragmentImpl implements ShadowRoot native "*ShadowRoot" {

  final _ElementImpl activeElement;

  final _ElementImpl host;

  String innerHTML;

  final _DOMSelectionImpl selection;

  _ElementImpl getElementById(String elementId) native;

  _NodeListImpl getElementsByClassName(String className) native;

  _NodeListImpl getElementsByTagName(String tagName) native;

  _NodeListImpl getElementsByTagNameNS(String namespaceURI, String localName) native;
}

class _SharedWorkerImpl extends _AbstractWorkerImpl implements SharedWorker native "*SharedWorker" {

  final _MessagePortImpl port;
}

class _SharedWorkerContextImpl extends _WorkerContextImpl implements SharedWorkerContext native "*SharedWorkerContext" {

  _SharedWorkerContextEventsImpl get on() =>
    new _SharedWorkerContextEventsImpl(this);

  final String name;
}

class _SharedWorkerContextEventsImpl extends _WorkerContextEventsImpl implements SharedWorkerContextEvents {
  _SharedWorkerContextEventsImpl(_ptr) : super(_ptr);

  EventListenerList get connect() => _get('connect');
}

class _SourceElementImpl extends _ElementImpl implements SourceElement native "*HTMLSourceElement" {

  String media;

  String src;

  String type;
}

class _SpanElementImpl extends _ElementImpl implements SpanElement native "*HTMLSpanElement" {
}

class _SpeechGrammarImpl implements SpeechGrammar native "*SpeechGrammar" {

  String src;

  num weight;
}

class _SpeechGrammarListImpl implements SpeechGrammarList native "*SpeechGrammarList" {

  final int length;

  void addFromString(String string, [num weight = null]) native;

  void addFromUri(String src, [num weight = null]) native;

  _SpeechGrammarImpl item(int index) native;
}

class _SpeechInputEventImpl extends _EventImpl implements SpeechInputEvent native "*SpeechInputEvent" {

  final _SpeechInputResultListImpl results;
}

class _SpeechInputResultImpl implements SpeechInputResult native "*SpeechInputResult" {

  final num confidence;

  final String utterance;
}

class _SpeechInputResultListImpl implements SpeechInputResultList native "*SpeechInputResultList" {

  final int length;

  _SpeechInputResultImpl item(int index) native;
}

class _SpeechRecognitionImpl extends _EventTargetImpl implements SpeechRecognition native "*SpeechRecognition" {

  _SpeechRecognitionEventsImpl get on() =>
    new _SpeechRecognitionEventsImpl(this);

  bool continuous;

  _SpeechGrammarListImpl grammars;

  String lang;

  void abort() native;

  void $dom_addEventListener(String type, EventListener listener, [bool useCapture = null]) native "addEventListener";

  bool $dom_dispatchEvent(_EventImpl evt) native "dispatchEvent";

  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture = null]) native "removeEventListener";

  void start() native;

  void stop() native;
}

class _SpeechRecognitionEventsImpl extends _EventsImpl implements SpeechRecognitionEvents {
  _SpeechRecognitionEventsImpl(_ptr) : super(_ptr);

  EventListenerList get audioEnd() => _get('audioend');

  EventListenerList get audioStart() => _get('audiostart');

  EventListenerList get end() => _get('end');

  EventListenerList get error() => _get('error');

  EventListenerList get noMatch() => _get('nomatch');

  EventListenerList get result() => _get('result');

  EventListenerList get resultDeleted() => _get('resultdeleted');

  EventListenerList get soundEnd() => _get('soundend');

  EventListenerList get soundStart() => _get('soundstart');

  EventListenerList get speechEnd() => _get('speechend');

  EventListenerList get speechStart() => _get('speechstart');

  EventListenerList get start() => _get('start');
}

class _SpeechRecognitionAlternativeImpl implements SpeechRecognitionAlternative native "*SpeechRecognitionAlternative" {

  final num confidence;

  final String transcript;
}

class _SpeechRecognitionErrorImpl implements SpeechRecognitionError native "*SpeechRecognitionError" {

  static final int ABORTED = 2;

  static final int AUDIO_CAPTURE = 3;

  static final int BAD_GRAMMAR = 7;

  static final int LANGUAGE_NOT_SUPPORTED = 8;

  static final int NETWORK = 4;

  static final int NOT_ALLOWED = 5;

  static final int NO_SPEECH = 1;

  static final int OTHER = 0;

  static final int SERVICE_NOT_ALLOWED = 6;

  final int code;

  final String message;
}

class _SpeechRecognitionEventImpl extends _EventImpl implements SpeechRecognitionEvent native "*SpeechRecognitionEvent" {

  final _SpeechRecognitionErrorImpl error;

  final _SpeechRecognitionResultImpl result;

  final _SpeechRecognitionResultListImpl resultHistory;

  final int resultIndex;
}

class _SpeechRecognitionResultImpl implements SpeechRecognitionResult native "*SpeechRecognitionResult" {

  bool get finalValue() native "return this.final;";

  final int length;

  _SpeechRecognitionAlternativeImpl item(int index) native;
}

class _SpeechRecognitionResultListImpl implements SpeechRecognitionResultList native "*SpeechRecognitionResultList" {

  final int length;

  _SpeechRecognitionResultImpl item(int index) native;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _StorageImpl implements Storage native "*Storage" {

  // TODO(nweiz): update this when maps support lazy iteration
  bool containsValue(String value) => getValues().some((e) => e == value);

  bool containsKey(String key) => $dom_getItem(key) != null;

  String operator [](String key) => $dom_getItem(key);

  void operator []=(String key, String value) => $dom_setItem(key, value);

  String putIfAbsent(String key, String ifAbsent()) {
    if (!containsKey(key)) this[key] = ifAbsent();
    return this[key];
  }

  String remove(String key) {
    final value = this[key];
    $dom_removeItem(key);
    return value;
  }

  void clear() => $dom_clear();

  void forEach(void f(String key, String value)) {
    for (var i = 0; true; i++) {
      final key = $dom_key(i);
      if (key == null) return;

      f(key, this[key]);
    }
  }

  Collection<String> getKeys() {
    final keys = [];
    forEach((k, v) => keys.add(k));
    return keys;
  }

  Collection<String> getValues() {
    final values = [];
    forEach((k, v) => values.add(v));
    return values;
  }

  int get length() => $dom_length;

  bool isEmpty() => $dom_key(0) == null;

  int get $dom_length() native "return this.length;";

  void $dom_clear() native "clear";

  String $dom_getItem(String key) native "getItem";

  String $dom_key(int index) native "key";

  void $dom_removeItem(String key) native "removeItem";

  void $dom_setItem(String key, String data) native "setItem";

}

class _StorageEventImpl extends _EventImpl implements StorageEvent native "*StorageEvent" {

  final String key;

  final String newValue;

  final String oldValue;

  final _StorageImpl storageArea;

  final String url;

  void initStorageEvent(String typeArg, bool canBubbleArg, bool cancelableArg, String keyArg, String oldValueArg, String newValueArg, String urlArg, _StorageImpl storageAreaArg) native;
}

class _StorageInfoImpl implements StorageInfo native "*StorageInfo" {

  static final int PERSISTENT = 1;

  static final int TEMPORARY = 0;

  void queryUsageAndQuota(int storageType, [StorageInfoUsageCallback usageCallback = null, StorageInfoErrorCallback errorCallback = null]) native;

  void requestQuota(int storageType, int newQuotaInBytes, [StorageInfoQuotaCallback quotaCallback = null, StorageInfoErrorCallback errorCallback = null]) native;
}

class _StyleElementImpl extends _ElementImpl implements StyleElement native "*HTMLStyleElement" {

  bool disabled;

  String media;

  bool scoped;

  final _StyleSheetImpl sheet;

  String type;
}

class _StyleMediaImpl implements StyleMedia native "*StyleMedia" {

  final String type;

  bool matchMedium(String mediaquery) native;
}

class _StyleSheetImpl implements StyleSheet native "*StyleSheet" {

  bool disabled;

  final String href;

  final _MediaListImpl media;

  final _NodeImpl ownerNode;

  final _StyleSheetImpl parentStyleSheet;

  final String title;

  final String type;
}

class _StyleSheetListImpl implements StyleSheetList native "*StyleSheetList" {

  final int length;

  _StyleSheetImpl operator[](int index) native "return this[index];";

  void operator[]=(int index, _StyleSheetImpl value) {
    throw new UnsupportedOperationException("Cannot assign element of immutable List.");
  }
  // -- start List<StyleSheet> mixins.
  // StyleSheet is the element type.

  // From Iterable<StyleSheet>:

  Iterator<StyleSheet> iterator() {
    // Note: NodeLists are not fixed size. And most probably length shouldn't
    // be cached in both iterator _and_ forEach method. For now caching it
    // for consistency.
    return new _FixedSizeListIterator<StyleSheet>(this);
  }

  // From Collection<StyleSheet>:

  void add(StyleSheet value) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void addLast(StyleSheet value) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void addAll(Collection<StyleSheet> collection) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void forEach(void f(StyleSheet element)) => _Collections.forEach(this, f);

  Collection map(f(StyleSheet element)) => _Collections.map(this, [], f);

  Collection<StyleSheet> filter(bool f(StyleSheet element)) =>
     _Collections.filter(this, <StyleSheet>[], f);

  bool every(bool f(StyleSheet element)) => _Collections.every(this, f);

  bool some(bool f(StyleSheet element)) => _Collections.some(this, f);

  bool isEmpty() => this.length == 0;

  // From List<StyleSheet>:

  void sort(int compare(StyleSheet a, StyleSheet b)) {
    throw new UnsupportedOperationException("Cannot sort immutable List.");
  }

  int indexOf(StyleSheet element, [int start = 0]) =>
      _Lists.indexOf(this, element, start, this.length);

  int lastIndexOf(StyleSheet element, [int start]) {
    if (start === null) start = length - 1;
    return _Lists.lastIndexOf(this, element, start);
  }

  StyleSheet last() => this[length - 1];

  StyleSheet removeLast() {
    throw new UnsupportedOperationException("Cannot removeLast on immutable List.");
  }

  // FIXME: implement these.
  void setRange(int start, int rangeLength, List<StyleSheet> from, [int startFrom]) {
    throw new UnsupportedOperationException("Cannot setRange on immutable List.");
  }

  void removeRange(int start, int rangeLength) {
    throw new UnsupportedOperationException("Cannot removeRange on immutable List.");
  }

  void insertRange(int start, int rangeLength, [StyleSheet initialValue]) {
    throw new UnsupportedOperationException("Cannot insertRange on immutable List.");
  }

  List<StyleSheet> getRange(int start, int rangeLength) =>
      _Lists.getRange(this, start, rangeLength, <StyleSheet>[]);

  // -- end List<StyleSheet> mixins.

  _StyleSheetImpl item(int index) native;
}

class _TableCaptionElementImpl extends _ElementImpl implements TableCaptionElement native "*HTMLTableCaptionElement" {

  String align;
}

class _TableCellElementImpl extends _ElementImpl implements TableCellElement native "*HTMLTableCellElement" {

  String abbr;

  String align;

  String axis;

  String bgColor;

  final int cellIndex;

  String ch;

  String chOff;

  int colSpan;

  String headers;

  String height;

  bool noWrap;

  int rowSpan;

  String scope;

  String vAlign;

  String width;
}

class _TableColElementImpl extends _ElementImpl implements TableColElement native "*HTMLTableColElement" {

  String align;

  String ch;

  String chOff;

  int span;

  String vAlign;

  String width;
}

class _TableElementImpl extends _ElementImpl implements TableElement native "*HTMLTableElement" {

  String align;

  String bgColor;

  String border;

  _TableCaptionElementImpl caption;

  String cellPadding;

  String cellSpacing;

  String frame;

  final _HTMLCollectionImpl rows;

  String rules;

  String summary;

  final _HTMLCollectionImpl tBodies;

  _TableSectionElementImpl tFoot;

  _TableSectionElementImpl tHead;

  String width;

  _ElementImpl createCaption() native;

  _ElementImpl createTFoot() native;

  _ElementImpl createTHead() native;

  void deleteCaption() native;

  void deleteRow(int index) native;

  void deleteTFoot() native;

  void deleteTHead() native;

  _ElementImpl insertRow(int index) native;
}

class _TableRowElementImpl extends _ElementImpl implements TableRowElement native "*HTMLTableRowElement" {

  String align;

  String bgColor;

  final _HTMLCollectionImpl cells;

  String ch;

  String chOff;

  final int rowIndex;

  final int sectionRowIndex;

  String vAlign;

  void deleteCell(int index) native;

  _ElementImpl insertCell(int index) native;
}

class _TableSectionElementImpl extends _ElementImpl implements TableSectionElement native "*HTMLTableSectionElement" {

  String align;

  String ch;

  String chOff;

  final _HTMLCollectionImpl rows;

  String vAlign;

  void deleteRow(int index) native;

  _ElementImpl insertRow(int index) native;
}

class _TextImpl extends _CharacterDataImpl implements Text native "*Text" {

  final String wholeText;

  _TextImpl replaceWholeText(String content) native;

  _TextImpl splitText(int offset) native;
}

class _TextAreaElementImpl extends _ElementImpl implements TextAreaElement native "*HTMLTextAreaElement" {

  bool autofocus;

  int cols;

  String defaultValue;

  bool disabled;

  final _FormElementImpl form;

  final _NodeListImpl labels;

  int maxLength;

  String name;

  String placeholder;

  bool readOnly;

  bool required;

  int rows;

  String selectionDirection;

  int selectionEnd;

  int selectionStart;

  final int textLength;

  final String type;

  final String validationMessage;

  final _ValidityStateImpl validity;

  String value;

  final bool willValidate;

  String wrap;

  bool checkValidity() native;

  void select() native;

  void setCustomValidity(String error) native;

  void setSelectionRange(int start, int end, [String direction = null]) native;
}

class _TextEventImpl extends _UIEventImpl implements TextEvent native "*TextEvent" {

  final String data;

  void initTextEvent(String typeArg, bool canBubbleArg, bool cancelableArg, _WindowImpl viewArg, String dataArg) native;
}

class _TextMetricsImpl implements TextMetrics native "*TextMetrics" {

  final num width;
}

class _TextTrackImpl extends _EventTargetImpl implements TextTrack native "*TextTrack" {

  _TextTrackEventsImpl get on() =>
    new _TextTrackEventsImpl(this);

  static final int DISABLED = 0;

  static final int HIDDEN = 1;

  static final int SHOWING = 2;

  final _TextTrackCueListImpl activeCues;

  final _TextTrackCueListImpl cues;

  final String kind;

  final String label;

  final String language;

  int mode;

  void addCue(_TextTrackCueImpl cue) native;

  void $dom_addEventListener(String type, EventListener listener, [bool useCapture = null]) native "addEventListener";

  bool $dom_dispatchEvent(_EventImpl evt) native "dispatchEvent";

  void removeCue(_TextTrackCueImpl cue) native;

  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture = null]) native "removeEventListener";
}

class _TextTrackEventsImpl extends _EventsImpl implements TextTrackEvents {
  _TextTrackEventsImpl(_ptr) : super(_ptr);

  EventListenerList get cueChange() => _get('cuechange');
}

class _TextTrackCueImpl extends _EventTargetImpl implements TextTrackCue native "*TextTrackCue" {

  _TextTrackCueEventsImpl get on() =>
    new _TextTrackCueEventsImpl(this);

  String align;

  num endTime;

  String id;

  int line;

  bool pauseOnExit;

  int position;

  int size;

  bool snapToLines;

  num startTime;

  String text;

  final _TextTrackImpl track;

  String vertical;

  void $dom_addEventListener(String type, EventListener listener, [bool useCapture = null]) native "addEventListener";

  bool $dom_dispatchEvent(_EventImpl evt) native "dispatchEvent";

  _DocumentFragmentImpl getCueAsHTML() native;

  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture = null]) native "removeEventListener";
}

class _TextTrackCueEventsImpl extends _EventsImpl implements TextTrackCueEvents {
  _TextTrackCueEventsImpl(_ptr) : super(_ptr);

  EventListenerList get enter() => _get('enter');

  EventListenerList get exit() => _get('exit');
}

class _TextTrackCueListImpl implements TextTrackCueList native "*TextTrackCueList" {

  final int length;

  _TextTrackCueImpl getCueById(String id) native;

  _TextTrackCueImpl item(int index) native;
}

class _TextTrackListImpl extends _EventTargetImpl implements TextTrackList native "*TextTrackList" {

  _TextTrackListEventsImpl get on() =>
    new _TextTrackListEventsImpl(this);

  final int length;

  void $dom_addEventListener(String type, EventListener listener, [bool useCapture = null]) native "addEventListener";

  bool $dom_dispatchEvent(_EventImpl evt) native "dispatchEvent";

  _TextTrackImpl item(int index) native;

  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture = null]) native "removeEventListener";
}

class _TextTrackListEventsImpl extends _EventsImpl implements TextTrackListEvents {
  _TextTrackListEventsImpl(_ptr) : super(_ptr);

  EventListenerList get addTrack() => _get('addtrack');
}

class _TimeRangesImpl implements TimeRanges native "*TimeRanges" {

  final int length;

  num end(int index) native;

  num start(int index) native;
}

class _TitleElementImpl extends _ElementImpl implements TitleElement native "*HTMLTitleElement" {
}

class _TouchImpl implements Touch native "*Touch" {

  final int clientX;

  final int clientY;

  final int identifier;

  final int pageX;

  final int pageY;

  final int screenX;

  final int screenY;

  final _EventTargetImpl target;

  final num webkitForce;

  final int webkitRadiusX;

  final int webkitRadiusY;

  final num webkitRotationAngle;
}

class _TouchEventImpl extends _UIEventImpl implements TouchEvent native "*TouchEvent" {

  final bool altKey;

  final _TouchListImpl changedTouches;

  final bool ctrlKey;

  final bool metaKey;

  final bool shiftKey;

  final _TouchListImpl targetTouches;

  final _TouchListImpl touches;

  void initTouchEvent(_TouchListImpl touches, _TouchListImpl targetTouches, _TouchListImpl changedTouches, String type, _WindowImpl view, int screenX, int screenY, int clientX, int clientY, bool ctrlKey, bool altKey, bool shiftKey, bool metaKey) native;
}

class _TouchListImpl implements TouchList native "*TouchList" {

  final int length;

  _TouchImpl operator[](int index) native "return this[index];";

  void operator[]=(int index, _TouchImpl value) {
    throw new UnsupportedOperationException("Cannot assign element of immutable List.");
  }
  // -- start List<Touch> mixins.
  // Touch is the element type.

  // From Iterable<Touch>:

  Iterator<Touch> iterator() {
    // Note: NodeLists are not fixed size. And most probably length shouldn't
    // be cached in both iterator _and_ forEach method. For now caching it
    // for consistency.
    return new _FixedSizeListIterator<Touch>(this);
  }

  // From Collection<Touch>:

  void add(Touch value) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void addLast(Touch value) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void addAll(Collection<Touch> collection) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void forEach(void f(Touch element)) => _Collections.forEach(this, f);

  Collection map(f(Touch element)) => _Collections.map(this, [], f);

  Collection<Touch> filter(bool f(Touch element)) =>
     _Collections.filter(this, <Touch>[], f);

  bool every(bool f(Touch element)) => _Collections.every(this, f);

  bool some(bool f(Touch element)) => _Collections.some(this, f);

  bool isEmpty() => this.length == 0;

  // From List<Touch>:

  void sort(int compare(Touch a, Touch b)) {
    throw new UnsupportedOperationException("Cannot sort immutable List.");
  }

  int indexOf(Touch element, [int start = 0]) =>
      _Lists.indexOf(this, element, start, this.length);

  int lastIndexOf(Touch element, [int start]) {
    if (start === null) start = length - 1;
    return _Lists.lastIndexOf(this, element, start);
  }

  Touch last() => this[length - 1];

  Touch removeLast() {
    throw new UnsupportedOperationException("Cannot removeLast on immutable List.");
  }

  // FIXME: implement these.
  void setRange(int start, int rangeLength, List<Touch> from, [int startFrom]) {
    throw new UnsupportedOperationException("Cannot setRange on immutable List.");
  }

  void removeRange(int start, int rangeLength) {
    throw new UnsupportedOperationException("Cannot removeRange on immutable List.");
  }

  void insertRange(int start, int rangeLength, [Touch initialValue]) {
    throw new UnsupportedOperationException("Cannot insertRange on immutable List.");
  }

  List<Touch> getRange(int start, int rangeLength) =>
      _Lists.getRange(this, start, rangeLength, <Touch>[]);

  // -- end List<Touch> mixins.

  _TouchImpl item(int index) native;
}

class _TrackElementImpl extends _ElementImpl implements TrackElement native "*HTMLTrackElement" {

  static final int ERROR = 3;

  static final int LOADED = 2;

  static final int LOADING = 1;

  static final int NONE = 0;

  bool get defaultValue() native "return this.default;";

  void set defaultValue(bool value) native "this.default = value;";

  String kind;

  String label;

  final int readyState;

  String src;

  String srclang;

  final _TextTrackImpl track;
}

class _TrackEventImpl extends _EventImpl implements TrackEvent native "*TrackEvent" {

  final Object track;
}

class _TransitionEventImpl extends _EventImpl implements TransitionEvent native "*WebKitTransitionEvent" {

  final num elapsedTime;

  final String propertyName;
}

class _TreeWalkerImpl implements TreeWalker native "*TreeWalker" {

  _NodeImpl currentNode;

  final bool expandEntityReferences;

  final _NodeFilterImpl filter;

  final _NodeImpl root;

  final int whatToShow;

  _NodeImpl firstChild() native;

  _NodeImpl lastChild() native;

  _NodeImpl nextNode() native;

  _NodeImpl nextSibling() native;

  _NodeImpl parentNode() native;

  _NodeImpl previousNode() native;

  _NodeImpl previousSibling() native;
}

class _UIEventImpl extends _EventImpl implements UIEvent native "*UIEvent" {

  final int charCode;

  final int detail;

  final int keyCode;

  final int layerX;

  final int layerY;

  final int pageX;

  final int pageY;

  final _WindowImpl view;

  final int which;

  void initUIEvent(String type, bool canBubble, bool cancelable, _WindowImpl view, int detail) native;
}

class _UListElementImpl extends _ElementImpl implements UListElement native "*HTMLUListElement" {

  bool compact;

  String type;
}

class _Uint16ArrayImpl extends _ArrayBufferViewImpl implements Uint16Array, List<int> native "*Uint16Array" {

  static final int BYTES_PER_ELEMENT = 2;

  final int length;

  int operator[](int index) native "return this[index];";

  void operator[]=(int index, int value) native "this[index] = value";
  // -- start List<int> mixins.
  // int is the element type.

  // From Iterable<int>:

  Iterator<int> iterator() {
    // Note: NodeLists are not fixed size. And most probably length shouldn't
    // be cached in both iterator _and_ forEach method. For now caching it
    // for consistency.
    return new _FixedSizeListIterator<int>(this);
  }

  // From Collection<int>:

  void add(int value) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void addLast(int value) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void addAll(Collection<int> collection) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void forEach(void f(int element)) => _Collections.forEach(this, f);

  Collection map(f(int element)) => _Collections.map(this, [], f);

  Collection<int> filter(bool f(int element)) =>
     _Collections.filter(this, <int>[], f);

  bool every(bool f(int element)) => _Collections.every(this, f);

  bool some(bool f(int element)) => _Collections.some(this, f);

  bool isEmpty() => this.length == 0;

  // From List<int>:

  void sort(int compare(int a, int b)) {
    throw new UnsupportedOperationException("Cannot sort immutable List.");
  }

  int indexOf(int element, [int start = 0]) =>
      _Lists.indexOf(this, element, start, this.length);

  int lastIndexOf(int element, [int start]) {
    if (start === null) start = length - 1;
    return _Lists.lastIndexOf(this, element, start);
  }

  int last() => this[length - 1];

  int removeLast() {
    throw new UnsupportedOperationException("Cannot removeLast on immutable List.");
  }

  // FIXME: implement these.
  void setRange(int start, int rangeLength, List<int> from, [int startFrom]) {
    throw new UnsupportedOperationException("Cannot setRange on immutable List.");
  }

  void removeRange(int start, int rangeLength) {
    throw new UnsupportedOperationException("Cannot removeRange on immutable List.");
  }

  void insertRange(int start, int rangeLength, [int initialValue]) {
    throw new UnsupportedOperationException("Cannot insertRange on immutable List.");
  }

  List<int> getRange(int start, int rangeLength) =>
      _Lists.getRange(this, start, rangeLength, <int>[]);

  // -- end List<int> mixins.

  void setElements(Object array, [int offset = null]) native "set";

  _Uint16ArrayImpl subarray(int start, [int end = null]) native;
}

class _Uint32ArrayImpl extends _ArrayBufferViewImpl implements Uint32Array, List<int> native "*Uint32Array" {

  static final int BYTES_PER_ELEMENT = 4;

  final int length;

  int operator[](int index) native "return this[index];";

  void operator[]=(int index, int value) native "this[index] = value";
  // -- start List<int> mixins.
  // int is the element type.

  // From Iterable<int>:

  Iterator<int> iterator() {
    // Note: NodeLists are not fixed size. And most probably length shouldn't
    // be cached in both iterator _and_ forEach method. For now caching it
    // for consistency.
    return new _FixedSizeListIterator<int>(this);
  }

  // From Collection<int>:

  void add(int value) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void addLast(int value) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void addAll(Collection<int> collection) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void forEach(void f(int element)) => _Collections.forEach(this, f);

  Collection map(f(int element)) => _Collections.map(this, [], f);

  Collection<int> filter(bool f(int element)) =>
     _Collections.filter(this, <int>[], f);

  bool every(bool f(int element)) => _Collections.every(this, f);

  bool some(bool f(int element)) => _Collections.some(this, f);

  bool isEmpty() => this.length == 0;

  // From List<int>:

  void sort(int compare(int a, int b)) {
    throw new UnsupportedOperationException("Cannot sort immutable List.");
  }

  int indexOf(int element, [int start = 0]) =>
      _Lists.indexOf(this, element, start, this.length);

  int lastIndexOf(int element, [int start]) {
    if (start === null) start = length - 1;
    return _Lists.lastIndexOf(this, element, start);
  }

  int last() => this[length - 1];

  int removeLast() {
    throw new UnsupportedOperationException("Cannot removeLast on immutable List.");
  }

  // FIXME: implement these.
  void setRange(int start, int rangeLength, List<int> from, [int startFrom]) {
    throw new UnsupportedOperationException("Cannot setRange on immutable List.");
  }

  void removeRange(int start, int rangeLength) {
    throw new UnsupportedOperationException("Cannot removeRange on immutable List.");
  }

  void insertRange(int start, int rangeLength, [int initialValue]) {
    throw new UnsupportedOperationException("Cannot insertRange on immutable List.");
  }

  List<int> getRange(int start, int rangeLength) =>
      _Lists.getRange(this, start, rangeLength, <int>[]);

  // -- end List<int> mixins.

  void setElements(Object array, [int offset = null]) native "set";

  _Uint32ArrayImpl subarray(int start, [int end = null]) native;
}

class _Uint8ArrayImpl extends _ArrayBufferViewImpl implements Uint8Array, List<int> native "*Uint8Array" {

  static final int BYTES_PER_ELEMENT = 1;

  final int length;

  int operator[](int index) native "return this[index];";

  void operator[]=(int index, int value) native "this[index] = value";
  // -- start List<int> mixins.
  // int is the element type.

  // From Iterable<int>:

  Iterator<int> iterator() {
    // Note: NodeLists are not fixed size. And most probably length shouldn't
    // be cached in both iterator _and_ forEach method. For now caching it
    // for consistency.
    return new _FixedSizeListIterator<int>(this);
  }

  // From Collection<int>:

  void add(int value) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void addLast(int value) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void addAll(Collection<int> collection) {
    throw new UnsupportedOperationException("Cannot add to immutable List.");
  }

  void forEach(void f(int element)) => _Collections.forEach(this, f);

  Collection map(f(int element)) => _Collections.map(this, [], f);

  Collection<int> filter(bool f(int element)) =>
     _Collections.filter(this, <int>[], f);

  bool every(bool f(int element)) => _Collections.every(this, f);

  bool some(bool f(int element)) => _Collections.some(this, f);

  bool isEmpty() => this.length == 0;

  // From List<int>:

  void sort(int compare(int a, int b)) {
    throw new UnsupportedOperationException("Cannot sort immutable List.");
  }

  int indexOf(int element, [int start = 0]) =>
      _Lists.indexOf(this, element, start, this.length);

  int lastIndexOf(int element, [int start]) {
    if (start === null) start = length - 1;
    return _Lists.lastIndexOf(this, element, start);
  }

  int last() => this[length - 1];

  int removeLast() {
    throw new UnsupportedOperationException("Cannot removeLast on immutable List.");
  }

  // FIXME: implement these.
  void setRange(int start, int rangeLength, List<int> from, [int startFrom]) {
    throw new UnsupportedOperationException("Cannot setRange on immutable List.");
  }

  void removeRange(int start, int rangeLength) {
    throw new UnsupportedOperationException("Cannot removeRange on immutable List.");
  }

  void insertRange(int start, int rangeLength, [int initialValue]) {
    throw new UnsupportedOperationException("Cannot insertRange on immutable List.");
  }

  List<int> getRange(int start, int rangeLength) =>
      _Lists.getRange(this, start, rangeLength, <int>[]);

  // -- end List<int> mixins.

  void setElements(Object array, [int offset = null]) native "set";

  _Uint8ArrayImpl subarray(int start, [int end = null]) native;
}

class _Uint8ClampedArrayImpl extends _Uint8ArrayImpl implements Uint8ClampedArray, List<int> native "*Uint8ClampedArray" {

  // Use implementation from Uint8Array.
  // final int length;

  void setElements(Object array, [int offset = null]) native "set";

  _Uint8ClampedArrayImpl subarray(int start, [int end = null]) native;
}

class _UnknownElementImpl extends _ElementImpl implements UnknownElement native "*HTMLUnknownElement" {
}

class _ValidityStateImpl implements ValidityState native "*ValidityState" {

  final bool customError;

  final bool patternMismatch;

  final bool rangeOverflow;

  final bool rangeUnderflow;

  final bool stepMismatch;

  final bool tooLong;

  final bool typeMismatch;

  final bool valid;

  final bool valueMissing;
}

class _VideoElementImpl extends _MediaElementImpl implements VideoElement native "*HTMLVideoElement" {

  int height;

  String poster;

  final int videoHeight;

  final int videoWidth;

  final int webkitDecodedFrameCount;

  final bool webkitDisplayingFullscreen;

  final int webkitDroppedFrameCount;

  final bool webkitSupportsFullscreen;

  int width;

  void webkitEnterFullScreen() native;

  void webkitEnterFullscreen() native;

  void webkitExitFullScreen() native;

  void webkitExitFullscreen() native;
}

class _WaveShaperNodeImpl extends _AudioNodeImpl implements WaveShaperNode native "*WaveShaperNode" {

  _Float32ArrayImpl curve;
}

class _WaveTableImpl implements WaveTable native "*WaveTable" {
}

class _WebGLActiveInfoImpl implements WebGLActiveInfo native "*WebGLActiveInfo" {

  final String name;

  final int size;

  final int type;
}

class _WebGLBufferImpl implements WebGLBuffer native "*WebGLBuffer" {
}

class _WebGLCompressedTextureS3TCImpl implements WebGLCompressedTextureS3TC native "*WebGLCompressedTextureS3TC" {

  static final int COMPRESSED_RGBA_S3TC_DXT1_EXT = 0x83F1;

  static final int COMPRESSED_RGBA_S3TC_DXT3_EXT = 0x83F2;

  static final int COMPRESSED_RGBA_S3TC_DXT5_EXT = 0x83F3;

  static final int COMPRESSED_RGB_S3TC_DXT1_EXT = 0x83F0;
}

class _WebGLContextAttributesImpl implements WebGLContextAttributes native "*WebGLContextAttributes" {

  bool alpha;

  bool antialias;

  bool depth;

  bool premultipliedAlpha;

  bool preserveDrawingBuffer;

  bool stencil;
}

class _WebGLContextEventImpl extends _EventImpl implements WebGLContextEvent native "*WebGLContextEvent" {

  final String statusMessage;
}

class _WebGLDebugRendererInfoImpl implements WebGLDebugRendererInfo native "*WebGLDebugRendererInfo" {

  static final int UNMASKED_RENDERER_WEBGL = 0x9246;

  static final int UNMASKED_VENDOR_WEBGL = 0x9245;
}

class _WebGLDebugShadersImpl implements WebGLDebugShaders native "*WebGLDebugShaders" {

  String getTranslatedShaderSource(_WebGLShaderImpl shader) native;
}

class _WebGLFramebufferImpl implements WebGLFramebuffer native "*WebGLFramebuffer" {
}

class _WebGLLoseContextImpl implements WebGLLoseContext native "*WebGLLoseContext" {

  void loseContext() native;

  void restoreContext() native;
}

class _WebGLProgramImpl implements WebGLProgram native "*WebGLProgram" {
}

class _WebGLRenderbufferImpl implements WebGLRenderbuffer native "*WebGLRenderbuffer" {
}

class _WebGLRenderingContextImpl extends _CanvasRenderingContextImpl implements WebGLRenderingContext native "*WebGLRenderingContext" {

  static final int ACTIVE_ATTRIBUTES = 0x8B89;

  static final int ACTIVE_TEXTURE = 0x84E0;

  static final int ACTIVE_UNIFORMS = 0x8B86;

  static final int ALIASED_LINE_WIDTH_RANGE = 0x846E;

  static final int ALIASED_POINT_SIZE_RANGE = 0x846D;

  static final int ALPHA = 0x1906;

  static final int ALPHA_BITS = 0x0D55;

  static final int ALWAYS = 0x0207;

  static final int ARRAY_BUFFER = 0x8892;

  static final int ARRAY_BUFFER_BINDING = 0x8894;

  static final int ATTACHED_SHADERS = 0x8B85;

  static final int BACK = 0x0405;

  static final int BLEND = 0x0BE2;

  static final int BLEND_COLOR = 0x8005;

  static final int BLEND_DST_ALPHA = 0x80CA;

  static final int BLEND_DST_RGB = 0x80C8;

  static final int BLEND_EQUATION = 0x8009;

  static final int BLEND_EQUATION_ALPHA = 0x883D;

  static final int BLEND_EQUATION_RGB = 0x8009;

  static final int BLEND_SRC_ALPHA = 0x80CB;

  static final int BLEND_SRC_RGB = 0x80C9;

  static final int BLUE_BITS = 0x0D54;

  static final int BOOL = 0x8B56;

  static final int BOOL_VEC2 = 0x8B57;

  static final int BOOL_VEC3 = 0x8B58;

  static final int BOOL_VEC4 = 0x8B59;

  static final int BROWSER_DEFAULT_WEBGL = 0x9244;

  static final int BUFFER_SIZE = 0x8764;

  static final int BUFFER_USAGE = 0x8765;

  static final int BYTE = 0x1400;

  static final int CCW = 0x0901;

  static final int CLAMP_TO_EDGE = 0x812F;

  static final int COLOR_ATTACHMENT0 = 0x8CE0;

  static final int COLOR_BUFFER_BIT = 0x00004000;

  static final int COLOR_CLEAR_VALUE = 0x0C22;

  static final int COLOR_WRITEMASK = 0x0C23;

  static final int COMPILE_STATUS = 0x8B81;

  static final int COMPRESSED_TEXTURE_FORMATS = 0x86A3;

  static final int CONSTANT_ALPHA = 0x8003;

  static final int CONSTANT_COLOR = 0x8001;

  static final int CONTEXT_LOST_WEBGL = 0x9242;

  static final int CULL_FACE = 0x0B44;

  static final int CULL_FACE_MODE = 0x0B45;

  static final int CURRENT_PROGRAM = 0x8B8D;

  static final int CURRENT_VERTEX_ATTRIB = 0x8626;

  static final int CW = 0x0900;

  static final int DECR = 0x1E03;

  static final int DECR_WRAP = 0x8508;

  static final int DELETE_STATUS = 0x8B80;

  static final int DEPTH_ATTACHMENT = 0x8D00;

  static final int DEPTH_BITS = 0x0D56;

  static final int DEPTH_BUFFER_BIT = 0x00000100;

  static final int DEPTH_CLEAR_VALUE = 0x0B73;

  static final int DEPTH_COMPONENT = 0x1902;

  static final int DEPTH_COMPONENT16 = 0x81A5;

  static final int DEPTH_FUNC = 0x0B74;

  static final int DEPTH_RANGE = 0x0B70;

  static final int DEPTH_STENCIL = 0x84F9;

  static final int DEPTH_STENCIL_ATTACHMENT = 0x821A;

  static final int DEPTH_TEST = 0x0B71;

  static final int DEPTH_WRITEMASK = 0x0B72;

  static final int DITHER = 0x0BD0;

  static final int DONT_CARE = 0x1100;

  static final int DST_ALPHA = 0x0304;

  static final int DST_COLOR = 0x0306;

  static final int DYNAMIC_DRAW = 0x88E8;

  static final int ELEMENT_ARRAY_BUFFER = 0x8893;

  static final int ELEMENT_ARRAY_BUFFER_BINDING = 0x8895;

  static final int EQUAL = 0x0202;

  static final int FASTEST = 0x1101;

  static final int FLOAT = 0x1406;

  static final int FLOAT_MAT2 = 0x8B5A;

  static final int FLOAT_MAT3 = 0x8B5B;

  static final int FLOAT_MAT4 = 0x8B5C;

  static final int FLOAT_VEC2 = 0x8B50;

  static final int FLOAT_VEC3 = 0x8B51;

  static final int FLOAT_VEC4 = 0x8B52;

  static final int FRAGMENT_SHADER = 0x8B30;

  static final int FRAMEBUFFER = 0x8D40;

  static final int FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = 0x8CD1;

  static final int FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 0x8CD0;

  static final int FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = 0x8CD3;

  static final int FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = 0x8CD2;

  static final int FRAMEBUFFER_BINDING = 0x8CA6;

  static final int FRAMEBUFFER_COMPLETE = 0x8CD5;

  static final int FRAMEBUFFER_INCOMPLETE_ATTACHMENT = 0x8CD6;

  static final int FRAMEBUFFER_INCOMPLETE_DIMENSIONS = 0x8CD9;

  static final int FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = 0x8CD7;

  static final int FRAMEBUFFER_UNSUPPORTED = 0x8CDD;

  static final int FRONT = 0x0404;

  static final int FRONT_AND_BACK = 0x0408;

  static final int FRONT_FACE = 0x0B46;

  static final int FUNC_ADD = 0x8006;

  static final int FUNC_REVERSE_SUBTRACT = 0x800B;

  static final int FUNC_SUBTRACT = 0x800A;

  static final int GENERATE_MIPMAP_HINT = 0x8192;

  static final int GEQUAL = 0x0206;

  static final int GREATER = 0x0204;

  static final int GREEN_BITS = 0x0D53;

  static final int HIGH_FLOAT = 0x8DF2;

  static final int HIGH_INT = 0x8DF5;

  static final int INCR = 0x1E02;

  static final int INCR_WRAP = 0x8507;

  static final int INT = 0x1404;

  static final int INT_VEC2 = 0x8B53;

  static final int INT_VEC3 = 0x8B54;

  static final int INT_VEC4 = 0x8B55;

  static final int INVALID_ENUM = 0x0500;

  static final int INVALID_FRAMEBUFFER_OPERATION = 0x0506;

  static final int INVALID_OPERATION = 0x0502;

  static final int INVALID_VALUE = 0x0501;

  static final int INVERT = 0x150A;

  static final int KEEP = 0x1E00;

  static final int LEQUAL = 0x0203;

  static final int LESS = 0x0201;

  static final int LINEAR = 0x2601;

  static final int LINEAR_MIPMAP_LINEAR = 0x2703;

  static final int LINEAR_MIPMAP_NEAREST = 0x2701;

  static final int LINES = 0x0001;

  static final int LINE_LOOP = 0x0002;

  static final int LINE_STRIP = 0x0003;

  static final int LINE_WIDTH = 0x0B21;

  static final int LINK_STATUS = 0x8B82;

  static final int LOW_FLOAT = 0x8DF0;

  static final int LOW_INT = 0x8DF3;

  static final int LUMINANCE = 0x1909;

  static final int LUMINANCE_ALPHA = 0x190A;

  static final int MAX_COMBINED_TEXTURE_IMAGE_UNITS = 0x8B4D;

  static final int MAX_CUBE_MAP_TEXTURE_SIZE = 0x851C;

  static final int MAX_FRAGMENT_UNIFORM_VECTORS = 0x8DFD;

  static final int MAX_RENDERBUFFER_SIZE = 0x84E8;

  static final int MAX_TEXTURE_IMAGE_UNITS = 0x8872;

  static final int MAX_TEXTURE_SIZE = 0x0D33;

  static final int MAX_VARYING_VECTORS = 0x8DFC;

  static final int MAX_VERTEX_ATTRIBS = 0x8869;

  static final int MAX_VERTEX_TEXTURE_IMAGE_UNITS = 0x8B4C;

  static final int MAX_VERTEX_UNIFORM_VECTORS = 0x8DFB;

  static final int MAX_VIEWPORT_DIMS = 0x0D3A;

  static final int MEDIUM_FLOAT = 0x8DF1;

  static final int MEDIUM_INT = 0x8DF4;

  static final int MIRRORED_REPEAT = 0x8370;

  static final int NEAREST = 0x2600;

  static final int NEAREST_MIPMAP_LINEAR = 0x2702;

  static final int NEAREST_MIPMAP_NEAREST = 0x2700;

  static final int NEVER = 0x0200;

  static final int NICEST = 0x1102;

  static final int NONE = 0;

  static final int NOTEQUAL = 0x0205;

  static final int NO_ERROR = 0;

  static final int ONE = 1;

  static final int ONE_MINUS_CONSTANT_ALPHA = 0x8004;

  static final int ONE_MINUS_CONSTANT_COLOR = 0x8002;

  static final int ONE_MINUS_DST_ALPHA = 0x0305;

  static final int ONE_MINUS_DST_COLOR = 0x0307;

  static final int ONE_MINUS_SRC_ALPHA = 0x0303;

  static final int ONE_MINUS_SRC_COLOR = 0x0301;

  static final int OUT_OF_MEMORY = 0x0505;

  static final int PACK_ALIGNMENT = 0x0D05;

  static final int POINTS = 0x0000;

  static final int POLYGON_OFFSET_FACTOR = 0x8038;

  static final int POLYGON_OFFSET_FILL = 0x8037;

  static final int POLYGON_OFFSET_UNITS = 0x2A00;

  static final int RED_BITS = 0x0D52;

  static final int RENDERBUFFER = 0x8D41;

  static final int RENDERBUFFER_ALPHA_SIZE = 0x8D53;

  static final int RENDERBUFFER_BINDING = 0x8CA7;

  static final int RENDERBUFFER_BLUE_SIZE = 0x8D52;

  static final int RENDERBUFFER_DEPTH_SIZE = 0x8D54;

  static final int RENDERBUFFER_GREEN_SIZE = 0x8D51;

  static final int RENDERBUFFER_HEIGHT = 0x8D43;

  static final int RENDERBUFFER_INTERNAL_FORMAT = 0x8D44;

  static final int RENDERBUFFER_RED_SIZE = 0x8D50;

  static final int RENDERBUFFER_STENCIL_SIZE = 0x8D55;

  static final int RENDERBUFFER_WIDTH = 0x8D42;

  static final int RENDERER = 0x1F01;

  static final int REPEAT = 0x2901;

  static final int REPLACE = 0x1E01;

  static final int RGB = 0x1907;

  static final int RGB565 = 0x8D62;

  static final int RGB5_A1 = 0x8057;

  static final int RGBA = 0x1908;

  static final int RGBA4 = 0x8056;

  static final int SAMPLER_2D = 0x8B5E;

  static final int SAMPLER_CUBE = 0x8B60;

  static final int SAMPLES = 0x80A9;

  static final int SAMPLE_ALPHA_TO_COVERAGE = 0x809E;

  static final int SAMPLE_BUFFERS = 0x80A8;

  static final int SAMPLE_COVERAGE = 0x80A0;

  static final int SAMPLE_COVERAGE_INVERT = 0x80AB;

  static final int SAMPLE_COVERAGE_VALUE = 0x80AA;

  static final int SCISSOR_BOX = 0x0C10;

  static final int SCISSOR_TEST = 0x0C11;

  static final int SHADER_COMPILER = 0x8DFA;

  static final int SHADER_TYPE = 0x8B4F;

  static final int SHADING_LANGUAGE_VERSION = 0x8B8C;

  static final int SHORT = 0x1402;

  static final int SRC_ALPHA = 0x0302;

  static final int SRC_ALPHA_SATURATE = 0x0308;

  static final int SRC_COLOR = 0x0300;

  static final int STATIC_DRAW = 0x88E4;

  static final int STENCIL_ATTACHMENT = 0x8D20;

  static final int STENCIL_BACK_FAIL = 0x8801;

  static final int STENCIL_BACK_FUNC = 0x8800;

  static final int STENCIL_BACK_PASS_DEPTH_FAIL = 0x8802;

  static final int STENCIL_BACK_PASS_DEPTH_PASS = 0x8803;

  static final int STENCIL_BACK_REF = 0x8CA3;

  static final int STENCIL_BACK_VALUE_MASK = 0x8CA4;

  static final int STENCIL_BACK_WRITEMASK = 0x8CA5;

  static final int STENCIL_BITS = 0x0D57;

  static final int STENCIL_BUFFER_BIT = 0x00000400;

  static final int STENCIL_CLEAR_VALUE = 0x0B91;

  static final int STENCIL_FAIL = 0x0B94;

  static final int STENCIL_FUNC = 0x0B92;

  static final int STENCIL_INDEX = 0x1901;

  static final int STENCIL_INDEX8 = 0x8D48;

  static final int STENCIL_PASS_DEPTH_FAIL = 0x0B95;

  static final int STENCIL_PASS_DEPTH_PASS = 0x0B96;

  static final int STENCIL_REF = 0x0B97;

  static final int STENCIL_TEST = 0x0B90;

  static final int STENCIL_VALUE_MASK = 0x0B93;

  static final int STENCIL_WRITEMASK = 0x0B98;

  static final int STREAM_DRAW = 0x88E0;

  static final int SUBPIXEL_BITS = 0x0D50;

  static final int TEXTURE = 0x1702;

  static final int TEXTURE0 = 0x84C0;

  static final int TEXTURE1 = 0x84C1;

  static final int TEXTURE10 = 0x84CA;

  static final int TEXTURE11 = 0x84CB;

  static final int TEXTURE12 = 0x84CC;

  static final int TEXTURE13 = 0x84CD;

  static final int TEXTURE14 = 0x84CE;

  static final int TEXTURE15 = 0x84CF;

  static final int TEXTURE16 = 0x84D0;

  static final int TEXTURE17 = 0x84D1;

  static final int TEXTURE18 = 0x84D2;

  static final int TEXTURE19 = 0x84D3;

  static final int TEXTURE2 = 0x84C2;

  static final int TEXTURE20 = 0x84D4;

  static final int TEXTURE21 = 0x84D5;

  static final int TEXTURE22 = 0x84D6;

  static final int TEXTURE23 = 0x84D7;

  static final int TEXTURE24 = 0x84D8;

  static final int TEXTURE25 = 0x84D9;

  static final int TEXTURE26 = 0x84DA;

  static final int TEXTURE27 = 0x84DB;

  static final int TEXTURE28 = 0x84DC;

  static final int TEXTURE29 = 0x84DD;

  static final int TEXTURE3 = 0x84C3;

  static final int TEXTURE30 = 0x84DE;

  static final int TEXTURE31 = 0x84DF;

  static final int TEXTURE4 = 0x84C4;

  static final int TEXTURE5 = 0x84C5;

  static final int TEXTURE6 = 0x84C6;

  static final int TEXTURE7 = 0x84C7;

  static final int TEXTURE8 = 0x84C8;

  static final int TEXTURE9 = 0x84C9;

  static final int TEXTURE_2D = 0x0DE1;

  static final int TEXTURE_BINDING_2D = 0x8069;

  static final int TEXTURE_BINDING_CUBE_MAP = 0x8514;

  static final int TEXTURE_CUBE_MAP = 0x8513;

  static final int TEXTURE_CUBE_MAP_NEGATIVE_X = 0x8516;

  static final int TEXTURE_CUBE_MAP_NEGATIVE_Y = 0x8518;

  static final int TEXTURE_CUBE_MAP_NEGATIVE_Z = 0x851A;

  static final int TEXTURE_CUBE_MAP_POSITIVE_X = 0x8515;

  static final int TEXTURE_CUBE_MAP_POSITIVE_Y = 0x8517;

  static final int TEXTURE_CUBE_MAP_POSITIVE_Z = 0x8519;

  static final int TEXTURE_MAG_FILTER = 0x2800;

  static final int TEXTURE_MIN_FILTER = 0x2801;

  static final int TEXTURE_WRAP_S = 0x2802;

  static final int TEXTURE_WRAP_T = 0x2803;

  static final int TRIANGLES = 0x0004;

  static final int TRIANGLE_FAN = 0x0006;

  static final int TRIANGLE_STRIP = 0x0005;

  static final int UNPACK_ALIGNMENT = 0x0CF5;

  static final int UNPACK_COLORSPACE_CONVERSION_WEBGL = 0x9243;

  static final int UNPACK_FLIP_Y_WEBGL = 0x9240;

  static final int UNPACK_PREMULTIPLY_ALPHA_WEBGL = 0x9241;

  static final int UNSIGNED_BYTE = 0x1401;

  static final int UNSIGNED_INT = 0x1405;

  static final int UNSIGNED_SHORT = 0x1403;

  static final int UNSIGNED_SHORT_4_4_4_4 = 0x8033;

  static final int UNSIGNED_SHORT_5_5_5_1 = 0x8034;

  static final int UNSIGNED_SHORT_5_6_5 = 0x8363;

  static final int VALIDATE_STATUS = 0x8B83;

  static final int VENDOR = 0x1F00;

  static final int VERSION = 0x1F02;

  static final int VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 0x889F;

  static final int VERTEX_ATTRIB_ARRAY_ENABLED = 0x8622;

  static final int VERTEX_ATTRIB_ARRAY_NORMALIZED = 0x886A;

  static final int VERTEX_ATTRIB_ARRAY_POINTER = 0x8645;

  static final int VERTEX_ATTRIB_ARRAY_SIZE = 0x8623;

  static final int VERTEX_ATTRIB_ARRAY_STRIDE = 0x8624;

  static final int VERTEX_ATTRIB_ARRAY_TYPE = 0x8625;

  static final int VERTEX_SHADER = 0x8B31;

  static final int VIEWPORT = 0x0BA2;

  static final int ZERO = 0;

  final int drawingBufferHeight;

  final int drawingBufferWidth;

  void activeTexture(int texture) native;

  void attachShader(_WebGLProgramImpl program, _WebGLShaderImpl shader) native;

  void bindAttribLocation(_WebGLProgramImpl program, int index, String name) native;

  void bindBuffer(int target, _WebGLBufferImpl buffer) native;

  void bindFramebuffer(int target, _WebGLFramebufferImpl framebuffer) native;

  void bindRenderbuffer(int target, _WebGLRenderbufferImpl renderbuffer) native;

  void bindTexture(int target, _WebGLTextureImpl texture) native;

  void blendColor(num red, num green, num blue, num alpha) native;

  void blendEquation(int mode) native;

  void blendEquationSeparate(int modeRGB, int modeAlpha) native;

  void blendFunc(int sfactor, int dfactor) native;

  void blendFuncSeparate(int srcRGB, int dstRGB, int srcAlpha, int dstAlpha) native;

  void bufferData(int target, data_OR_size, int usage) native;

  void bufferSubData(int target, int offset, data) native;

  int checkFramebufferStatus(int target) native;

  void clear(int mask) native;

  void clearColor(num red, num green, num blue, num alpha) native;

  void clearDepth(num depth) native;

  void clearStencil(int s) native;

  void colorMask(bool red, bool green, bool blue, bool alpha) native;

  void compileShader(_WebGLShaderImpl shader) native;

  void compressedTexImage2D(int target, int level, int internalformat, int width, int height, int border, _ArrayBufferViewImpl data) native;

  void compressedTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, _ArrayBufferViewImpl data) native;

  void copyTexImage2D(int target, int level, int internalformat, int x, int y, int width, int height, int border) native;

  void copyTexSubImage2D(int target, int level, int xoffset, int yoffset, int x, int y, int width, int height) native;

  _WebGLBufferImpl createBuffer() native;

  _WebGLFramebufferImpl createFramebuffer() native;

  _WebGLProgramImpl createProgram() native;

  _WebGLRenderbufferImpl createRenderbuffer() native;

  _WebGLShaderImpl createShader(int type) native;

  _WebGLTextureImpl createTexture() native;

  void cullFace(int mode) native;

  void deleteBuffer(_WebGLBufferImpl buffer) native;

  void deleteFramebuffer(_WebGLFramebufferImpl framebuffer) native;

  void deleteProgram(_WebGLProgramImpl program) native;

  void deleteRenderbuffer(_WebGLRenderbufferImpl renderbuffer) native;

  void deleteShader(_WebGLShaderImpl shader) native;

  void deleteTexture(_WebGLTextureImpl texture) native;

  void depthFunc(int func) native;

  void depthMask(bool flag) native;

  void depthRange(num zNear, num zFar) native;

  void detachShader(_WebGLProgramImpl program, _WebGLShaderImpl shader) native;

  void disable(int cap) native;

  void disableVertexAttribArray(int index) native;

  void drawArrays(int mode, int first, int count) native;

  void drawElements(int mode, int count, int type, int offset) native;

  void enable(int cap) native;

  void enableVertexAttribArray(int index) native;

  void finish() native;

  void flush() native;

  void framebufferRenderbuffer(int target, int attachment, int renderbuffertarget, _WebGLRenderbufferImpl renderbuffer) native;

  void framebufferTexture2D(int target, int attachment, int textarget, _WebGLTextureImpl texture, int level) native;

  void frontFace(int mode) native;

  void generateMipmap(int target) native;

  _WebGLActiveInfoImpl getActiveAttrib(_WebGLProgramImpl program, int index) native;

  _WebGLActiveInfoImpl getActiveUniform(_WebGLProgramImpl program, int index) native;

  List getAttachedShaders(_WebGLProgramImpl program) native;

  int getAttribLocation(_WebGLProgramImpl program, String name) native;

  Object getBufferParameter(int target, int pname) native;

  _WebGLContextAttributesImpl getContextAttributes() native;

  int getError() native;

  Object getExtension(String name) native;

  Object getFramebufferAttachmentParameter(int target, int attachment, int pname) native;

  Object getParameter(int pname) native;

  String getProgramInfoLog(_WebGLProgramImpl program) native;

  Object getProgramParameter(_WebGLProgramImpl program, int pname) native;

  Object getRenderbufferParameter(int target, int pname) native;

  String getShaderInfoLog(_WebGLShaderImpl shader) native;

  Object getShaderParameter(_WebGLShaderImpl shader, int pname) native;

  _WebGLShaderPrecisionFormatImpl getShaderPrecisionFormat(int shadertype, int precisiontype) native;

  String getShaderSource(_WebGLShaderImpl shader) native;

  Object getTexParameter(int target, int pname) native;

  Object getUniform(_WebGLProgramImpl program, _WebGLUniformLocationImpl location) native;

  _WebGLUniformLocationImpl getUniformLocation(_WebGLProgramImpl program, String name) native;

  Object getVertexAttrib(int index, int pname) native;

  int getVertexAttribOffset(int index, int pname) native;

  void hint(int target, int mode) native;

  bool isBuffer(_WebGLBufferImpl buffer) native;

  bool isContextLost() native;

  bool isEnabled(int cap) native;

  bool isFramebuffer(_WebGLFramebufferImpl framebuffer) native;

  bool isProgram(_WebGLProgramImpl program) native;

  bool isRenderbuffer(_WebGLRenderbufferImpl renderbuffer) native;

  bool isShader(_WebGLShaderImpl shader) native;

  bool isTexture(_WebGLTextureImpl texture) native;

  void lineWidth(num width) native;

  void linkProgram(_WebGLProgramImpl program) native;

  void pixelStorei(int pname, int param) native;

  void polygonOffset(num factor, num units) native;

  void readPixels(int x, int y, int width, int height, int format, int type, _ArrayBufferViewImpl pixels) native;

  void releaseShaderCompiler() native;

  void renderbufferStorage(int target, int internalformat, int width, int height) native;

  void sampleCoverage(num value, bool invert) native;

  void scissor(int x, int y, int width, int height) native;

  void shaderSource(_WebGLShaderImpl shader, String string) native;

  void stencilFunc(int func, int ref, int mask) native;

  void stencilFuncSeparate(int face, int func, int ref, int mask) native;

  void stencilMask(int mask) native;

  void stencilMaskSeparate(int face, int mask) native;

  void stencilOp(int fail, int zfail, int zpass) native;

  void stencilOpSeparate(int face, int fail, int zfail, int zpass) native;

  void texImage2D(int target, int level, int internalformat, int format_OR_width, int height_OR_type, border_OR_canvas_OR_image_OR_pixels_OR_video, [int format = null, int type = null, _ArrayBufferViewImpl pixels = null]) native;

  void texParameterf(int target, int pname, num param) native;

  void texParameteri(int target, int pname, int param) native;

  void texSubImage2D(int target, int level, int xoffset, int yoffset, int format_OR_width, int height_OR_type, canvas_OR_format_OR_image_OR_pixels_OR_video, [int type = null, _ArrayBufferViewImpl pixels = null]) native;

  void uniform1f(_WebGLUniformLocationImpl location, num x) native;

  void uniform1fv(_WebGLUniformLocationImpl location, _Float32ArrayImpl v) native;

  void uniform1i(_WebGLUniformLocationImpl location, int x) native;

  void uniform1iv(_WebGLUniformLocationImpl location, _Int32ArrayImpl v) native;

  void uniform2f(_WebGLUniformLocationImpl location, num x, num y) native;

  void uniform2fv(_WebGLUniformLocationImpl location, _Float32ArrayImpl v) native;

  void uniform2i(_WebGLUniformLocationImpl location, int x, int y) native;

  void uniform2iv(_WebGLUniformLocationImpl location, _Int32ArrayImpl v) native;

  void uniform3f(_WebGLUniformLocationImpl location, num x, num y, num z) native;

  void uniform3fv(_WebGLUniformLocationImpl location, _Float32ArrayImpl v) native;

  void uniform3i(_WebGLUniformLocationImpl location, int x, int y, int z) native;

  void uniform3iv(_WebGLUniformLocationImpl location, _Int32ArrayImpl v) native;

  void uniform4f(_WebGLUniformLocationImpl location, num x, num y, num z, num w) native;

  void uniform4fv(_WebGLUniformLocationImpl location, _Float32ArrayImpl v) native;

  void uniform4i(_WebGLUniformLocationImpl location, int x, int y, int z, int w) native;

  void uniform4iv(_WebGLUniformLocationImpl location, _Int32ArrayImpl v) native;

  void uniformMatrix2fv(_WebGLUniformLocationImpl location, bool transpose, _Float32ArrayImpl array) native;

  void uniformMatrix3fv(_WebGLUniformLocationImpl location, bool transpose, _Float32ArrayImpl array) native;

  void uniformMatrix4fv(_WebGLUniformLocationImpl location, bool transpose, _Float32ArrayImpl array) native;

  void useProgram(_WebGLProgramImpl program) native;

  void validateProgram(_WebGLProgramImpl program) native;

  void vertexAttrib1f(int indx, num x) native;

  void vertexAttrib1fv(int indx, _Float32ArrayImpl values) native;

  void vertexAttrib2f(int indx, num x, num y) native;

  void vertexAttrib2fv(int indx, _Float32ArrayImpl values) native;

  void vertexAttrib3f(int indx, num x, num y, num z) native;

  void vertexAttrib3fv(int indx, _Float32ArrayImpl values) native;

  void vertexAttrib4f(int indx, num x, num y, num z, num w) native;

  void vertexAttrib4fv(int indx, _Float32ArrayImpl values) native;

  void vertexAttribPointer(int indx, int size, int type, bool normalized, int stride, int offset) native;

  void viewport(int x, int y, int width, int height) native;
}

class _WebGLShaderImpl implements WebGLShader native "*WebGLShader" {
}

class _WebGLShaderPrecisionFormatImpl implements WebGLShaderPrecisionFormat native "*WebGLShaderPrecisionFormat" {

  final int precision;

  final int rangeMax;

  final int rangeMin;
}

class _WebGLTextureImpl implements WebGLTexture native "*WebGLTexture" {
}

class _WebGLUniformLocationImpl implements WebGLUniformLocation native "*WebGLUniformLocation" {
}

class _WebGLVertexArrayObjectOESImpl implements WebGLVertexArrayObjectOES native "*WebGLVertexArrayObjectOES" {
}

class _WebKitCSSFilterValueImpl extends _CSSValueListImpl implements WebKitCSSFilterValue native "*WebKitCSSFilterValue" {

  static final int CSS_FILTER_BLUR = 10;

  static final int CSS_FILTER_BRIGHTNESS = 8;

  static final int CSS_FILTER_CONTRAST = 9;

  static final int CSS_FILTER_CUSTOM = 12;

  static final int CSS_FILTER_DROP_SHADOW = 11;

  static final int CSS_FILTER_GRAYSCALE = 2;

  static final int CSS_FILTER_HUE_ROTATE = 5;

  static final int CSS_FILTER_INVERT = 6;

  static final int CSS_FILTER_OPACITY = 7;

  static final int CSS_FILTER_REFERENCE = 1;

  static final int CSS_FILTER_SATURATE = 4;

  static final int CSS_FILTER_SEPIA = 3;

  final int operationType;
}

class _WebKitCSSRegionRuleImpl extends _CSSRuleImpl implements WebKitCSSRegionRule native "*WebKitCSSRegionRule" {

  final _CSSRuleListImpl cssRules;
}

class _WebKitMutationObserverImpl implements WebKitMutationObserver native "*WebKitMutationObserver" {

  void disconnect() native;

  List<MutationRecord> takeRecords() native;
}

class _WebKitNamedFlowImpl implements WebKitNamedFlow native "*WebKitNamedFlow" {

  final _NodeListImpl contentNodes;

  final bool overflow;

  _NodeListImpl getRegionsByContentNode(_NodeImpl contentNode) native;
}

class _WebSocketImpl extends _EventTargetImpl implements WebSocket native "*WebSocket" {

  _WebSocketEventsImpl get on() =>
    new _WebSocketEventsImpl(this);

  static final int CLOSED = 3;

  static final int CLOSING = 2;

  static final int CONNECTING = 0;

  static final int OPEN = 1;

  final String URL;

  String binaryType;

  final int bufferedAmount;

  final String extensions;

  final String protocol;

  final int readyState;

  final String url;

  void $dom_addEventListener(String type, EventListener listener, [bool useCapture = null]) native "addEventListener";

  void close([int code = null, String reason = null]) native;

  bool $dom_dispatchEvent(_EventImpl evt) native "dispatchEvent";

  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture = null]) native "removeEventListener";

  bool send(String data) native;
}

class _WebSocketEventsImpl extends _EventsImpl implements WebSocketEvents {
  _WebSocketEventsImpl(_ptr) : super(_ptr);

  EventListenerList get close() => _get('close');

  EventListenerList get error() => _get('error');

  EventListenerList get message() => _get('message');

  EventListenerList get open() => _get('open');
}

class _WheelEventImpl extends _UIEventImpl implements WheelEvent native "*WheelEvent" {

  final bool altKey;

  final int clientX;

  final int clientY;

  final bool ctrlKey;

  final bool metaKey;

  final int offsetX;

  final int offsetY;

  final int screenX;

  final int screenY;

  final bool shiftKey;

  final bool webkitDirectionInvertedFromDevice;

  final int wheelDelta;

  final int wheelDeltaX;

  final int wheelDeltaY;

  final int x;

  final int y;

  void initWebKitWheelEvent(int wheelDeltaX, int wheelDeltaY, _WindowImpl view, int screenX, int screenY, int clientX, int clientY, bool ctrlKey, bool altKey, bool shiftKey, bool metaKey) native;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _WindowImpl extends _EventTargetImpl implements Window native "@*DOMWindow" {

  _DocumentImpl get document() native "return this.document;";

  void requestLayoutFrame(TimeoutHandler callback) {
    _addMeasurementFrameCallback(callback);
  }

  /** @domName DOMWindow.requestAnimationFrame */
  int requestAnimationFrame(RequestAnimationFrameCallback callback) native '''
    if (!window.requestAnimationFrame) {
      window.requestAnimationFrame =
          window.webkitRequestAnimationFrame ||
          window.mozRequestAnimationFrame ||
          window.msRequestAnimationFrame ||
          window.oRequestAnimationFrame ||
          function (callback) {
            window.setTimeout(callback, 16 /* 16ms ~= 60fps */);
          };
    }
    return window.requestAnimationFrame(callback);
''';

  // Protect member 'requestAnimationFrame'.
  _requestAnimationFrame() native 'requestAnimationFrame';


  _WindowEventsImpl get on() =>
    new _WindowEventsImpl(this);

  static final int PERSISTENT = 1;

  static final int TEMPORARY = 0;

  final _DOMApplicationCacheImpl applicationCache;

  final _NavigatorImpl clientInformation;

  final bool closed;

  final _ConsoleImpl console;

  final _CryptoImpl crypto;

  String defaultStatus;

  String defaultstatus;

  final num devicePixelRatio;

  final _EventImpl event;

  final _ElementImpl frameElement;

  final _WindowImpl frames;

  final _HistoryImpl history;

  final int innerHeight;

  final int innerWidth;

  final int length;

  final _StorageImpl localStorage;

  _LocationImpl location;

  final _BarInfoImpl locationbar;

  final _BarInfoImpl menubar;

  String name;

  final _NavigatorImpl navigator;

  final bool offscreenBuffering;

  final _WindowImpl opener;

  final int outerHeight;

  final int outerWidth;

  final int pageXOffset;

  final int pageYOffset;

  final _WindowImpl parent;

  final _PerformanceImpl performance;

  final _BarInfoImpl personalbar;

  final _ScreenImpl screen;

  final int screenLeft;

  final int screenTop;

  final int screenX;

  final int screenY;

  final int scrollX;

  final int scrollY;

  final _BarInfoImpl scrollbars;

  final _WindowImpl self;

  final _StorageImpl sessionStorage;

  String status;

  final _BarInfoImpl statusbar;

  final _StyleMediaImpl styleMedia;

  final _BarInfoImpl toolbar;

  final _WindowImpl top;

  final _IDBFactoryImpl webkitIndexedDB;

  final _NotificationCenterImpl webkitNotifications;

  final _StorageInfoImpl webkitStorageInfo;

  final _WindowImpl window;

  void $dom_addEventListener(String type, EventListener listener, [bool useCapture = null]) native "addEventListener";

  void alert(String message) native;

  String atob(String string) native;

  void blur() native;

  String btoa(String string) native;

  void captureEvents() native;

  void clearInterval(int handle) native;

  void clearTimeout(int handle) native;

  void close() native;

  bool confirm(String message) native;

  bool $dom_dispatchEvent(_EventImpl evt) native "dispatchEvent";

  bool find(String string, bool caseSensitive, bool backwards, bool wrap, bool wholeWord, bool searchInFrames, bool showDialog) native;

  void focus() native;

  _CSSStyleDeclarationImpl $dom_getComputedStyle(_ElementImpl element, String pseudoElement) native "getComputedStyle";

  _CSSRuleListImpl getMatchedCSSRules(_ElementImpl element, String pseudoElement) native;

  _DOMSelectionImpl getSelection() native;

  _MediaQueryListImpl matchMedia(String query) native;

  void moveBy(num x, num y) native;

  void moveTo(num x, num y) native;

  _WindowImpl open(String url, String name, [String options = null]) native;

  _DatabaseImpl openDatabase(String name, String version, String displayName, int estimatedSize, [DatabaseCallback creationCallback = null]) native;

  void postMessage(message, String targetOrigin, [List messagePorts = null]) native;

  void print() native;

  String prompt(String message, String defaultValue) native;

  void releaseEvents() native;

  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture = null]) native "removeEventListener";

  void resizeBy(num x, num y) native;

  void resizeTo(num width, num height) native;

  void scroll(int x, int y) native;

  void scrollBy(int x, int y) native;

  void scrollTo(int x, int y) native;

  int setInterval(TimeoutHandler handler, int timeout) native;

  int setTimeout(TimeoutHandler handler, int timeout) native;

  Object showModalDialog(String url, [Object dialogArgs = null, String featureArgs = null]) native;

  void stop() native;

  void webkitCancelAnimationFrame(int id) native;

  void webkitCancelRequestAnimationFrame(int id) native;

  _PointImpl webkitConvertPointFromNodeToPage(_NodeImpl node, _PointImpl p) native;

  _PointImpl webkitConvertPointFromPageToNode(_NodeImpl node, _PointImpl p) native;

  void webkitPostMessage(message, String targetOrigin, [List transferList = null]) native;

  int webkitRequestAnimationFrame(RequestAnimationFrameCallback callback) native;

  void webkitRequestFileSystem(int type, int size, FileSystemCallback successCallback, [ErrorCallback errorCallback = null]) native;

  void webkitResolveLocalFileSystemURL(String url, [EntryCallback successCallback = null, ErrorCallback errorCallback = null]) native;

}

class _WindowEventsImpl extends _EventsImpl implements WindowEvents {
  _WindowEventsImpl(_ptr) : super(_ptr);

  EventListenerList get abort() => _get('abort');

  EventListenerList get animationEnd() => _get('webkitAnimationEnd');

  EventListenerList get animationIteration() => _get('webkitAnimationIteration');

  EventListenerList get animationStart() => _get('webkitAnimationStart');

  EventListenerList get beforeUnload() => _get('beforeunload');

  EventListenerList get blur() => _get('blur');

  EventListenerList get canPlay() => _get('canplay');

  EventListenerList get canPlayThrough() => _get('canplaythrough');

  EventListenerList get change() => _get('change');

  EventListenerList get click() => _get('click');

  EventListenerList get contentLoaded() => _get('DOMContentLoaded');

  EventListenerList get contextMenu() => _get('contextmenu');

  EventListenerList get deviceMotion() => _get('devicemotion');

  EventListenerList get deviceOrientation() => _get('deviceorientation');

  EventListenerList get doubleClick() => _get('dblclick');

  EventListenerList get drag() => _get('drag');

  EventListenerList get dragEnd() => _get('dragend');

  EventListenerList get dragEnter() => _get('dragenter');

  EventListenerList get dragLeave() => _get('dragleave');

  EventListenerList get dragOver() => _get('dragover');

  EventListenerList get dragStart() => _get('dragstart');

  EventListenerList get drop() => _get('drop');

  EventListenerList get durationChange() => _get('durationchange');

  EventListenerList get emptied() => _get('emptied');

  EventListenerList get ended() => _get('ended');

  EventListenerList get error() => _get('error');

  EventListenerList get focus() => _get('focus');

  EventListenerList get hashChange() => _get('hashchange');

  EventListenerList get input() => _get('input');

  EventListenerList get invalid() => _get('invalid');

  EventListenerList get keyDown() => _get('keydown');

  EventListenerList get keyPress() => _get('keypress');

  EventListenerList get keyUp() => _get('keyup');

  EventListenerList get load() => _get('load');

  EventListenerList get loadStart() => _get('loadstart');

  EventListenerList get loadedData() => _get('loadeddata');

  EventListenerList get loadedMetadata() => _get('loadedmetadata');

  EventListenerList get message() => _get('message');

  EventListenerList get mouseDown() => _get('mousedown');

  EventListenerList get mouseMove() => _get('mousemove');

  EventListenerList get mouseOut() => _get('mouseout');

  EventListenerList get mouseOver() => _get('mouseover');

  EventListenerList get mouseUp() => _get('mouseup');

  EventListenerList get mouseWheel() => _get('mousewheel');

  EventListenerList get offline() => _get('offline');

  EventListenerList get online() => _get('online');

  EventListenerList get pageHide() => _get('pagehide');

  EventListenerList get pageShow() => _get('pageshow');

  EventListenerList get pause() => _get('pause');

  EventListenerList get play() => _get('play');

  EventListenerList get playing() => _get('playing');

  EventListenerList get popState() => _get('popstate');

  EventListenerList get progress() => _get('progress');

  EventListenerList get rateChange() => _get('ratechange');

  EventListenerList get reset() => _get('reset');

  EventListenerList get resize() => _get('resize');

  EventListenerList get scroll() => _get('scroll');

  EventListenerList get search() => _get('search');

  EventListenerList get seeked() => _get('seeked');

  EventListenerList get seeking() => _get('seeking');

  EventListenerList get select() => _get('select');

  EventListenerList get stalled() => _get('stalled');

  EventListenerList get storage() => _get('storage');

  EventListenerList get submit() => _get('submit');

  EventListenerList get suspend() => _get('suspend');

  EventListenerList get timeUpdate() => _get('timeupdate');

  EventListenerList get touchCancel() => _get('touchcancel');

  EventListenerList get touchEnd() => _get('touchend');

  EventListenerList get touchMove() => _get('touchmove');

  EventListenerList get touchStart() => _get('touchstart');

  EventListenerList get transitionEnd() => _get('webkitTransitionEnd');

  EventListenerList get unload() => _get('unload');

  EventListenerList get volumeChange() => _get('volumechange');

  EventListenerList get waiting() => _get('waiting');
}

class _WorkerImpl extends _AbstractWorkerImpl implements Worker native "*Worker" {

  _WorkerEventsImpl get on() =>
    new _WorkerEventsImpl(this);

  void postMessage(message, [List messagePorts = null]) native;

  void terminate() native;

  void webkitPostMessage(message, [List messagePorts = null]) native;
}

class _WorkerEventsImpl extends _AbstractWorkerEventsImpl implements WorkerEvents {
  _WorkerEventsImpl(_ptr) : super(_ptr);

  EventListenerList get message() => _get('message');
}

class _WorkerContextImpl extends _EventTargetImpl implements WorkerContext native "*WorkerContext" {

  _WorkerContextEventsImpl get on() =>
    new _WorkerContextEventsImpl(this);

  static final int PERSISTENT = 1;

  static final int TEMPORARY = 0;

  final _WorkerLocationImpl location;

  final _WorkerNavigatorImpl navigator;

  final _WorkerContextImpl self;

  final _IDBFactoryImpl webkitIndexedDB;

  final _NotificationCenterImpl webkitNotifications;

  void $dom_addEventListener(String type, EventListener listener, [bool useCapture = null]) native "addEventListener";

  void clearInterval(int handle) native;

  void clearTimeout(int handle) native;

  void close() native;

  bool $dom_dispatchEvent(_EventImpl evt) native "dispatchEvent";

  void importScripts() native;

  _DatabaseImpl openDatabase(String name, String version, String displayName, int estimatedSize, [DatabaseCallback creationCallback = null]) native;

  _DatabaseSyncImpl openDatabaseSync(String name, String version, String displayName, int estimatedSize, [DatabaseCallback creationCallback = null]) native;

  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture = null]) native "removeEventListener";

  int setInterval(TimeoutHandler handler, int timeout) native;

  int setTimeout(TimeoutHandler handler, int timeout) native;

  void webkitRequestFileSystem(int type, int size, [FileSystemCallback successCallback = null, ErrorCallback errorCallback = null]) native;

  _DOMFileSystemSyncImpl webkitRequestFileSystemSync(int type, int size) native;

  _EntrySyncImpl webkitResolveLocalFileSystemSyncURL(String url) native;

  void webkitResolveLocalFileSystemURL(String url, [EntryCallback successCallback = null, ErrorCallback errorCallback = null]) native;
}

class _WorkerContextEventsImpl extends _EventsImpl implements WorkerContextEvents {
  _WorkerContextEventsImpl(_ptr) : super(_ptr);

  EventListenerList get error() => _get('error');
}

class _WorkerLocationImpl implements WorkerLocation native "*WorkerLocation" {

  final String hash;

  final String host;

  final String hostname;

  final String href;

  final String pathname;

  final String port;

  final String protocol;

  final String search;

  String toString() native;
}

class _WorkerNavigatorImpl implements WorkerNavigator native "*WorkerNavigator" {

  final String appName;

  final String appVersion;

  final bool onLine;

  final String platform;

  final String userAgent;
}

class _XMLHttpRequestImpl extends _EventTargetImpl implements XMLHttpRequest native "*XMLHttpRequest" {

  _XMLHttpRequestEventsImpl get on() =>
    new _XMLHttpRequestEventsImpl(this);

  static final int DONE = 4;

  static final int HEADERS_RECEIVED = 2;

  static final int LOADING = 3;

  static final int OPENED = 1;

  static final int UNSENT = 0;

  bool asBlob;

  final int readyState;

  final Object response;

  final _BlobImpl responseBlob;

  final String responseText;

  String responseType;

  final _DocumentImpl responseXML;

  final int status;

  final String statusText;

  final _XMLHttpRequestUploadImpl upload;

  bool withCredentials;

  void abort() native;

  void $dom_addEventListener(String type, EventListener listener, [bool useCapture = null]) native "addEventListener";

  bool $dom_dispatchEvent(_EventImpl evt) native "dispatchEvent";

  String getAllResponseHeaders() native;

  String getResponseHeader(String header) native;

  void open(String method, String url, [bool async = null, String user = null, String password = null]) native;

  void overrideMimeType(String override) native;

  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture = null]) native "removeEventListener";

  void send([data = null]) native;

  void setRequestHeader(String header, String value) native;
}

class _XMLHttpRequestEventsImpl extends _EventsImpl implements XMLHttpRequestEvents {
  _XMLHttpRequestEventsImpl(_ptr) : super(_ptr);

  EventListenerList get abort() => _get('abort');

  EventListenerList get error() => _get('error');

  EventListenerList get load() => _get('load');

  EventListenerList get loadEnd() => _get('loadend');

  EventListenerList get loadStart() => _get('loadstart');

  EventListenerList get progress() => _get('progress');

  EventListenerList get readyStateChange() => _get('readystatechange');
}

class _XMLHttpRequestExceptionImpl implements XMLHttpRequestException native "*XMLHttpRequestException" {

  static final int ABORT_ERR = 102;

  static final int NETWORK_ERR = 101;

  final int code;

  final String message;

  final String name;

  String toString() native;
}

class _XMLHttpRequestProgressEventImpl extends _ProgressEventImpl implements XMLHttpRequestProgressEvent native "*XMLHttpRequestProgressEvent" {

  final int position;

  final int totalSize;
}

class _XMLHttpRequestUploadImpl extends _EventTargetImpl implements XMLHttpRequestUpload native "*XMLHttpRequestUpload" {

  _XMLHttpRequestUploadEventsImpl get on() =>
    new _XMLHttpRequestUploadEventsImpl(this);

  void $dom_addEventListener(String type, EventListener listener, [bool useCapture = null]) native "addEventListener";

  bool $dom_dispatchEvent(_EventImpl evt) native "dispatchEvent";

  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture = null]) native "removeEventListener";
}

class _XMLHttpRequestUploadEventsImpl extends _EventsImpl implements XMLHttpRequestUploadEvents {
  _XMLHttpRequestUploadEventsImpl(_ptr) : super(_ptr);

  EventListenerList get abort() => _get('abort');

  EventListenerList get error() => _get('error');

  EventListenerList get load() => _get('load');

  EventListenerList get loadEnd() => _get('loadend');

  EventListenerList get loadStart() => _get('loadstart');

  EventListenerList get progress() => _get('progress');
}

class _XMLSerializerImpl implements XMLSerializer native "*XMLSerializer" {

  String serializeToString(_NodeImpl node) native;
}

class _XPathEvaluatorImpl implements XPathEvaluator native "*XPathEvaluator" {

  _XPathExpressionImpl createExpression(String expression, _XPathNSResolverImpl resolver) native;

  _XPathNSResolverImpl createNSResolver(_NodeImpl nodeResolver) native;

  _XPathResultImpl evaluate(String expression, _NodeImpl contextNode, _XPathNSResolverImpl resolver, int type, _XPathResultImpl inResult) native;
}

class _XPathExceptionImpl implements XPathException native "*XPathException" {

  static final int INVALID_EXPRESSION_ERR = 51;

  static final int TYPE_ERR = 52;

  final int code;

  final String message;

  final String name;

  String toString() native;
}

class _XPathExpressionImpl implements XPathExpression native "*XPathExpression" {

  _XPathResultImpl evaluate(_NodeImpl contextNode, int type, _XPathResultImpl inResult) native;
}

class _XPathNSResolverImpl implements XPathNSResolver native "*XPathNSResolver" {

  String lookupNamespaceURI(String prefix) native;
}

class _XPathResultImpl implements XPathResult native "*XPathResult" {

  static final int ANY_TYPE = 0;

  static final int ANY_UNORDERED_NODE_TYPE = 8;

  static final int BOOLEAN_TYPE = 3;

  static final int FIRST_ORDERED_NODE_TYPE = 9;

  static final int NUMBER_TYPE = 1;

  static final int ORDERED_NODE_ITERATOR_TYPE = 5;

  static final int ORDERED_NODE_SNAPSHOT_TYPE = 7;

  static final int STRING_TYPE = 2;

  static final int UNORDERED_NODE_ITERATOR_TYPE = 4;

  static final int UNORDERED_NODE_SNAPSHOT_TYPE = 6;

  final bool booleanValue;

  final bool invalidIteratorState;

  final num numberValue;

  final int resultType;

  final _NodeImpl singleNodeValue;

  final int snapshotLength;

  final String stringValue;

  _NodeImpl iterateNext() native;

  _NodeImpl snapshotItem(int index) native;
}

class _XSLTProcessorImpl implements XSLTProcessor native "*XSLTProcessor" {

  void clearParameters() native;

  String getParameter(String namespaceURI, String localName) native;

  void importStylesheet(_NodeImpl stylesheet) native;

  void removeParameter(String namespaceURI, String localName) native;

  void reset() native;

  void setParameter(String namespaceURI, String localName, String value) native;

  _DocumentImpl transformToDocument(_NodeImpl source) native;

  _DocumentFragmentImpl transformToFragment(_NodeImpl source, _DocumentImpl docVal) native;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _AudioElementFactoryProvider {
  factory AudioElement([String src = null]) native '''
      if (src == null) return new Audio();
      return new Audio(src);
    ''';
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _BlobBuilderFactoryProvider {
  factory BlobBuilder() native
      '''return new BlobBuilder();''';
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _CSSMatrixFactoryProvider {
  factory CSSMatrix([String cssValue = '']) native
      'return new WebKitCSSMatrix(cssValue);';
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _DOMParserFactoryProvider {
  factory DOMParser() native
      '''return new DOMParser();''';
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _DOMURLFactoryProvider {
  factory DOMURL() native
      '''return new DOMURL();''';
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _DeprecatedPeerConnectionFactoryProvider {
  factory DeprecatedPeerConnection(String serverConfiguration, SignalingCallback signalingCallback) native
      '''return new DeprecatedPeerConnection(serverConfiguration, signalingCallback);''';
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _EventSourceFactoryProvider {
  factory EventSource(String scriptUrl) native
      '''return new EventSource(scriptUrl);''';
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _FileReaderFactoryProvider {
  factory FileReader() native
      '''return new FileReader();''';
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _FileReaderSyncFactoryProvider {
  factory FileReaderSync() native
      '''return new FileReaderSync();''';
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _IceCandidateFactoryProvider {
  factory IceCandidate(String label, String candidateLine) native
      '''return new IceCandidate(label, candidateLine);''';
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _MediaControllerFactoryProvider {
  factory MediaController() native
      '''return new MediaController();''';
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _MediaStreamFactoryProvider {
  factory MediaStream(MediaStreamTrackList audioTracks, MediaStreamTrackList videoTracks) native
      '''return new MediaStream(audioTracks, videoTracks);''';
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _MessageChannelFactoryProvider {
  factory MessageChannel() native
      '''return new MessageChannel();''';
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _NotificationFactoryProvider {
  factory Notification(String title, [Map options = null]) native
      '''return new Notification(title, options);''';
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _OptionElementFactoryProvider {
  factory OptionElement([String data = null, String value = null,
                         bool defaultSelected = null, bool selected = null])
      native '''
          if (data == null) return new Option();
          if (value == null) return new Option(data);
          if (defaultSelected == null) return new Option(data, value);
          if (selected == null) return new Option(data, value, defaultSelected);
          return new Option(data, value, defaultSelected, selected);
      ''';
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _PeerConnection00FactoryProvider {
  factory PeerConnection00(String serverConfiguration, IceCallback iceCallback) native
      '''return new PeerConnection00(serverConfiguration, iceCallback);''';
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _SessionDescriptionFactoryProvider {
  factory SessionDescription(String sdp) native
      '''return new SessionDescription(sdp);''';
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _ShadowRootFactoryProvider {
  factory ShadowRoot(Element host) native
      '''return new ShadowRoot(host);''';
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _SharedWorkerFactoryProvider {
  factory SharedWorker(String scriptURL, [String name]) native '''
      if (name == null) return new SharedWorker(scriptURL);
      return new SharedWorker(scriptURL, name);
    ''';
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _SpeechGrammarFactoryProvider {
  factory SpeechGrammar() native
      '''return new SpeechGrammar();''';
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _SpeechGrammarListFactoryProvider {
  factory SpeechGrammarList() native
      '''return new SpeechGrammarList();''';
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _SpeechRecognitionFactoryProvider {
  factory SpeechRecognition() native
      '''return new SpeechRecognition();''';
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _TextTrackCueFactoryProvider {
  factory TextTrackCue(String id, num startTime, num endTime, String text,
                       [String settings, bool pauseOnExit]) native '''
    if (settings == null)
      return new TextTrackCue(id, startTime, endTime, text);
    if (pauseOnExit == null)
      return new TextTrackCue(id, startTime, endTime, text, settings);
    return new TextTrackCue(id, startTime, endTime, text, settings, pauseOnExit);
  ''';
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _WorkerFactoryProvider {
  factory Worker(String scriptUrl) native
      '''return new Worker(scriptUrl);''';
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _XMLHttpRequestFactoryProvider {
  factory XMLHttpRequest() native 'return new XMLHttpRequest();';

  factory XMLHttpRequest.get(String url,
                                     onSuccess(XMLHttpRequest request)) =>
      _XMLHttpRequestUtils.get(url, onSuccess);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _XMLSerializerFactoryProvider {
  factory XMLSerializer() native
      '''return new XMLSerializer();''';
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _XPathEvaluatorFactoryProvider {
  factory XPathEvaluator() native
      '''return new XPathEvaluator();''';
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _XSLTProcessorFactoryProvider {
  factory XSLTProcessor() native
      '''return new XSLTProcessor();''';
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName AbstractWorker
interface AbstractWorker extends EventTarget {

  /**
   * @domName EventTarget.addEventListener, EventTarget.removeEventListener, EventTarget.dispatchEvent
   */
  AbstractWorkerEvents get on();

  /** @domName AbstractWorker.addEventListener */
  void $dom_addEventListener(String type, EventListener listener, [bool useCapture]);

  /** @domName AbstractWorker.dispatchEvent */
  bool $dom_dispatchEvent(Event evt);

  /** @domName AbstractWorker.removeEventListener */
  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture]);
}

interface AbstractWorkerEvents extends Events {

  EventListenerList get error();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLAnchorElement
interface AnchorElement extends Element {

  /** @domName HTMLAnchorElement.charset */
  String charset;

  /** @domName HTMLAnchorElement.coords */
  String coords;

  /** @domName HTMLAnchorElement.download */
  String download;

  /** @domName HTMLAnchorElement.hash */
  String hash;

  /** @domName HTMLAnchorElement.host */
  String host;

  /** @domName HTMLAnchorElement.hostname */
  String hostname;

  /** @domName HTMLAnchorElement.href */
  String href;

  /** @domName HTMLAnchorElement.hreflang */
  String hreflang;

  /** @domName HTMLAnchorElement.name */
  String name;

  /** @domName HTMLAnchorElement.origin */
  final String origin;

  /** @domName HTMLAnchorElement.pathname */
  String pathname;

  /** @domName HTMLAnchorElement.ping */
  String ping;

  /** @domName HTMLAnchorElement.port */
  String port;

  /** @domName HTMLAnchorElement.protocol */
  String protocol;

  /** @domName HTMLAnchorElement.rel */
  String rel;

  /** @domName HTMLAnchorElement.rev */
  String rev;

  /** @domName HTMLAnchorElement.search */
  String search;

  /** @domName HTMLAnchorElement.shape */
  String shape;

  /** @domName HTMLAnchorElement.target */
  String target;

  /** @domName HTMLAnchorElement.type */
  String type;

  /** @domName HTMLAnchorElement.toString */
  String toString();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName WebKitAnimation
interface Animation {

  static final int DIRECTION_ALTERNATE = 1;

  static final int DIRECTION_NORMAL = 0;

  static final int FILL_BACKWARDS = 1;

  static final int FILL_BOTH = 3;

  static final int FILL_FORWARDS = 2;

  static final int FILL_NONE = 0;

  /** @domName WebKitAnimation.delay */
  final num delay;

  /** @domName WebKitAnimation.direction */
  final int direction;

  /** @domName WebKitAnimation.duration */
  final num duration;

  /** @domName WebKitAnimation.elapsedTime */
  num elapsedTime;

  /** @domName WebKitAnimation.ended */
  final bool ended;

  /** @domName WebKitAnimation.fillMode */
  final int fillMode;

  /** @domName WebKitAnimation.iterationCount */
  final int iterationCount;

  /** @domName WebKitAnimation.name */
  final String name;

  /** @domName WebKitAnimation.paused */
  final bool paused;

  /** @domName WebKitAnimation.pause */
  void pause();

  /** @domName WebKitAnimation.play */
  void play();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName WebKitAnimationEvent
interface AnimationEvent extends Event {

  /** @domName WebKitAnimationEvent.animationName */
  final String animationName;

  /** @domName WebKitAnimationEvent.elapsedTime */
  final num elapsedTime;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName WebKitAnimationList
interface AnimationList {

  /** @domName WebKitAnimationList.length */
  final int length;

  /** @domName WebKitAnimationList.item */
  Animation item(int index);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLAppletElement
interface AppletElement extends Element {

  /** @domName HTMLAppletElement.align */
  String align;

  /** @domName HTMLAppletElement.alt */
  String alt;

  /** @domName HTMLAppletElement.archive */
  String archive;

  /** @domName HTMLAppletElement.code */
  String code;

  /** @domName HTMLAppletElement.codeBase */
  String codeBase;

  /** @domName HTMLAppletElement.height */
  String height;

  /** @domName HTMLAppletElement.hspace */
  String hspace;

  /** @domName HTMLAppletElement.name */
  String name;

  /** @domName HTMLAppletElement.object */
  String object;

  /** @domName HTMLAppletElement.vspace */
  String vspace;

  /** @domName HTMLAppletElement.width */
  String width;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLAreaElement
interface AreaElement extends Element {

  /** @domName HTMLAreaElement.alt */
  String alt;

  /** @domName HTMLAreaElement.coords */
  String coords;

  /** @domName HTMLAreaElement.hash */
  final String hash;

  /** @domName HTMLAreaElement.host */
  final String host;

  /** @domName HTMLAreaElement.hostname */
  final String hostname;

  /** @domName HTMLAreaElement.href */
  String href;

  /** @domName HTMLAreaElement.noHref */
  bool noHref;

  /** @domName HTMLAreaElement.pathname */
  final String pathname;

  /** @domName HTMLAreaElement.ping */
  String ping;

  /** @domName HTMLAreaElement.port */
  final String port;

  /** @domName HTMLAreaElement.protocol */
  final String protocol;

  /** @domName HTMLAreaElement.search */
  final String search;

  /** @domName HTMLAreaElement.shape */
  String shape;

  /** @domName HTMLAreaElement.target */
  String target;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName ArrayBuffer
interface ArrayBuffer {

  /** @domName ArrayBuffer.byteLength */
  final int byteLength;

  /** @domName ArrayBuffer.slice */
  ArrayBuffer slice(int begin, [int end]);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName ArrayBufferView
interface ArrayBufferView {

  /** @domName ArrayBufferView.buffer */
  final ArrayBuffer buffer;

  /** @domName ArrayBufferView.byteLength */
  final int byteLength;

  /** @domName ArrayBufferView.byteOffset */
  final int byteOffset;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName Attr
interface Attr extends Node {

  /** @domName Attr.isId */
  final bool isId;

  /** @domName Attr.name */
  final String name;

  /** @domName Attr.ownerElement */
  final Element ownerElement;

  /** @domName Attr.specified */
  final bool specified;

  /** @domName Attr.value */
  String value;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName AudioBuffer
interface AudioBuffer {

  /** @domName AudioBuffer.duration */
  final num duration;

  /** @domName AudioBuffer.gain */
  num gain;

  /** @domName AudioBuffer.length */
  final int length;

  /** @domName AudioBuffer.numberOfChannels */
  final int numberOfChannels;

  /** @domName AudioBuffer.sampleRate */
  final num sampleRate;

  /** @domName AudioBuffer.getChannelData */
  Float32Array getChannelData(int channelIndex);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool AudioBufferCallback(AudioBuffer audioBuffer);
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName AudioBufferSourceNode
interface AudioBufferSourceNode extends AudioSourceNode {

  static final int FINISHED_STATE = 3;

  static final int PLAYING_STATE = 2;

  static final int SCHEDULED_STATE = 1;

  static final int UNSCHEDULED_STATE = 0;

  /** @domName AudioBufferSourceNode.buffer */
  AudioBuffer buffer;

  /** @domName AudioBufferSourceNode.gain */
  final AudioGain gain;

  /** @domName AudioBufferSourceNode.loop */
  bool loop;

  /** @domName AudioBufferSourceNode.looping */
  bool looping;

  /** @domName AudioBufferSourceNode.playbackRate */
  final AudioParam playbackRate;

  /** @domName AudioBufferSourceNode.playbackState */
  final int playbackState;

  /** @domName AudioBufferSourceNode.noteGrainOn */
  void noteGrainOn(num when, num grainOffset, num grainDuration);

  /** @domName AudioBufferSourceNode.noteOff */
  void noteOff(num when);

  /** @domName AudioBufferSourceNode.noteOn */
  void noteOn(num when);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName AudioChannelMerger
interface AudioChannelMerger extends AudioNode {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName AudioChannelSplitter
interface AudioChannelSplitter extends AudioNode {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName AudioContext
interface AudioContext extends EventTarget default _AudioContextFactoryProvider {
  AudioContext();

  /**
   * @domName EventTarget.addEventListener, EventTarget.removeEventListener, EventTarget.dispatchEvent
   */
  AudioContextEvents get on();

  /** @domName AudioContext.activeSourceCount */
  final int activeSourceCount;

  /** @domName AudioContext.currentTime */
  final num currentTime;

  /** @domName AudioContext.destination */
  final AudioDestinationNode destination;

  /** @domName AudioContext.listener */
  final AudioListener listener;

  /** @domName AudioContext.sampleRate */
  final num sampleRate;

  /** @domName AudioContext.createAnalyser */
  RealtimeAnalyserNode createAnalyser();

  /** @domName AudioContext.createBiquadFilter */
  BiquadFilterNode createBiquadFilter();

  /** @domName AudioContext.createBuffer */
  AudioBuffer createBuffer(buffer_OR_numberOfChannels, mixToMono_OR_numberOfFrames, [num sampleRate]);

  /** @domName AudioContext.createBufferSource */
  AudioBufferSourceNode createBufferSource();

  /** @domName AudioContext.createChannelMerger */
  AudioChannelMerger createChannelMerger([int numberOfInputs]);

  /** @domName AudioContext.createChannelSplitter */
  AudioChannelSplitter createChannelSplitter([int numberOfOutputs]);

  /** @domName AudioContext.createConvolver */
  ConvolverNode createConvolver();

  /** @domName AudioContext.createDelayNode */
  DelayNode createDelayNode([num maxDelayTime]);

  /** @domName AudioContext.createDynamicsCompressor */
  DynamicsCompressorNode createDynamicsCompressor();

  /** @domName AudioContext.createGainNode */
  AudioGainNode createGainNode();

  /** @domName AudioContext.createJavaScriptNode */
  JavaScriptAudioNode createJavaScriptNode(int bufferSize, [int numberOfInputChannels, int numberOfOutputChannels]);

  /** @domName AudioContext.createMediaElementSource */
  MediaElementAudioSourceNode createMediaElementSource(MediaElement mediaElement);

  /** @domName AudioContext.createOscillator */
  Oscillator createOscillator();

  /** @domName AudioContext.createPanner */
  AudioPannerNode createPanner();

  /** @domName AudioContext.createWaveShaper */
  WaveShaperNode createWaveShaper();

  /** @domName AudioContext.createWaveTable */
  WaveTable createWaveTable(Float32Array real, Float32Array imag);

  /** @domName AudioContext.decodeAudioData */
  void decodeAudioData(ArrayBuffer audioData, AudioBufferCallback successCallback, [AudioBufferCallback errorCallback]);

  /** @domName AudioContext.startRendering */
  void startRendering();
}

interface AudioContextEvents extends Events {

  EventListenerList get complete();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName AudioDestinationNode
interface AudioDestinationNode extends AudioNode {

  /** @domName AudioDestinationNode.numberOfChannels */
  final int numberOfChannels;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLAudioElement
interface AudioElement extends MediaElement default _AudioElementFactoryProvider {

  AudioElement([String src]);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName AudioGain
interface AudioGain extends AudioParam {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName AudioGainNode
interface AudioGainNode extends AudioNode {

  /** @domName AudioGainNode.gain */
  final AudioGain gain;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName AudioListener
interface AudioListener {

  /** @domName AudioListener.dopplerFactor */
  num dopplerFactor;

  /** @domName AudioListener.speedOfSound */
  num speedOfSound;

  /** @domName AudioListener.setOrientation */
  void setOrientation(num x, num y, num z, num xUp, num yUp, num zUp);

  /** @domName AudioListener.setPosition */
  void setPosition(num x, num y, num z);

  /** @domName AudioListener.setVelocity */
  void setVelocity(num x, num y, num z);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName AudioNode
interface AudioNode {

  /** @domName AudioNode.context */
  final AudioContext context;

  /** @domName AudioNode.numberOfInputs */
  final int numberOfInputs;

  /** @domName AudioNode.numberOfOutputs */
  final int numberOfOutputs;

  /** @domName AudioNode.connect */
  void connect(destination, int output, [int input]);

  /** @domName AudioNode.disconnect */
  void disconnect(int output);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName AudioPannerNode
interface AudioPannerNode extends AudioNode {

  static final int EQUALPOWER = 0;

  static final int EXPONENTIAL_DISTANCE = 2;

  static final int HRTF = 1;

  static final int INVERSE_DISTANCE = 1;

  static final int LINEAR_DISTANCE = 0;

  static final int SOUNDFIELD = 2;

  /** @domName AudioPannerNode.coneGain */
  final AudioGain coneGain;

  /** @domName AudioPannerNode.coneInnerAngle */
  num coneInnerAngle;

  /** @domName AudioPannerNode.coneOuterAngle */
  num coneOuterAngle;

  /** @domName AudioPannerNode.coneOuterGain */
  num coneOuterGain;

  /** @domName AudioPannerNode.distanceGain */
  final AudioGain distanceGain;

  /** @domName AudioPannerNode.distanceModel */
  int distanceModel;

  /** @domName AudioPannerNode.maxDistance */
  num maxDistance;

  /** @domName AudioPannerNode.panningModel */
  int panningModel;

  /** @domName AudioPannerNode.refDistance */
  num refDistance;

  /** @domName AudioPannerNode.rolloffFactor */
  num rolloffFactor;

  /** @domName AudioPannerNode.setOrientation */
  void setOrientation(num x, num y, num z);

  /** @domName AudioPannerNode.setPosition */
  void setPosition(num x, num y, num z);

  /** @domName AudioPannerNode.setVelocity */
  void setVelocity(num x, num y, num z);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName AudioParam
interface AudioParam {

  /** @domName AudioParam.defaultValue */
  final num defaultValue;

  /** @domName AudioParam.maxValue */
  final num maxValue;

  /** @domName AudioParam.minValue */
  final num minValue;

  /** @domName AudioParam.name */
  final String name;

  /** @domName AudioParam.units */
  final int units;

  /** @domName AudioParam.value */
  num value;

  /** @domName AudioParam.cancelScheduledValues */
  void cancelScheduledValues(num startTime);

  /** @domName AudioParam.exponentialRampToValueAtTime */
  void exponentialRampToValueAtTime(num value, num time);

  /** @domName AudioParam.linearRampToValueAtTime */
  void linearRampToValueAtTime(num value, num time);

  /** @domName AudioParam.setTargetValueAtTime */
  void setTargetValueAtTime(num targetValue, num time, num timeConstant);

  /** @domName AudioParam.setValueAtTime */
  void setValueAtTime(num value, num time);

  /** @domName AudioParam.setValueCurveAtTime */
  void setValueCurveAtTime(Float32Array values, num time, num duration);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName AudioProcessingEvent
interface AudioProcessingEvent extends Event {

  /** @domName AudioProcessingEvent.inputBuffer */
  final AudioBuffer inputBuffer;

  /** @domName AudioProcessingEvent.outputBuffer */
  final AudioBuffer outputBuffer;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName AudioSourceNode
interface AudioSourceNode extends AudioNode {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLBRElement
interface BRElement extends Element {

  /** @domName HTMLBRElement.clear */
  String clear;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName BarInfo
interface BarInfo {

  /** @domName BarInfo.visible */
  final bool visible;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLBaseElement
interface BaseElement extends Element {

  /** @domName HTMLBaseElement.href */
  String href;

  /** @domName HTMLBaseElement.target */
  String target;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLBaseFontElement
interface BaseFontElement extends Element {

  /** @domName HTMLBaseFontElement.color */
  String color;

  /** @domName HTMLBaseFontElement.face */
  String face;

  /** @domName HTMLBaseFontElement.size */
  int size;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName BatteryManager
interface BatteryManager extends EventTarget {

  /**
   * @domName EventTarget.addEventListener, EventTarget.removeEventListener, EventTarget.dispatchEvent
   */
  BatteryManagerEvents get on();

  /** @domName BatteryManager.charging */
  final bool charging;

  /** @domName BatteryManager.chargingTime */
  final num chargingTime;

  /** @domName BatteryManager.dischargingTime */
  final num dischargingTime;

  /** @domName BatteryManager.level */
  final num level;

  /** @domName BatteryManager.addEventListener */
  void $dom_addEventListener(String type, EventListener listener, [bool useCapture]);

  /** @domName BatteryManager.dispatchEvent */
  bool $dom_dispatchEvent(Event evt);

  /** @domName BatteryManager.removeEventListener */
  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture]);
}

interface BatteryManagerEvents extends Events {

  EventListenerList get chargingChange();

  EventListenerList get chargingTimeChange();

  EventListenerList get dischargingTimeChange();

  EventListenerList get levelChange();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName BeforeLoadEvent
interface BeforeLoadEvent extends Event {

  /** @domName BeforeLoadEvent.url */
  final String url;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName BiquadFilterNode
interface BiquadFilterNode extends AudioNode {

  static final int ALLPASS = 7;

  static final int BANDPASS = 2;

  static final int HIGHPASS = 1;

  static final int HIGHSHELF = 4;

  static final int LOWPASS = 0;

  static final int LOWSHELF = 3;

  static final int NOTCH = 6;

  static final int PEAKING = 5;

  /** @domName BiquadFilterNode.Q */
  final AudioParam Q;

  /** @domName BiquadFilterNode.frequency */
  final AudioParam frequency;

  /** @domName BiquadFilterNode.gain */
  final AudioParam gain;

  /** @domName BiquadFilterNode.type */
  int type;

  /** @domName BiquadFilterNode.getFrequencyResponse */
  void getFrequencyResponse(Float32Array frequencyHz, Float32Array magResponse, Float32Array phaseResponse);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName Blob
interface Blob {

  /** @domName Blob.size */
  final int size;

  /** @domName Blob.type */
  final String type;

  /** @domName Blob.webkitSlice */
  Blob webkitSlice([int start, int end, String contentType]);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName WebKitBlobBuilder
interface BlobBuilder default _BlobBuilderFactoryProvider {

  BlobBuilder();

  /** @domName WebKitBlobBuilder.append */
  void append(arrayBuffer_OR_blob_OR_value, [String endings]);

  /** @domName WebKitBlobBuilder.getBlob */
  Blob getBlob([String contentType]);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLBodyElement
interface BodyElement extends Element {

  /**
   * @domName EventTarget.addEventListener, EventTarget.removeEventListener, EventTarget.dispatchEvent
   */
  BodyElementEvents get on();

  /** @domName HTMLBodyElement.aLink */
  String aLink;

  /** @domName HTMLBodyElement.background */
  String background;

  /** @domName HTMLBodyElement.bgColor */
  String bgColor;

  /** @domName HTMLBodyElement.link */
  String link;

  /** @domName HTMLBodyElement.vLink */
  String vLink;
}

interface BodyElementEvents extends ElementEvents {

  EventListenerList get beforeUnload();

  EventListenerList get blur();

  EventListenerList get error();

  EventListenerList get focus();

  EventListenerList get hashChange();

  EventListenerList get load();

  EventListenerList get message();

  EventListenerList get offline();

  EventListenerList get online();

  EventListenerList get popState();

  EventListenerList get resize();

  EventListenerList get storage();

  EventListenerList get unload();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLButtonElement
interface ButtonElement extends Element {

  /** @domName HTMLButtonElement.autofocus */
  bool autofocus;

  /** @domName HTMLButtonElement.disabled */
  bool disabled;

  /** @domName HTMLButtonElement.form */
  final FormElement form;

  /** @domName HTMLButtonElement.formAction */
  String formAction;

  /** @domName HTMLButtonElement.formEnctype */
  String formEnctype;

  /** @domName HTMLButtonElement.formMethod */
  String formMethod;

  /** @domName HTMLButtonElement.formNoValidate */
  bool formNoValidate;

  /** @domName HTMLButtonElement.formTarget */
  String formTarget;

  /** @domName HTMLButtonElement.labels */
  final NodeList labels;

  /** @domName HTMLButtonElement.name */
  String name;

  /** @domName HTMLButtonElement.type */
  final String type;

  /** @domName HTMLButtonElement.validationMessage */
  final String validationMessage;

  /** @domName HTMLButtonElement.validity */
  final ValidityState validity;

  /** @domName HTMLButtonElement.value */
  String value;

  /** @domName HTMLButtonElement.willValidate */
  final bool willValidate;

  /** @domName HTMLButtonElement.checkValidity */
  bool checkValidity();

  /** @domName HTMLButtonElement.setCustomValidity */
  void setCustomValidity(String error);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName CDATASection
interface CDATASection extends Text {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName CSSCharsetRule
interface CSSCharsetRule extends CSSRule {

  /** @domName CSSCharsetRule.encoding */
  String encoding;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName CSSFontFaceRule
interface CSSFontFaceRule extends CSSRule {

  /** @domName CSSFontFaceRule.style */
  final CSSStyleDeclaration style;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName CSSImportRule
interface CSSImportRule extends CSSRule {

  /** @domName CSSImportRule.href */
  final String href;

  /** @domName CSSImportRule.media */
  final MediaList media;

  /** @domName CSSImportRule.styleSheet */
  final CSSStyleSheet styleSheet;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName WebKitCSSKeyframeRule
interface CSSKeyframeRule extends CSSRule {

  /** @domName WebKitCSSKeyframeRule.keyText */
  String keyText;

  /** @domName WebKitCSSKeyframeRule.style */
  final CSSStyleDeclaration style;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName WebKitCSSKeyframesRule
interface CSSKeyframesRule extends CSSRule {

  /** @domName WebKitCSSKeyframesRule.cssRules */
  final CSSRuleList cssRules;

  /** @domName WebKitCSSKeyframesRule.name */
  String name;

  /** @domName WebKitCSSKeyframesRule.deleteRule */
  void deleteRule(String key);

  /** @domName WebKitCSSKeyframesRule.findRule */
  CSSKeyframeRule findRule(String key);

  /** @domName WebKitCSSKeyframesRule.insertRule */
  void insertRule(String rule);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName WebKitCSSMatrix
interface CSSMatrix default _CSSMatrixFactoryProvider {

  CSSMatrix([String cssValue]);

  /** @domName WebKitCSSMatrix.a */
  num a;

  /** @domName WebKitCSSMatrix.b */
  num b;

  /** @domName WebKitCSSMatrix.c */
  num c;

  /** @domName WebKitCSSMatrix.d */
  num d;

  /** @domName WebKitCSSMatrix.e */
  num e;

  /** @domName WebKitCSSMatrix.f */
  num f;

  /** @domName WebKitCSSMatrix.m11 */
  num m11;

  /** @domName WebKitCSSMatrix.m12 */
  num m12;

  /** @domName WebKitCSSMatrix.m13 */
  num m13;

  /** @domName WebKitCSSMatrix.m14 */
  num m14;

  /** @domName WebKitCSSMatrix.m21 */
  num m21;

  /** @domName WebKitCSSMatrix.m22 */
  num m22;

  /** @domName WebKitCSSMatrix.m23 */
  num m23;

  /** @domName WebKitCSSMatrix.m24 */
  num m24;

  /** @domName WebKitCSSMatrix.m31 */
  num m31;

  /** @domName WebKitCSSMatrix.m32 */
  num m32;

  /** @domName WebKitCSSMatrix.m33 */
  num m33;

  /** @domName WebKitCSSMatrix.m34 */
  num m34;

  /** @domName WebKitCSSMatrix.m41 */
  num m41;

  /** @domName WebKitCSSMatrix.m42 */
  num m42;

  /** @domName WebKitCSSMatrix.m43 */
  num m43;

  /** @domName WebKitCSSMatrix.m44 */
  num m44;

  /** @domName WebKitCSSMatrix.inverse */
  CSSMatrix inverse();

  /** @domName WebKitCSSMatrix.multiply */
  CSSMatrix multiply(CSSMatrix secondMatrix);

  /** @domName WebKitCSSMatrix.rotate */
  CSSMatrix rotate(num rotX, num rotY, num rotZ);

  /** @domName WebKitCSSMatrix.rotateAxisAngle */
  CSSMatrix rotateAxisAngle(num x, num y, num z, num angle);

  /** @domName WebKitCSSMatrix.scale */
  CSSMatrix scale(num scaleX, num scaleY, num scaleZ);

  /** @domName WebKitCSSMatrix.setMatrixValue */
  void setMatrixValue(String string);

  /** @domName WebKitCSSMatrix.skewX */
  CSSMatrix skewX(num angle);

  /** @domName WebKitCSSMatrix.skewY */
  CSSMatrix skewY(num angle);

  /** @domName WebKitCSSMatrix.toString */
  String toString();

  /** @domName WebKitCSSMatrix.translate */
  CSSMatrix translate(num x, num y, num z);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName CSSMediaRule
interface CSSMediaRule extends CSSRule {

  /** @domName CSSMediaRule.cssRules */
  final CSSRuleList cssRules;

  /** @domName CSSMediaRule.media */
  final MediaList media;

  /** @domName CSSMediaRule.deleteRule */
  void deleteRule(int index);

  /** @domName CSSMediaRule.insertRule */
  int insertRule(String rule, int index);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName CSSPageRule
interface CSSPageRule extends CSSRule {

  /** @domName CSSPageRule.selectorText */
  String selectorText;

  /** @domName CSSPageRule.style */
  final CSSStyleDeclaration style;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName CSSPrimitiveValue
interface CSSPrimitiveValue extends CSSValue {

  static final int CSS_ATTR = 22;

  static final int CSS_CM = 6;

  static final int CSS_COUNTER = 23;

  static final int CSS_DEG = 11;

  static final int CSS_DIMENSION = 18;

  static final int CSS_EMS = 3;

  static final int CSS_EXS = 4;

  static final int CSS_GRAD = 13;

  static final int CSS_HZ = 16;

  static final int CSS_IDENT = 21;

  static final int CSS_IN = 8;

  static final int CSS_KHZ = 17;

  static final int CSS_MM = 7;

  static final int CSS_MS = 14;

  static final int CSS_NUMBER = 1;

  static final int CSS_PC = 10;

  static final int CSS_PERCENTAGE = 2;

  static final int CSS_PT = 9;

  static final int CSS_PX = 5;

  static final int CSS_RAD = 12;

  static final int CSS_RECT = 24;

  static final int CSS_RGBCOLOR = 25;

  static final int CSS_S = 15;

  static final int CSS_STRING = 19;

  static final int CSS_UNKNOWN = 0;

  static final int CSS_URI = 20;

  static final int CSS_VH = 27;

  static final int CSS_VMIN = 28;

  static final int CSS_VW = 26;

  /** @domName CSSPrimitiveValue.primitiveType */
  final int primitiveType;

  /** @domName CSSPrimitiveValue.getCounterValue */
  Counter getCounterValue();

  /** @domName CSSPrimitiveValue.getFloatValue */
  num getFloatValue(int unitType);

  /** @domName CSSPrimitiveValue.getRGBColorValue */
  RGBColor getRGBColorValue();

  /** @domName CSSPrimitiveValue.getRectValue */
  Rect getRectValue();

  /** @domName CSSPrimitiveValue.getStringValue */
  String getStringValue();

  /** @domName CSSPrimitiveValue.setFloatValue */
  void setFloatValue(int unitType, num floatValue);

  /** @domName CSSPrimitiveValue.setStringValue */
  void setStringValue(int stringType, String stringValue);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName CSSRule
interface CSSRule {

  static final int CHARSET_RULE = 2;

  static final int FONT_FACE_RULE = 5;

  static final int IMPORT_RULE = 3;

  static final int MEDIA_RULE = 4;

  static final int PAGE_RULE = 6;

  static final int STYLE_RULE = 1;

  static final int UNKNOWN_RULE = 0;

  static final int WEBKIT_KEYFRAMES_RULE = 7;

  static final int WEBKIT_KEYFRAME_RULE = 8;

  static final int WEBKIT_REGION_RULE = 10;

  /** @domName CSSRule.cssText */
  String cssText;

  /** @domName CSSRule.parentRule */
  final CSSRule parentRule;

  /** @domName CSSRule.parentStyleSheet */
  final CSSStyleSheet parentStyleSheet;

  /** @domName CSSRule.type */
  final int type;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName CSSRuleList
interface CSSRuleList {

  /** @domName CSSRuleList.length */
  final int length;

  /** @domName CSSRuleList.item */
  CSSRule item(int index);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName CSSStyleDeclaration
interface CSSStyleDeclaration default _CSSStyleDeclarationFactoryProvider {
  CSSStyleDeclaration();
  CSSStyleDeclaration.css(String css);


  /** @domName CSSStyleDeclaration.cssText */
  String cssText;

  /** @domName CSSStyleDeclaration.length */
  final int length;

  /** @domName CSSStyleDeclaration.parentRule */
  final CSSRule parentRule;

  /** @domName CSSStyleDeclaration.getPropertyCSSValue */
  CSSValue getPropertyCSSValue(String propertyName);

  /** @domName CSSStyleDeclaration.getPropertyPriority */
  String getPropertyPriority(String propertyName);

  /** @domName CSSStyleDeclaration.getPropertyShorthand */
  String getPropertyShorthand(String propertyName);

  /** @domName CSSStyleDeclaration.getPropertyValue */
  String getPropertyValue(String propertyName);

  /** @domName CSSStyleDeclaration.isPropertyImplicit */
  bool isPropertyImplicit(String propertyName);

  /** @domName CSSStyleDeclaration.item */
  String item(int index);

  /** @domName CSSStyleDeclaration.removeProperty */
  String removeProperty(String propertyName);

  /** @domName CSSStyleDeclaration.setProperty */
  void setProperty(String propertyName, String value, [String priority]);


  /** Gets the value of "animation" */
  String get animation();

  /** Sets the value of "animation" */
  void set animation(var value);

  /** Gets the value of "animation-delay" */
  String get animationDelay();

  /** Sets the value of "animation-delay" */
  void set animationDelay(var value);

  /** Gets the value of "animation-direction" */
  String get animationDirection();

  /** Sets the value of "animation-direction" */
  void set animationDirection(var value);

  /** Gets the value of "animation-duration" */
  String get animationDuration();

  /** Sets the value of "animation-duration" */
  void set animationDuration(var value);

  /** Gets the value of "animation-fill-mode" */
  String get animationFillMode();

  /** Sets the value of "animation-fill-mode" */
  void set animationFillMode(var value);

  /** Gets the value of "animation-iteration-count" */
  String get animationIterationCount();

  /** Sets the value of "animation-iteration-count" */
  void set animationIterationCount(var value);

  /** Gets the value of "animation-name" */
  String get animationName();

  /** Sets the value of "animation-name" */
  void set animationName(var value);

  /** Gets the value of "animation-play-state" */
  String get animationPlayState();

  /** Sets the value of "animation-play-state" */
  void set animationPlayState(var value);

  /** Gets the value of "animation-timing-function" */
  String get animationTimingFunction();

  /** Sets the value of "animation-timing-function" */
  void set animationTimingFunction(var value);

  /** Gets the value of "appearance" */
  String get appearance();

  /** Sets the value of "appearance" */
  void set appearance(var value);

  /** Gets the value of "backface-visibility" */
  String get backfaceVisibility();

  /** Sets the value of "backface-visibility" */
  void set backfaceVisibility(var value);

  /** Gets the value of "background" */
  String get background();

  /** Sets the value of "background" */
  void set background(var value);

  /** Gets the value of "background-attachment" */
  String get backgroundAttachment();

  /** Sets the value of "background-attachment" */
  void set backgroundAttachment(var value);

  /** Gets the value of "background-clip" */
  String get backgroundClip();

  /** Sets the value of "background-clip" */
  void set backgroundClip(var value);

  /** Gets the value of "background-color" */
  String get backgroundColor();

  /** Sets the value of "background-color" */
  void set backgroundColor(var value);

  /** Gets the value of "background-composite" */
  String get backgroundComposite();

  /** Sets the value of "background-composite" */
  void set backgroundComposite(var value);

  /** Gets the value of "background-image" */
  String get backgroundImage();

  /** Sets the value of "background-image" */
  void set backgroundImage(var value);

  /** Gets the value of "background-origin" */
  String get backgroundOrigin();

  /** Sets the value of "background-origin" */
  void set backgroundOrigin(var value);

  /** Gets the value of "background-position" */
  String get backgroundPosition();

  /** Sets the value of "background-position" */
  void set backgroundPosition(var value);

  /** Gets the value of "background-position-x" */
  String get backgroundPositionX();

  /** Sets the value of "background-position-x" */
  void set backgroundPositionX(var value);

  /** Gets the value of "background-position-y" */
  String get backgroundPositionY();

  /** Sets the value of "background-position-y" */
  void set backgroundPositionY(var value);

  /** Gets the value of "background-repeat" */
  String get backgroundRepeat();

  /** Sets the value of "background-repeat" */
  void set backgroundRepeat(var value);

  /** Gets the value of "background-repeat-x" */
  String get backgroundRepeatX();

  /** Sets the value of "background-repeat-x" */
  void set backgroundRepeatX(var value);

  /** Gets the value of "background-repeat-y" */
  String get backgroundRepeatY();

  /** Sets the value of "background-repeat-y" */
  void set backgroundRepeatY(var value);

  /** Gets the value of "background-size" */
  String get backgroundSize();

  /** Sets the value of "background-size" */
  void set backgroundSize(var value);

  /** Gets the value of "border" */
  String get border();

  /** Sets the value of "border" */
  void set border(var value);

  /** Gets the value of "border-after" */
  String get borderAfter();

  /** Sets the value of "border-after" */
  void set borderAfter(var value);

  /** Gets the value of "border-after-color" */
  String get borderAfterColor();

  /** Sets the value of "border-after-color" */
  void set borderAfterColor(var value);

  /** Gets the value of "border-after-style" */
  String get borderAfterStyle();

  /** Sets the value of "border-after-style" */
  void set borderAfterStyle(var value);

  /** Gets the value of "border-after-width" */
  String get borderAfterWidth();

  /** Sets the value of "border-after-width" */
  void set borderAfterWidth(var value);

  /** Gets the value of "border-before" */
  String get borderBefore();

  /** Sets the value of "border-before" */
  void set borderBefore(var value);

  /** Gets the value of "border-before-color" */
  String get borderBeforeColor();

  /** Sets the value of "border-before-color" */
  void set borderBeforeColor(var value);

  /** Gets the value of "border-before-style" */
  String get borderBeforeStyle();

  /** Sets the value of "border-before-style" */
  void set borderBeforeStyle(var value);

  /** Gets the value of "border-before-width" */
  String get borderBeforeWidth();

  /** Sets the value of "border-before-width" */
  void set borderBeforeWidth(var value);

  /** Gets the value of "border-bottom" */
  String get borderBottom();

  /** Sets the value of "border-bottom" */
  void set borderBottom(var value);

  /** Gets the value of "border-bottom-color" */
  String get borderBottomColor();

  /** Sets the value of "border-bottom-color" */
  void set borderBottomColor(var value);

  /** Gets the value of "border-bottom-left-radius" */
  String get borderBottomLeftRadius();

  /** Sets the value of "border-bottom-left-radius" */
  void set borderBottomLeftRadius(var value);

  /** Gets the value of "border-bottom-right-radius" */
  String get borderBottomRightRadius();

  /** Sets the value of "border-bottom-right-radius" */
  void set borderBottomRightRadius(var value);

  /** Gets the value of "border-bottom-style" */
  String get borderBottomStyle();

  /** Sets the value of "border-bottom-style" */
  void set borderBottomStyle(var value);

  /** Gets the value of "border-bottom-width" */
  String get borderBottomWidth();

  /** Sets the value of "border-bottom-width" */
  void set borderBottomWidth(var value);

  /** Gets the value of "border-collapse" */
  String get borderCollapse();

  /** Sets the value of "border-collapse" */
  void set borderCollapse(var value);

  /** Gets the value of "border-color" */
  String get borderColor();

  /** Sets the value of "border-color" */
  void set borderColor(var value);

  /** Gets the value of "border-end" */
  String get borderEnd();

  /** Sets the value of "border-end" */
  void set borderEnd(var value);

  /** Gets the value of "border-end-color" */
  String get borderEndColor();

  /** Sets the value of "border-end-color" */
  void set borderEndColor(var value);

  /** Gets the value of "border-end-style" */
  String get borderEndStyle();

  /** Sets the value of "border-end-style" */
  void set borderEndStyle(var value);

  /** Gets the value of "border-end-width" */
  String get borderEndWidth();

  /** Sets the value of "border-end-width" */
  void set borderEndWidth(var value);

  /** Gets the value of "border-fit" */
  String get borderFit();

  /** Sets the value of "border-fit" */
  void set borderFit(var value);

  /** Gets the value of "border-horizontal-spacing" */
  String get borderHorizontalSpacing();

  /** Sets the value of "border-horizontal-spacing" */
  void set borderHorizontalSpacing(var value);

  /** Gets the value of "border-image" */
  String get borderImage();

  /** Sets the value of "border-image" */
  void set borderImage(var value);

  /** Gets the value of "border-image-outset" */
  String get borderImageOutset();

  /** Sets the value of "border-image-outset" */
  void set borderImageOutset(var value);

  /** Gets the value of "border-image-repeat" */
  String get borderImageRepeat();

  /** Sets the value of "border-image-repeat" */
  void set borderImageRepeat(var value);

  /** Gets the value of "border-image-slice" */
  String get borderImageSlice();

  /** Sets the value of "border-image-slice" */
  void set borderImageSlice(var value);

  /** Gets the value of "border-image-source" */
  String get borderImageSource();

  /** Sets the value of "border-image-source" */
  void set borderImageSource(var value);

  /** Gets the value of "border-image-width" */
  String get borderImageWidth();

  /** Sets the value of "border-image-width" */
  void set borderImageWidth(var value);

  /** Gets the value of "border-left" */
  String get borderLeft();

  /** Sets the value of "border-left" */
  void set borderLeft(var value);

  /** Gets the value of "border-left-color" */
  String get borderLeftColor();

  /** Sets the value of "border-left-color" */
  void set borderLeftColor(var value);

  /** Gets the value of "border-left-style" */
  String get borderLeftStyle();

  /** Sets the value of "border-left-style" */
  void set borderLeftStyle(var value);

  /** Gets the value of "border-left-width" */
  String get borderLeftWidth();

  /** Sets the value of "border-left-width" */
  void set borderLeftWidth(var value);

  /** Gets the value of "border-radius" */
  String get borderRadius();

  /** Sets the value of "border-radius" */
  void set borderRadius(var value);

  /** Gets the value of "border-right" */
  String get borderRight();

  /** Sets the value of "border-right" */
  void set borderRight(var value);

  /** Gets the value of "border-right-color" */
  String get borderRightColor();

  /** Sets the value of "border-right-color" */
  void set borderRightColor(var value);

  /** Gets the value of "border-right-style" */
  String get borderRightStyle();

  /** Sets the value of "border-right-style" */
  void set borderRightStyle(var value);

  /** Gets the value of "border-right-width" */
  String get borderRightWidth();

  /** Sets the value of "border-right-width" */
  void set borderRightWidth(var value);

  /** Gets the value of "border-spacing" */
  String get borderSpacing();

  /** Sets the value of "border-spacing" */
  void set borderSpacing(var value);

  /** Gets the value of "border-start" */
  String get borderStart();

  /** Sets the value of "border-start" */
  void set borderStart(var value);

  /** Gets the value of "border-start-color" */
  String get borderStartColor();

  /** Sets the value of "border-start-color" */
  void set borderStartColor(var value);

  /** Gets the value of "border-start-style" */
  String get borderStartStyle();

  /** Sets the value of "border-start-style" */
  void set borderStartStyle(var value);

  /** Gets the value of "border-start-width" */
  String get borderStartWidth();

  /** Sets the value of "border-start-width" */
  void set borderStartWidth(var value);

  /** Gets the value of "border-style" */
  String get borderStyle();

  /** Sets the value of "border-style" */
  void set borderStyle(var value);

  /** Gets the value of "border-top" */
  String get borderTop();

  /** Sets the value of "border-top" */
  void set borderTop(var value);

  /** Gets the value of "border-top-color" */
  String get borderTopColor();

  /** Sets the value of "border-top-color" */
  void set borderTopColor(var value);

  /** Gets the value of "border-top-left-radius" */
  String get borderTopLeftRadius();

  /** Sets the value of "border-top-left-radius" */
  void set borderTopLeftRadius(var value);

  /** Gets the value of "border-top-right-radius" */
  String get borderTopRightRadius();

  /** Sets the value of "border-top-right-radius" */
  void set borderTopRightRadius(var value);

  /** Gets the value of "border-top-style" */
  String get borderTopStyle();

  /** Sets the value of "border-top-style" */
  void set borderTopStyle(var value);

  /** Gets the value of "border-top-width" */
  String get borderTopWidth();

  /** Sets the value of "border-top-width" */
  void set borderTopWidth(var value);

  /** Gets the value of "border-vertical-spacing" */
  String get borderVerticalSpacing();

  /** Sets the value of "border-vertical-spacing" */
  void set borderVerticalSpacing(var value);

  /** Gets the value of "border-width" */
  String get borderWidth();

  /** Sets the value of "border-width" */
  void set borderWidth(var value);

  /** Gets the value of "bottom" */
  String get bottom();

  /** Sets the value of "bottom" */
  void set bottom(var value);

  /** Gets the value of "box-align" */
  String get boxAlign();

  /** Sets the value of "box-align" */
  void set boxAlign(var value);

  /** Gets the value of "box-direction" */
  String get boxDirection();

  /** Sets the value of "box-direction" */
  void set boxDirection(var value);

  /** Gets the value of "box-flex" */
  String get boxFlex();

  /** Sets the value of "box-flex" */
  void set boxFlex(var value);

  /** Gets the value of "box-flex-group" */
  String get boxFlexGroup();

  /** Sets the value of "box-flex-group" */
  void set boxFlexGroup(var value);

  /** Gets the value of "box-lines" */
  String get boxLines();

  /** Sets the value of "box-lines" */
  void set boxLines(var value);

  /** Gets the value of "box-ordinal-group" */
  String get boxOrdinalGroup();

  /** Sets the value of "box-ordinal-group" */
  void set boxOrdinalGroup(var value);

  /** Gets the value of "box-orient" */
  String get boxOrient();

  /** Sets the value of "box-orient" */
  void set boxOrient(var value);

  /** Gets the value of "box-pack" */
  String get boxPack();

  /** Sets the value of "box-pack" */
  void set boxPack(var value);

  /** Gets the value of "box-reflect" */
  String get boxReflect();

  /** Sets the value of "box-reflect" */
  void set boxReflect(var value);

  /** Gets the value of "box-shadow" */
  String get boxShadow();

  /** Sets the value of "box-shadow" */
  void set boxShadow(var value);

  /** Gets the value of "box-sizing" */
  String get boxSizing();

  /** Sets the value of "box-sizing" */
  void set boxSizing(var value);

  /** Gets the value of "caption-side" */
  String get captionSide();

  /** Sets the value of "caption-side" */
  void set captionSide(var value);

  /** Gets the value of "clear" */
  String get clear();

  /** Sets the value of "clear" */
  void set clear(var value);

  /** Gets the value of "clip" */
  String get clip();

  /** Sets the value of "clip" */
  void set clip(var value);

  /** Gets the value of "color" */
  String get color();

  /** Sets the value of "color" */
  void set color(var value);

  /** Gets the value of "color-correction" */
  String get colorCorrection();

  /** Sets the value of "color-correction" */
  void set colorCorrection(var value);

  /** Gets the value of "column-break-after" */
  String get columnBreakAfter();

  /** Sets the value of "column-break-after" */
  void set columnBreakAfter(var value);

  /** Gets the value of "column-break-before" */
  String get columnBreakBefore();

  /** Sets the value of "column-break-before" */
  void set columnBreakBefore(var value);

  /** Gets the value of "column-break-inside" */
  String get columnBreakInside();

  /** Sets the value of "column-break-inside" */
  void set columnBreakInside(var value);

  /** Gets the value of "column-count" */
  String get columnCount();

  /** Sets the value of "column-count" */
  void set columnCount(var value);

  /** Gets the value of "column-gap" */
  String get columnGap();

  /** Sets the value of "column-gap" */
  void set columnGap(var value);

  /** Gets the value of "column-rule" */
  String get columnRule();

  /** Sets the value of "column-rule" */
  void set columnRule(var value);

  /** Gets the value of "column-rule-color" */
  String get columnRuleColor();

  /** Sets the value of "column-rule-color" */
  void set columnRuleColor(var value);

  /** Gets the value of "column-rule-style" */
  String get columnRuleStyle();

  /** Sets the value of "column-rule-style" */
  void set columnRuleStyle(var value);

  /** Gets the value of "column-rule-width" */
  String get columnRuleWidth();

  /** Sets the value of "column-rule-width" */
  void set columnRuleWidth(var value);

  /** Gets the value of "column-span" */
  String get columnSpan();

  /** Sets the value of "column-span" */
  void set columnSpan(var value);

  /** Gets the value of "column-width" */
  String get columnWidth();

  /** Sets the value of "column-width" */
  void set columnWidth(var value);

  /** Gets the value of "columns" */
  String get columns();

  /** Sets the value of "columns" */
  void set columns(var value);

  /** Gets the value of "content" */
  String get content();

  /** Sets the value of "content" */
  void set content(var value);

  /** Gets the value of "counter-increment" */
  String get counterIncrement();

  /** Sets the value of "counter-increment" */
  void set counterIncrement(var value);

  /** Gets the value of "counter-reset" */
  String get counterReset();

  /** Sets the value of "counter-reset" */
  void set counterReset(var value);

  /** Gets the value of "cursor" */
  String get cursor();

  /** Sets the value of "cursor" */
  void set cursor(var value);

  /** Gets the value of "direction" */
  String get direction();

  /** Sets the value of "direction" */
  void set direction(var value);

  /** Gets the value of "display" */
  String get display();

  /** Sets the value of "display" */
  void set display(var value);

  /** Gets the value of "empty-cells" */
  String get emptyCells();

  /** Sets the value of "empty-cells" */
  void set emptyCells(var value);

  /** Gets the value of "filter" */
  String get filter();

  /** Sets the value of "filter" */
  void set filter(var value);

  /** Gets the value of "flex-align" */
  String get flexAlign();

  /** Sets the value of "flex-align" */
  void set flexAlign(var value);

  /** Gets the value of "flex-flow" */
  String get flexFlow();

  /** Sets the value of "flex-flow" */
  void set flexFlow(var value);

  /** Gets the value of "flex-order" */
  String get flexOrder();

  /** Sets the value of "flex-order" */
  void set flexOrder(var value);

  /** Gets the value of "flex-pack" */
  String get flexPack();

  /** Sets the value of "flex-pack" */
  void set flexPack(var value);

  /** Gets the value of "float" */
  String get float();

  /** Sets the value of "float" */
  void set float(var value);

  /** Gets the value of "flow-from" */
  String get flowFrom();

  /** Sets the value of "flow-from" */
  void set flowFrom(var value);

  /** Gets the value of "flow-into" */
  String get flowInto();

  /** Sets the value of "flow-into" */
  void set flowInto(var value);

  /** Gets the value of "font" */
  String get font();

  /** Sets the value of "font" */
  void set font(var value);

  /** Gets the value of "font-family" */
  String get fontFamily();

  /** Sets the value of "font-family" */
  void set fontFamily(var value);

  /** Gets the value of "font-feature-settings" */
  String get fontFeatureSettings();

  /** Sets the value of "font-feature-settings" */
  void set fontFeatureSettings(var value);

  /** Gets the value of "font-size" */
  String get fontSize();

  /** Sets the value of "font-size" */
  void set fontSize(var value);

  /** Gets the value of "font-size-delta" */
  String get fontSizeDelta();

  /** Sets the value of "font-size-delta" */
  void set fontSizeDelta(var value);

  /** Gets the value of "font-smoothing" */
  String get fontSmoothing();

  /** Sets the value of "font-smoothing" */
  void set fontSmoothing(var value);

  /** Gets the value of "font-stretch" */
  String get fontStretch();

  /** Sets the value of "font-stretch" */
  void set fontStretch(var value);

  /** Gets the value of "font-style" */
  String get fontStyle();

  /** Sets the value of "font-style" */
  void set fontStyle(var value);

  /** Gets the value of "font-variant" */
  String get fontVariant();

  /** Sets the value of "font-variant" */
  void set fontVariant(var value);

  /** Gets the value of "font-weight" */
  String get fontWeight();

  /** Sets the value of "font-weight" */
  void set fontWeight(var value);

  /** Gets the value of "height" */
  String get height();

  /** Sets the value of "height" */
  void set height(var value);

  /** Gets the value of "highlight" */
  String get highlight();

  /** Sets the value of "highlight" */
  void set highlight(var value);

  /** Gets the value of "hyphenate-character" */
  String get hyphenateCharacter();

  /** Sets the value of "hyphenate-character" */
  void set hyphenateCharacter(var value);

  /** Gets the value of "hyphenate-limit-after" */
  String get hyphenateLimitAfter();

  /** Sets the value of "hyphenate-limit-after" */
  void set hyphenateLimitAfter(var value);

  /** Gets the value of "hyphenate-limit-before" */
  String get hyphenateLimitBefore();

  /** Sets the value of "hyphenate-limit-before" */
  void set hyphenateLimitBefore(var value);

  /** Gets the value of "hyphenate-limit-lines" */
  String get hyphenateLimitLines();

  /** Sets the value of "hyphenate-limit-lines" */
  void set hyphenateLimitLines(var value);

  /** Gets the value of "hyphens" */
  String get hyphens();

  /** Sets the value of "hyphens" */
  void set hyphens(var value);

  /** Gets the value of "image-rendering" */
  String get imageRendering();

  /** Sets the value of "image-rendering" */
  void set imageRendering(var value);

  /** Gets the value of "left" */
  String get left();

  /** Sets the value of "left" */
  void set left(var value);

  /** Gets the value of "letter-spacing" */
  String get letterSpacing();

  /** Sets the value of "letter-spacing" */
  void set letterSpacing(var value);

  /** Gets the value of "line-box-contain" */
  String get lineBoxContain();

  /** Sets the value of "line-box-contain" */
  void set lineBoxContain(var value);

  /** Gets the value of "line-break" */
  String get lineBreak();

  /** Sets the value of "line-break" */
  void set lineBreak(var value);

  /** Gets the value of "line-clamp" */
  String get lineClamp();

  /** Sets the value of "line-clamp" */
  void set lineClamp(var value);

  /** Gets the value of "line-height" */
  String get lineHeight();

  /** Sets the value of "line-height" */
  void set lineHeight(var value);

  /** Gets the value of "list-style" */
  String get listStyle();

  /** Sets the value of "list-style" */
  void set listStyle(var value);

  /** Gets the value of "list-style-image" */
  String get listStyleImage();

  /** Sets the value of "list-style-image" */
  void set listStyleImage(var value);

  /** Gets the value of "list-style-position" */
  String get listStylePosition();

  /** Sets the value of "list-style-position" */
  void set listStylePosition(var value);

  /** Gets the value of "list-style-type" */
  String get listStyleType();

  /** Sets the value of "list-style-type" */
  void set listStyleType(var value);

  /** Gets the value of "locale" */
  String get locale();

  /** Sets the value of "locale" */
  void set locale(var value);

  /** Gets the value of "logical-height" */
  String get logicalHeight();

  /** Sets the value of "logical-height" */
  void set logicalHeight(var value);

  /** Gets the value of "logical-width" */
  String get logicalWidth();

  /** Sets the value of "logical-width" */
  void set logicalWidth(var value);

  /** Gets the value of "margin" */
  String get margin();

  /** Sets the value of "margin" */
  void set margin(var value);

  /** Gets the value of "margin-after" */
  String get marginAfter();

  /** Sets the value of "margin-after" */
  void set marginAfter(var value);

  /** Gets the value of "margin-after-collapse" */
  String get marginAfterCollapse();

  /** Sets the value of "margin-after-collapse" */
  void set marginAfterCollapse(var value);

  /** Gets the value of "margin-before" */
  String get marginBefore();

  /** Sets the value of "margin-before" */
  void set marginBefore(var value);

  /** Gets the value of "margin-before-collapse" */
  String get marginBeforeCollapse();

  /** Sets the value of "margin-before-collapse" */
  void set marginBeforeCollapse(var value);

  /** Gets the value of "margin-bottom" */
  String get marginBottom();

  /** Sets the value of "margin-bottom" */
  void set marginBottom(var value);

  /** Gets the value of "margin-bottom-collapse" */
  String get marginBottomCollapse();

  /** Sets the value of "margin-bottom-collapse" */
  void set marginBottomCollapse(var value);

  /** Gets the value of "margin-collapse" */
  String get marginCollapse();

  /** Sets the value of "margin-collapse" */
  void set marginCollapse(var value);

  /** Gets the value of "margin-end" */
  String get marginEnd();

  /** Sets the value of "margin-end" */
  void set marginEnd(var value);

  /** Gets the value of "margin-left" */
  String get marginLeft();

  /** Sets the value of "margin-left" */
  void set marginLeft(var value);

  /** Gets the value of "margin-right" */
  String get marginRight();

  /** Sets the value of "margin-right" */
  void set marginRight(var value);

  /** Gets the value of "margin-start" */
  String get marginStart();

  /** Sets the value of "margin-start" */
  void set marginStart(var value);

  /** Gets the value of "margin-top" */
  String get marginTop();

  /** Sets the value of "margin-top" */
  void set marginTop(var value);

  /** Gets the value of "margin-top-collapse" */
  String get marginTopCollapse();

  /** Sets the value of "margin-top-collapse" */
  void set marginTopCollapse(var value);

  /** Gets the value of "marquee" */
  String get marquee();

  /** Sets the value of "marquee" */
  void set marquee(var value);

  /** Gets the value of "marquee-direction" */
  String get marqueeDirection();

  /** Sets the value of "marquee-direction" */
  void set marqueeDirection(var value);

  /** Gets the value of "marquee-increment" */
  String get marqueeIncrement();

  /** Sets the value of "marquee-increment" */
  void set marqueeIncrement(var value);

  /** Gets the value of "marquee-repetition" */
  String get marqueeRepetition();

  /** Sets the value of "marquee-repetition" */
  void set marqueeRepetition(var value);

  /** Gets the value of "marquee-speed" */
  String get marqueeSpeed();

  /** Sets the value of "marquee-speed" */
  void set marqueeSpeed(var value);

  /** Gets the value of "marquee-style" */
  String get marqueeStyle();

  /** Sets the value of "marquee-style" */
  void set marqueeStyle(var value);

  /** Gets the value of "mask" */
  String get mask();

  /** Sets the value of "mask" */
  void set mask(var value);

  /** Gets the value of "mask-attachment" */
  String get maskAttachment();

  /** Sets the value of "mask-attachment" */
  void set maskAttachment(var value);

  /** Gets the value of "mask-box-image" */
  String get maskBoxImage();

  /** Sets the value of "mask-box-image" */
  void set maskBoxImage(var value);

  /** Gets the value of "mask-box-image-outset" */
  String get maskBoxImageOutset();

  /** Sets the value of "mask-box-image-outset" */
  void set maskBoxImageOutset(var value);

  /** Gets the value of "mask-box-image-repeat" */
  String get maskBoxImageRepeat();

  /** Sets the value of "mask-box-image-repeat" */
  void set maskBoxImageRepeat(var value);

  /** Gets the value of "mask-box-image-slice" */
  String get maskBoxImageSlice();

  /** Sets the value of "mask-box-image-slice" */
  void set maskBoxImageSlice(var value);

  /** Gets the value of "mask-box-image-source" */
  String get maskBoxImageSource();

  /** Sets the value of "mask-box-image-source" */
  void set maskBoxImageSource(var value);

  /** Gets the value of "mask-box-image-width" */
  String get maskBoxImageWidth();

  /** Sets the value of "mask-box-image-width" */
  void set maskBoxImageWidth(var value);

  /** Gets the value of "mask-clip" */
  String get maskClip();

  /** Sets the value of "mask-clip" */
  void set maskClip(var value);

  /** Gets the value of "mask-composite" */
  String get maskComposite();

  /** Sets the value of "mask-composite" */
  void set maskComposite(var value);

  /** Gets the value of "mask-image" */
  String get maskImage();

  /** Sets the value of "mask-image" */
  void set maskImage(var value);

  /** Gets the value of "mask-origin" */
  String get maskOrigin();

  /** Sets the value of "mask-origin" */
  void set maskOrigin(var value);

  /** Gets the value of "mask-position" */
  String get maskPosition();

  /** Sets the value of "mask-position" */
  void set maskPosition(var value);

  /** Gets the value of "mask-position-x" */
  String get maskPositionX();

  /** Sets the value of "mask-position-x" */
  void set maskPositionX(var value);

  /** Gets the value of "mask-position-y" */
  String get maskPositionY();

  /** Sets the value of "mask-position-y" */
  void set maskPositionY(var value);

  /** Gets the value of "mask-repeat" */
  String get maskRepeat();

  /** Sets the value of "mask-repeat" */
  void set maskRepeat(var value);

  /** Gets the value of "mask-repeat-x" */
  String get maskRepeatX();

  /** Sets the value of "mask-repeat-x" */
  void set maskRepeatX(var value);

  /** Gets the value of "mask-repeat-y" */
  String get maskRepeatY();

  /** Sets the value of "mask-repeat-y" */
  void set maskRepeatY(var value);

  /** Gets the value of "mask-size" */
  String get maskSize();

  /** Sets the value of "mask-size" */
  void set maskSize(var value);

  /** Gets the value of "match-nearest-mail-blockquote-color" */
  String get matchNearestMailBlockquoteColor();

  /** Sets the value of "match-nearest-mail-blockquote-color" */
  void set matchNearestMailBlockquoteColor(var value);

  /** Gets the value of "max-height" */
  String get maxHeight();

  /** Sets the value of "max-height" */
  void set maxHeight(var value);

  /** Gets the value of "max-logical-height" */
  String get maxLogicalHeight();

  /** Sets the value of "max-logical-height" */
  void set maxLogicalHeight(var value);

  /** Gets the value of "max-logical-width" */
  String get maxLogicalWidth();

  /** Sets the value of "max-logical-width" */
  void set maxLogicalWidth(var value);

  /** Gets the value of "max-width" */
  String get maxWidth();

  /** Sets the value of "max-width" */
  void set maxWidth(var value);

  /** Gets the value of "min-height" */
  String get minHeight();

  /** Sets the value of "min-height" */
  void set minHeight(var value);

  /** Gets the value of "min-logical-height" */
  String get minLogicalHeight();

  /** Sets the value of "min-logical-height" */
  void set minLogicalHeight(var value);

  /** Gets the value of "min-logical-width" */
  String get minLogicalWidth();

  /** Sets the value of "min-logical-width" */
  void set minLogicalWidth(var value);

  /** Gets the value of "min-width" */
  String get minWidth();

  /** Sets the value of "min-width" */
  void set minWidth(var value);

  /** Gets the value of "nbsp-mode" */
  String get nbspMode();

  /** Sets the value of "nbsp-mode" */
  void set nbspMode(var value);

  /** Gets the value of "opacity" */
  String get opacity();

  /** Sets the value of "opacity" */
  void set opacity(var value);

  /** Gets the value of "orphans" */
  String get orphans();

  /** Sets the value of "orphans" */
  void set orphans(var value);

  /** Gets the value of "outline" */
  String get outline();

  /** Sets the value of "outline" */
  void set outline(var value);

  /** Gets the value of "outline-color" */
  String get outlineColor();

  /** Sets the value of "outline-color" */
  void set outlineColor(var value);

  /** Gets the value of "outline-offset" */
  String get outlineOffset();

  /** Sets the value of "outline-offset" */
  void set outlineOffset(var value);

  /** Gets the value of "outline-style" */
  String get outlineStyle();

  /** Sets the value of "outline-style" */
  void set outlineStyle(var value);

  /** Gets the value of "outline-width" */
  String get outlineWidth();

  /** Sets the value of "outline-width" */
  void set outlineWidth(var value);

  /** Gets the value of "overflow" */
  String get overflow();

  /** Sets the value of "overflow" */
  void set overflow(var value);

  /** Gets the value of "overflow-x" */
  String get overflowX();

  /** Sets the value of "overflow-x" */
  void set overflowX(var value);

  /** Gets the value of "overflow-y" */
  String get overflowY();

  /** Sets the value of "overflow-y" */
  void set overflowY(var value);

  /** Gets the value of "padding" */
  String get padding();

  /** Sets the value of "padding" */
  void set padding(var value);

  /** Gets the value of "padding-after" */
  String get paddingAfter();

  /** Sets the value of "padding-after" */
  void set paddingAfter(var value);

  /** Gets the value of "padding-before" */
  String get paddingBefore();

  /** Sets the value of "padding-before" */
  void set paddingBefore(var value);

  /** Gets the value of "padding-bottom" */
  String get paddingBottom();

  /** Sets the value of "padding-bottom" */
  void set paddingBottom(var value);

  /** Gets the value of "padding-end" */
  String get paddingEnd();

  /** Sets the value of "padding-end" */
  void set paddingEnd(var value);

  /** Gets the value of "padding-left" */
  String get paddingLeft();

  /** Sets the value of "padding-left" */
  void set paddingLeft(var value);

  /** Gets the value of "padding-right" */
  String get paddingRight();

  /** Sets the value of "padding-right" */
  void set paddingRight(var value);

  /** Gets the value of "padding-start" */
  String get paddingStart();

  /** Sets the value of "padding-start" */
  void set paddingStart(var value);

  /** Gets the value of "padding-top" */
  String get paddingTop();

  /** Sets the value of "padding-top" */
  void set paddingTop(var value);

  /** Gets the value of "page" */
  String get page();

  /** Sets the value of "page" */
  void set page(var value);

  /** Gets the value of "page-break-after" */
  String get pageBreakAfter();

  /** Sets the value of "page-break-after" */
  void set pageBreakAfter(var value);

  /** Gets the value of "page-break-before" */
  String get pageBreakBefore();

  /** Sets the value of "page-break-before" */
  void set pageBreakBefore(var value);

  /** Gets the value of "page-break-inside" */
  String get pageBreakInside();

  /** Sets the value of "page-break-inside" */
  void set pageBreakInside(var value);

  /** Gets the value of "perspective" */
  String get perspective();

  /** Sets the value of "perspective" */
  void set perspective(var value);

  /** Gets the value of "perspective-origin" */
  String get perspectiveOrigin();

  /** Sets the value of "perspective-origin" */
  void set perspectiveOrigin(var value);

  /** Gets the value of "perspective-origin-x" */
  String get perspectiveOriginX();

  /** Sets the value of "perspective-origin-x" */
  void set perspectiveOriginX(var value);

  /** Gets the value of "perspective-origin-y" */
  String get perspectiveOriginY();

  /** Sets the value of "perspective-origin-y" */
  void set perspectiveOriginY(var value);

  /** Gets the value of "pointer-events" */
  String get pointerEvents();

  /** Sets the value of "pointer-events" */
  void set pointerEvents(var value);

  /** Gets the value of "position" */
  String get position();

  /** Sets the value of "position" */
  void set position(var value);

  /** Gets the value of "quotes" */
  String get quotes();

  /** Sets the value of "quotes" */
  void set quotes(var value);

  /** Gets the value of "region-break-after" */
  String get regionBreakAfter();

  /** Sets the value of "region-break-after" */
  void set regionBreakAfter(var value);

  /** Gets the value of "region-break-before" */
  String get regionBreakBefore();

  /** Sets the value of "region-break-before" */
  void set regionBreakBefore(var value);

  /** Gets the value of "region-break-inside" */
  String get regionBreakInside();

  /** Sets the value of "region-break-inside" */
  void set regionBreakInside(var value);

  /** Gets the value of "region-overflow" */
  String get regionOverflow();

  /** Sets the value of "region-overflow" */
  void set regionOverflow(var value);

  /** Gets the value of "resize" */
  String get resize();

  /** Sets the value of "resize" */
  void set resize(var value);

  /** Gets the value of "right" */
  String get right();

  /** Sets the value of "right" */
  void set right(var value);

  /** Gets the value of "rtl-ordering" */
  String get rtlOrdering();

  /** Sets the value of "rtl-ordering" */
  void set rtlOrdering(var value);

  /** Gets the value of "size" */
  String get size();

  /** Sets the value of "size" */
  void set size(var value);

  /** Gets the value of "speak" */
  String get speak();

  /** Sets the value of "speak" */
  void set speak(var value);

  /** Gets the value of "src" */
  String get src();

  /** Sets the value of "src" */
  void set src(var value);

  /** Gets the value of "table-layout" */
  String get tableLayout();

  /** Sets the value of "table-layout" */
  void set tableLayout(var value);

  /** Gets the value of "tap-highlight-color" */
  String get tapHighlightColor();

  /** Sets the value of "tap-highlight-color" */
  void set tapHighlightColor(var value);

  /** Gets the value of "text-align" */
  String get textAlign();

  /** Sets the value of "text-align" */
  void set textAlign(var value);

  /** Gets the value of "text-combine" */
  String get textCombine();

  /** Sets the value of "text-combine" */
  void set textCombine(var value);

  /** Gets the value of "text-decoration" */
  String get textDecoration();

  /** Sets the value of "text-decoration" */
  void set textDecoration(var value);

  /** Gets the value of "text-decorations-in-effect" */
  String get textDecorationsInEffect();

  /** Sets the value of "text-decorations-in-effect" */
  void set textDecorationsInEffect(var value);

  /** Gets the value of "text-emphasis" */
  String get textEmphasis();

  /** Sets the value of "text-emphasis" */
  void set textEmphasis(var value);

  /** Gets the value of "text-emphasis-color" */
  String get textEmphasisColor();

  /** Sets the value of "text-emphasis-color" */
  void set textEmphasisColor(var value);

  /** Gets the value of "text-emphasis-position" */
  String get textEmphasisPosition();

  /** Sets the value of "text-emphasis-position" */
  void set textEmphasisPosition(var value);

  /** Gets the value of "text-emphasis-style" */
  String get textEmphasisStyle();

  /** Sets the value of "text-emphasis-style" */
  void set textEmphasisStyle(var value);

  /** Gets the value of "text-fill-color" */
  String get textFillColor();

  /** Sets the value of "text-fill-color" */
  void set textFillColor(var value);

  /** Gets the value of "text-indent" */
  String get textIndent();

  /** Sets the value of "text-indent" */
  void set textIndent(var value);

  /** Gets the value of "text-line-through" */
  String get textLineThrough();

  /** Sets the value of "text-line-through" */
  void set textLineThrough(var value);

  /** Gets the value of "text-line-through-color" */
  String get textLineThroughColor();

  /** Sets the value of "text-line-through-color" */
  void set textLineThroughColor(var value);

  /** Gets the value of "text-line-through-mode" */
  String get textLineThroughMode();

  /** Sets the value of "text-line-through-mode" */
  void set textLineThroughMode(var value);

  /** Gets the value of "text-line-through-style" */
  String get textLineThroughStyle();

  /** Sets the value of "text-line-through-style" */
  void set textLineThroughStyle(var value);

  /** Gets the value of "text-line-through-width" */
  String get textLineThroughWidth();

  /** Sets the value of "text-line-through-width" */
  void set textLineThroughWidth(var value);

  /** Gets the value of "text-orientation" */
  String get textOrientation();

  /** Sets the value of "text-orientation" */
  void set textOrientation(var value);

  /** Gets the value of "text-overflow" */
  String get textOverflow();

  /** Sets the value of "text-overflow" */
  void set textOverflow(var value);

  /** Gets the value of "text-overline" */
  String get textOverline();

  /** Sets the value of "text-overline" */
  void set textOverline(var value);

  /** Gets the value of "text-overline-color" */
  String get textOverlineColor();

  /** Sets the value of "text-overline-color" */
  void set textOverlineColor(var value);

  /** Gets the value of "text-overline-mode" */
  String get textOverlineMode();

  /** Sets the value of "text-overline-mode" */
  void set textOverlineMode(var value);

  /** Gets the value of "text-overline-style" */
  String get textOverlineStyle();

  /** Sets the value of "text-overline-style" */
  void set textOverlineStyle(var value);

  /** Gets the value of "text-overline-width" */
  String get textOverlineWidth();

  /** Sets the value of "text-overline-width" */
  void set textOverlineWidth(var value);

  /** Gets the value of "text-rendering" */
  String get textRendering();

  /** Sets the value of "text-rendering" */
  void set textRendering(var value);

  /** Gets the value of "text-security" */
  String get textSecurity();

  /** Sets the value of "text-security" */
  void set textSecurity(var value);

  /** Gets the value of "text-shadow" */
  String get textShadow();

  /** Sets the value of "text-shadow" */
  void set textShadow(var value);

  /** Gets the value of "text-size-adjust" */
  String get textSizeAdjust();

  /** Sets the value of "text-size-adjust" */
  void set textSizeAdjust(var value);

  /** Gets the value of "text-stroke" */
  String get textStroke();

  /** Sets the value of "text-stroke" */
  void set textStroke(var value);

  /** Gets the value of "text-stroke-color" */
  String get textStrokeColor();

  /** Sets the value of "text-stroke-color" */
  void set textStrokeColor(var value);

  /** Gets the value of "text-stroke-width" */
  String get textStrokeWidth();

  /** Sets the value of "text-stroke-width" */
  void set textStrokeWidth(var value);

  /** Gets the value of "text-transform" */
  String get textTransform();

  /** Sets the value of "text-transform" */
  void set textTransform(var value);

  /** Gets the value of "text-underline" */
  String get textUnderline();

  /** Sets the value of "text-underline" */
  void set textUnderline(var value);

  /** Gets the value of "text-underline-color" */
  String get textUnderlineColor();

  /** Sets the value of "text-underline-color" */
  void set textUnderlineColor(var value);

  /** Gets the value of "text-underline-mode" */
  String get textUnderlineMode();

  /** Sets the value of "text-underline-mode" */
  void set textUnderlineMode(var value);

  /** Gets the value of "text-underline-style" */
  String get textUnderlineStyle();

  /** Sets the value of "text-underline-style" */
  void set textUnderlineStyle(var value);

  /** Gets the value of "text-underline-width" */
  String get textUnderlineWidth();

  /** Sets the value of "text-underline-width" */
  void set textUnderlineWidth(var value);

  /** Gets the value of "top" */
  String get top();

  /** Sets the value of "top" */
  void set top(var value);

  /** Gets the value of "transform" */
  String get transform();

  /** Sets the value of "transform" */
  void set transform(var value);

  /** Gets the value of "transform-origin" */
  String get transformOrigin();

  /** Sets the value of "transform-origin" */
  void set transformOrigin(var value);

  /** Gets the value of "transform-origin-x" */
  String get transformOriginX();

  /** Sets the value of "transform-origin-x" */
  void set transformOriginX(var value);

  /** Gets the value of "transform-origin-y" */
  String get transformOriginY();

  /** Sets the value of "transform-origin-y" */
  void set transformOriginY(var value);

  /** Gets the value of "transform-origin-z" */
  String get transformOriginZ();

  /** Sets the value of "transform-origin-z" */
  void set transformOriginZ(var value);

  /** Gets the value of "transform-style" */
  String get transformStyle();

  /** Sets the value of "transform-style" */
  void set transformStyle(var value);

  /** Gets the value of "transition" */
  String get transition();

  /** Sets the value of "transition" */
  void set transition(var value);

  /** Gets the value of "transition-delay" */
  String get transitionDelay();

  /** Sets the value of "transition-delay" */
  void set transitionDelay(var value);

  /** Gets the value of "transition-duration" */
  String get transitionDuration();

  /** Sets the value of "transition-duration" */
  void set transitionDuration(var value);

  /** Gets the value of "transition-property" */
  String get transitionProperty();

  /** Sets the value of "transition-property" */
  void set transitionProperty(var value);

  /** Gets the value of "transition-timing-function" */
  String get transitionTimingFunction();

  /** Sets the value of "transition-timing-function" */
  void set transitionTimingFunction(var value);

  /** Gets the value of "unicode-bidi" */
  String get unicodeBidi();

  /** Sets the value of "unicode-bidi" */
  void set unicodeBidi(var value);

  /** Gets the value of "unicode-range" */
  String get unicodeRange();

  /** Sets the value of "unicode-range" */
  void set unicodeRange(var value);

  /** Gets the value of "user-drag" */
  String get userDrag();

  /** Sets the value of "user-drag" */
  void set userDrag(var value);

  /** Gets the value of "user-modify" */
  String get userModify();

  /** Sets the value of "user-modify" */
  void set userModify(var value);

  /** Gets the value of "user-select" */
  String get userSelect();

  /** Sets the value of "user-select" */
  void set userSelect(var value);

  /** Gets the value of "vertical-align" */
  String get verticalAlign();

  /** Sets the value of "vertical-align" */
  void set verticalAlign(var value);

  /** Gets the value of "visibility" */
  String get visibility();

  /** Sets the value of "visibility" */
  void set visibility(var value);

  /** Gets the value of "white-space" */
  String get whiteSpace();

  /** Sets the value of "white-space" */
  void set whiteSpace(var value);

  /** Gets the value of "widows" */
  String get widows();

  /** Sets the value of "widows" */
  void set widows(var value);

  /** Gets the value of "width" */
  String get width();

  /** Sets the value of "width" */
  void set width(var value);

  /** Gets the value of "word-break" */
  String get wordBreak();

  /** Sets the value of "word-break" */
  void set wordBreak(var value);

  /** Gets the value of "word-spacing" */
  String get wordSpacing();

  /** Sets the value of "word-spacing" */
  void set wordSpacing(var value);

  /** Gets the value of "word-wrap" */
  String get wordWrap();

  /** Sets the value of "word-wrap" */
  void set wordWrap(var value);

  /** Gets the value of "wrap-shape" */
  String get wrapShape();

  /** Sets the value of "wrap-shape" */
  void set wrapShape(var value);

  /** Gets the value of "writing-mode" */
  String get writingMode();

  /** Sets the value of "writing-mode" */
  void set writingMode(var value);

  /** Gets the value of "z-index" */
  String get zIndex();

  /** Sets the value of "z-index" */
  void set zIndex(var value);

  /** Gets the value of "zoom" */
  String get zoom();

  /** Sets the value of "zoom" */
  void set zoom(var value);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName CSSStyleRule
interface CSSStyleRule extends CSSRule {

  /** @domName CSSStyleRule.selectorText */
  String selectorText;

  /** @domName CSSStyleRule.style */
  final CSSStyleDeclaration style;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName CSSStyleSheet
interface CSSStyleSheet extends StyleSheet {

  /** @domName CSSStyleSheet.cssRules */
  final CSSRuleList cssRules;

  /** @domName CSSStyleSheet.ownerRule */
  final CSSRule ownerRule;

  /** @domName CSSStyleSheet.rules */
  final CSSRuleList rules;

  /** @domName CSSStyleSheet.addRule */
  int addRule(String selector, String style, [int index]);

  /** @domName CSSStyleSheet.deleteRule */
  void deleteRule(int index);

  /** @domName CSSStyleSheet.insertRule */
  int insertRule(String rule, int index);

  /** @domName CSSStyleSheet.removeRule */
  void removeRule(int index);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName WebKitCSSTransformValue
interface CSSTransformValue extends CSSValueList {

  static final int CSS_MATRIX = 11;

  static final int CSS_MATRIX3D = 21;

  static final int CSS_PERSPECTIVE = 20;

  static final int CSS_ROTATE = 4;

  static final int CSS_ROTATE3D = 17;

  static final int CSS_ROTATEX = 14;

  static final int CSS_ROTATEY = 15;

  static final int CSS_ROTATEZ = 16;

  static final int CSS_SCALE = 5;

  static final int CSS_SCALE3D = 19;

  static final int CSS_SCALEX = 6;

  static final int CSS_SCALEY = 7;

  static final int CSS_SCALEZ = 18;

  static final int CSS_SKEW = 8;

  static final int CSS_SKEWX = 9;

  static final int CSS_SKEWY = 10;

  static final int CSS_TRANSLATE = 1;

  static final int CSS_TRANSLATE3D = 13;

  static final int CSS_TRANSLATEX = 2;

  static final int CSS_TRANSLATEY = 3;

  static final int CSS_TRANSLATEZ = 12;

  /** @domName WebKitCSSTransformValue.operationType */
  final int operationType;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName CSSUnknownRule
interface CSSUnknownRule extends CSSRule {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName CSSValue
interface CSSValue {

  static final int CSS_CUSTOM = 3;

  static final int CSS_INHERIT = 0;

  static final int CSS_PRIMITIVE_VALUE = 1;

  static final int CSS_VALUE_LIST = 2;

  /** @domName CSSValue.cssText */
  String cssText;

  /** @domName CSSValue.cssValueType */
  final int cssValueType;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName CSSValueList
interface CSSValueList extends CSSValue {

  /** @domName CSSValueList.length */
  final int length;

  /** @domName CSSValueList.item */
  CSSValue item(int index);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLCanvasElement
interface CanvasElement extends Element {

  /** @domName HTMLCanvasElement.height */
  int height;

  /** @domName HTMLCanvasElement.width */
  int width;

  /** @domName HTMLCanvasElement.getContext */
  Object getContext(String contextId);

  /** @domName HTMLCanvasElement.toDataURL */
  String toDataURL(String type);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName CanvasGradient
interface CanvasGradient {

  /** @domName CanvasGradient.addColorStop */
  void addColorStop(num offset, String color);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName CanvasPattern
interface CanvasPattern {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName CanvasRenderingContext
interface CanvasRenderingContext {

  /** @domName CanvasRenderingContext.canvas */
  final CanvasElement canvas;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName CanvasRenderingContext2D
interface CanvasRenderingContext2D extends CanvasRenderingContext {

  /** @domName CanvasRenderingContext2D.fillStyle */
  Dynamic fillStyle;

  /** @domName CanvasRenderingContext2D.font */
  String font;

  /** @domName CanvasRenderingContext2D.globalAlpha */
  num globalAlpha;

  /** @domName CanvasRenderingContext2D.globalCompositeOperation */
  String globalCompositeOperation;

  /** @domName CanvasRenderingContext2D.lineCap */
  String lineCap;

  /** @domName CanvasRenderingContext2D.lineJoin */
  String lineJoin;

  /** @domName CanvasRenderingContext2D.lineWidth */
  num lineWidth;

  /** @domName CanvasRenderingContext2D.miterLimit */
  num miterLimit;

  /** @domName CanvasRenderingContext2D.shadowBlur */
  num shadowBlur;

  /** @domName CanvasRenderingContext2D.shadowColor */
  String shadowColor;

  /** @domName CanvasRenderingContext2D.shadowOffsetX */
  num shadowOffsetX;

  /** @domName CanvasRenderingContext2D.shadowOffsetY */
  num shadowOffsetY;

  /** @domName CanvasRenderingContext2D.strokeStyle */
  Dynamic strokeStyle;

  /** @domName CanvasRenderingContext2D.textAlign */
  String textAlign;

  /** @domName CanvasRenderingContext2D.textBaseline */
  String textBaseline;

  /** @domName CanvasRenderingContext2D.webkitBackingStorePixelRatio */
  final num webkitBackingStorePixelRatio;

  /** @domName CanvasRenderingContext2D.webkitLineDash */
  List webkitLineDash;

  /** @domName CanvasRenderingContext2D.webkitLineDashOffset */
  num webkitLineDashOffset;

  /** @domName CanvasRenderingContext2D.arc */
  void arc(num x, num y, num radius, num startAngle, num endAngle, bool anticlockwise);

  /** @domName CanvasRenderingContext2D.arcTo */
  void arcTo(num x1, num y1, num x2, num y2, num radius);

  /** @domName CanvasRenderingContext2D.beginPath */
  void beginPath();

  /** @domName CanvasRenderingContext2D.bezierCurveTo */
  void bezierCurveTo(num cp1x, num cp1y, num cp2x, num cp2y, num x, num y);

  /** @domName CanvasRenderingContext2D.clearRect */
  void clearRect(num x, num y, num width, num height);

  /** @domName CanvasRenderingContext2D.clearShadow */
  void clearShadow();

  /** @domName CanvasRenderingContext2D.clip */
  void clip();

  /** @domName CanvasRenderingContext2D.closePath */
  void closePath();

  /** @domName CanvasRenderingContext2D.createImageData */
  ImageData createImageData(imagedata_OR_sw, [num sh]);

  /** @domName CanvasRenderingContext2D.createLinearGradient */
  CanvasGradient createLinearGradient(num x0, num y0, num x1, num y1);

  /** @domName CanvasRenderingContext2D.createPattern */
  CanvasPattern createPattern(canvas_OR_image, String repetitionType);

  /** @domName CanvasRenderingContext2D.createRadialGradient */
  CanvasGradient createRadialGradient(num x0, num y0, num r0, num x1, num y1, num r1);

  /** @domName CanvasRenderingContext2D.drawImage */
  void drawImage(canvas_OR_image_OR_video, num sx_OR_x, num sy_OR_y, [num sw_OR_width, num height_OR_sh, num dx, num dy, num dw, num dh]);

  /** @domName CanvasRenderingContext2D.drawImageFromRect */
  void drawImageFromRect(ImageElement image, [num sx, num sy, num sw, num sh, num dx, num dy, num dw, num dh, String compositeOperation]);

  /** @domName CanvasRenderingContext2D.fill */
  void fill();

  /** @domName CanvasRenderingContext2D.fillRect */
  void fillRect(num x, num y, num width, num height);

  /** @domName CanvasRenderingContext2D.fillText */
  void fillText(String text, num x, num y, [num maxWidth]);

  /** @domName CanvasRenderingContext2D.getImageData */
  ImageData getImageData(num sx, num sy, num sw, num sh);

  /** @domName CanvasRenderingContext2D.isPointInPath */
  bool isPointInPath(num x, num y);

  /** @domName CanvasRenderingContext2D.lineTo */
  void lineTo(num x, num y);

  /** @domName CanvasRenderingContext2D.measureText */
  TextMetrics measureText(String text);

  /** @domName CanvasRenderingContext2D.moveTo */
  void moveTo(num x, num y);

  /** @domName CanvasRenderingContext2D.putImageData */
  void putImageData(ImageData imagedata, num dx, num dy, [num dirtyX, num dirtyY, num dirtyWidth, num dirtyHeight]);

  /** @domName CanvasRenderingContext2D.quadraticCurveTo */
  void quadraticCurveTo(num cpx, num cpy, num x, num y);

  /** @domName CanvasRenderingContext2D.rect */
  void rect(num x, num y, num width, num height);

  /** @domName CanvasRenderingContext2D.restore */
  void restore();

  /** @domName CanvasRenderingContext2D.rotate */
  void rotate(num angle);

  /** @domName CanvasRenderingContext2D.save */
  void save();

  /** @domName CanvasRenderingContext2D.scale */
  void scale(num sx, num sy);

  /** @domName CanvasRenderingContext2D.setAlpha */
  void setAlpha(num alpha);

  /** @domName CanvasRenderingContext2D.setCompositeOperation */
  void setCompositeOperation(String compositeOperation);

  /** @domName CanvasRenderingContext2D.setFillColor */
  void setFillColor(c_OR_color_OR_grayLevel_OR_r, [num alpha_OR_g_OR_m, num b_OR_y, num a_OR_k, num a]);

  /** @domName CanvasRenderingContext2D.setLineCap */
  void setLineCap(String cap);

  /** @domName CanvasRenderingContext2D.setLineJoin */
  void setLineJoin(String join);

  /** @domName CanvasRenderingContext2D.setLineWidth */
  void setLineWidth(num width);

  /** @domName CanvasRenderingContext2D.setMiterLimit */
  void setMiterLimit(num limit);

  /** @domName CanvasRenderingContext2D.setShadow */
  void setShadow(num width, num height, num blur, [c_OR_color_OR_grayLevel_OR_r, num alpha_OR_g_OR_m, num b_OR_y, num a_OR_k, num a]);

  /** @domName CanvasRenderingContext2D.setStrokeColor */
  void setStrokeColor(c_OR_color_OR_grayLevel_OR_r, [num alpha_OR_g_OR_m, num b_OR_y, num a_OR_k, num a]);

  /** @domName CanvasRenderingContext2D.setTransform */
  void setTransform(num m11, num m12, num m21, num m22, num dx, num dy);

  /** @domName CanvasRenderingContext2D.stroke */
  void stroke();

  /** @domName CanvasRenderingContext2D.strokeRect */
  void strokeRect(num x, num y, num width, num height, [num lineWidth]);

  /** @domName CanvasRenderingContext2D.strokeText */
  void strokeText(String text, num x, num y, [num maxWidth]);

  /** @domName CanvasRenderingContext2D.transform */
  void transform(num m11, num m12, num m21, num m22, num dx, num dy);

  /** @domName CanvasRenderingContext2D.translate */
  void translate(num tx, num ty);

  /** @domName CanvasRenderingContext2D.webkitGetImageDataHD */
  ImageData webkitGetImageDataHD(num sx, num sy, num sw, num sh);

  /** @domName CanvasRenderingContext2D.webkitPutImageDataHD */
  void webkitPutImageDataHD(ImageData imagedata, num dx, num dy, [num dirtyX, num dirtyY, num dirtyWidth, num dirtyHeight]);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName CharacterData
interface CharacterData extends Node {

  /** @domName CharacterData.data */
  String data;

  /** @domName CharacterData.length */
  final int length;

  /** @domName CharacterData.appendData */
  void appendData(String data);

  /** @domName CharacterData.deleteData */
  void deleteData(int offset, int length);

  /** @domName CharacterData.insertData */
  void insertData(int offset, String data);

  /** @domName CharacterData.replaceData */
  void replaceData(int offset, int length, String data);

  /** @domName CharacterData.substringData */
  String substringData(int offset, int length);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName ClientRect
interface ClientRect {

  /** @domName ClientRect.bottom */
  final num bottom;

  /** @domName ClientRect.height */
  final num height;

  /** @domName ClientRect.left */
  final num left;

  /** @domName ClientRect.right */
  final num right;

  /** @domName ClientRect.top */
  final num top;

  /** @domName ClientRect.width */
  final num width;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName ClientRectList
interface ClientRectList {

  /** @domName ClientRectList.length */
  final int length;

  /** @domName ClientRectList.item */
  ClientRect item(int index);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName Clipboard
interface Clipboard {

  /** @domName Clipboard.dropEffect */
  String dropEffect;

  /** @domName Clipboard.effectAllowed */
  String effectAllowed;

  /** @domName Clipboard.files */
  final FileList files;

  /** @domName Clipboard.items */
  final DataTransferItemList items;

  /** @domName Clipboard.types */
  final List types;

  /** @domName Clipboard.clearData */
  void clearData([String type]);

  /** @domName Clipboard.getData */
  String getData(String type);

  /** @domName Clipboard.setData */
  bool setData(String type, String data);

  /** @domName Clipboard.setDragImage */
  void setDragImage(ImageElement image, int x, int y);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName CloseEvent
interface CloseEvent extends Event {

  /** @domName CloseEvent.code */
  final int code;

  /** @domName CloseEvent.reason */
  final String reason;

  /** @domName CloseEvent.wasClean */
  final bool wasClean;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName Comment
interface Comment extends CharacterData {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName CompositionEvent
interface CompositionEvent extends UIEvent {

  /** @domName CompositionEvent.data */
  final String data;

  /** @domName CompositionEvent.initCompositionEvent */
  void initCompositionEvent(String typeArg, bool canBubbleArg, bool cancelableArg, Window viewArg, String dataArg);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName Console
interface Console {

  /** @domName Console.memory */
  final MemoryInfo memory;

  /** @domName Console.profiles */
  final List<ScriptProfile> profiles;

  /** @domName Console.assertCondition */
  void assertCondition(bool condition, Object arg);

  /** @domName Console.count */
  void count();

  /** @domName Console.debug */
  void debug(Object arg);

  /** @domName Console.dir */
  void dir();

  /** @domName Console.dirxml */
  void dirxml();

  /** @domName Console.error */
  void error(Object arg);

  /** @domName Console.group */
  void group(Object arg);

  /** @domName Console.groupCollapsed */
  void groupCollapsed(Object arg);

  /** @domName Console.groupEnd */
  void groupEnd();

  /** @domName Console.info */
  void info(Object arg);

  /** @domName Console.log */
  void log(Object arg);

  /** @domName Console.markTimeline */
  void markTimeline();

  /** @domName Console.profile */
  void profile(String title);

  /** @domName Console.profileEnd */
  void profileEnd(String title);

  /** @domName Console.time */
  void time(String title);

  /** @domName Console.timeEnd */
  void timeEnd(String title, Object arg);

  /** @domName Console.timeStamp */
  void timeStamp(Object arg);

  /** @domName Console.trace */
  void trace(Object arg);

  /** @domName Console.warn */
  void warn(Object arg);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLContentElement
interface ContentElement extends Element {

  /** @domName HTMLContentElement.select */
  String select;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName ConvolverNode
interface ConvolverNode extends AudioNode {

  /** @domName ConvolverNode.buffer */
  AudioBuffer buffer;

  /** @domName ConvolverNode.normalize */
  bool normalize;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName Coordinates
interface Coordinates {

  /** @domName Coordinates.accuracy */
  final num accuracy;

  /** @domName Coordinates.altitude */
  final num altitude;

  /** @domName Coordinates.altitudeAccuracy */
  final num altitudeAccuracy;

  /** @domName Coordinates.heading */
  final num heading;

  /** @domName Coordinates.latitude */
  final num latitude;

  /** @domName Coordinates.longitude */
  final num longitude;

  /** @domName Coordinates.speed */
  final num speed;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName Counter
interface Counter {

  /** @domName Counter.identifier */
  final String identifier;

  /** @domName Counter.listStyle */
  final String listStyle;

  /** @domName Counter.separator */
  final String separator;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName Crypto
interface Crypto {

  /** @domName Crypto.getRandomValues */
  void getRandomValues(ArrayBufferView array);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName CustomEvent
interface CustomEvent extends Event {

  /** @domName CustomEvent.detail */
  final Object detail;

  /** @domName CustomEvent.initCustomEvent */
  void initCustomEvent(String typeArg, bool canBubbleArg, bool cancelableArg, Object detailArg);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLDListElement
interface DListElement extends Element {

  /** @domName HTMLDListElement.compact */
  bool compact;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName DOMApplicationCache
interface DOMApplicationCache extends EventTarget {

  /**
   * @domName EventTarget.addEventListener, EventTarget.removeEventListener, EventTarget.dispatchEvent
   */
  DOMApplicationCacheEvents get on();

  static final int CHECKING = 2;

  static final int DOWNLOADING = 3;

  static final int IDLE = 1;

  static final int OBSOLETE = 5;

  static final int UNCACHED = 0;

  static final int UPDATEREADY = 4;

  /** @domName DOMApplicationCache.status */
  final int status;

  /** @domName DOMApplicationCache.abort */
  void abort();

  /** @domName DOMApplicationCache.addEventListener */
  void $dom_addEventListener(String type, EventListener listener, [bool useCapture]);

  /** @domName DOMApplicationCache.dispatchEvent */
  bool $dom_dispatchEvent(Event evt);

  /** @domName DOMApplicationCache.removeEventListener */
  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture]);

  /** @domName DOMApplicationCache.swapCache */
  void swapCache();

  /** @domName DOMApplicationCache.update */
  void update();
}

interface DOMApplicationCacheEvents extends Events {

  EventListenerList get cached();

  EventListenerList get checking();

  EventListenerList get downloading();

  EventListenerList get error();

  EventListenerList get noUpdate();

  EventListenerList get obsolete();

  EventListenerList get progress();

  EventListenerList get updateReady();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName DOMException
interface DOMException {

  static final int ABORT_ERR = 20;

  static final int DATA_CLONE_ERR = 25;

  static final int DOMSTRING_SIZE_ERR = 2;

  static final int HIERARCHY_REQUEST_ERR = 3;

  static final int INDEX_SIZE_ERR = 1;

  static final int INUSE_ATTRIBUTE_ERR = 10;

  static final int INVALID_ACCESS_ERR = 15;

  static final int INVALID_CHARACTER_ERR = 5;

  static final int INVALID_MODIFICATION_ERR = 13;

  static final int INVALID_NODE_TYPE_ERR = 24;

  static final int INVALID_STATE_ERR = 11;

  static final int NAMESPACE_ERR = 14;

  static final int NETWORK_ERR = 19;

  static final int NOT_FOUND_ERR = 8;

  static final int NOT_SUPPORTED_ERR = 9;

  static final int NO_DATA_ALLOWED_ERR = 6;

  static final int NO_MODIFICATION_ALLOWED_ERR = 7;

  static final int QUOTA_EXCEEDED_ERR = 22;

  static final int SECURITY_ERR = 18;

  static final int SYNTAX_ERR = 12;

  static final int TIMEOUT_ERR = 23;

  static final int TYPE_MISMATCH_ERR = 17;

  static final int URL_MISMATCH_ERR = 21;

  static final int VALIDATION_ERR = 16;

  static final int WRONG_DOCUMENT_ERR = 4;

  /** @domName DOMException.code */
  final int code;

  /** @domName DOMException.message */
  final String message;

  /** @domName DOMException.name */
  final String name;

  /** @domName DOMException.toString */
  String toString();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName DOMFileSystem
interface DOMFileSystem {

  /** @domName DOMFileSystem.name */
  final String name;

  /** @domName DOMFileSystem.root */
  final DirectoryEntry root;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName DOMFileSystemSync
interface DOMFileSystemSync {

  /** @domName DOMFileSystemSync.name */
  final String name;

  /** @domName DOMFileSystemSync.root */
  final DirectoryEntrySync root;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName DOMFormData
interface DOMFormData {

  /** @domName DOMFormData.append */
  void append(String name, String value, String filename);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName DOMImplementation
interface DOMImplementation {

  /** @domName DOMImplementation.createCSSStyleSheet */
  CSSStyleSheet createCSSStyleSheet(String title, String media);

  /** @domName DOMImplementation.createDocument */
  Document createDocument(String namespaceURI, String qualifiedName, DocumentType doctype);

  /** @domName DOMImplementation.createDocumentType */
  DocumentType createDocumentType(String qualifiedName, String publicId, String systemId);

  /** @domName DOMImplementation.createHTMLDocument */
  Document createHTMLDocument(String title);

  /** @domName DOMImplementation.hasFeature */
  bool hasFeature(String feature, String version);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName DOMMimeType
interface DOMMimeType {

  /** @domName DOMMimeType.description */
  final String description;

  /** @domName DOMMimeType.enabledPlugin */
  final DOMPlugin enabledPlugin;

  /** @domName DOMMimeType.suffixes */
  final String suffixes;

  /** @domName DOMMimeType.type */
  final String type;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName DOMMimeTypeArray
interface DOMMimeTypeArray {

  /** @domName DOMMimeTypeArray.length */
  final int length;

  /** @domName DOMMimeTypeArray.item */
  DOMMimeType item(int index);

  /** @domName DOMMimeTypeArray.namedItem */
  DOMMimeType namedItem(String name);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName DOMParser
interface DOMParser default _DOMParserFactoryProvider {

  DOMParser();

  /** @domName DOMParser.parseFromString */
  Document parseFromString(String str, String contentType);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName DOMPlugin
interface DOMPlugin {

  /** @domName DOMPlugin.description */
  final String description;

  /** @domName DOMPlugin.filename */
  final String filename;

  /** @domName DOMPlugin.length */
  final int length;

  /** @domName DOMPlugin.name */
  final String name;

  /** @domName DOMPlugin.item */
  DOMMimeType item(int index);

  /** @domName DOMPlugin.namedItem */
  DOMMimeType namedItem(String name);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName DOMPluginArray
interface DOMPluginArray {

  /** @domName DOMPluginArray.length */
  final int length;

  /** @domName DOMPluginArray.item */
  DOMPlugin item(int index);

  /** @domName DOMPluginArray.namedItem */
  DOMPlugin namedItem(String name);

  /** @domName DOMPluginArray.refresh */
  void refresh(bool reload);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName DOMSelection
interface DOMSelection {

  /** @domName DOMSelection.anchorNode */
  final Node anchorNode;

  /** @domName DOMSelection.anchorOffset */
  final int anchorOffset;

  /** @domName DOMSelection.baseNode */
  final Node baseNode;

  /** @domName DOMSelection.baseOffset */
  final int baseOffset;

  /** @domName DOMSelection.extentNode */
  final Node extentNode;

  /** @domName DOMSelection.extentOffset */
  final int extentOffset;

  /** @domName DOMSelection.focusNode */
  final Node focusNode;

  /** @domName DOMSelection.focusOffset */
  final int focusOffset;

  /** @domName DOMSelection.isCollapsed */
  final bool isCollapsed;

  /** @domName DOMSelection.rangeCount */
  final int rangeCount;

  /** @domName DOMSelection.type */
  final String type;

  /** @domName DOMSelection.addRange */
  void addRange(Range range);

  /** @domName DOMSelection.collapse */
  void collapse(Node node, int index);

  /** @domName DOMSelection.collapseToEnd */
  void collapseToEnd();

  /** @domName DOMSelection.collapseToStart */
  void collapseToStart();

  /** @domName DOMSelection.containsNode */
  bool containsNode(Node node, bool allowPartial);

  /** @domName DOMSelection.deleteFromDocument */
  void deleteFromDocument();

  /** @domName DOMSelection.empty */
  void empty();

  /** @domName DOMSelection.extend */
  void extend(Node node, int offset);

  /** @domName DOMSelection.getRangeAt */
  Range getRangeAt(int index);

  /** @domName DOMSelection.modify */
  void modify(String alter, String direction, String granularity);

  /** @domName DOMSelection.removeAllRanges */
  void removeAllRanges();

  /** @domName DOMSelection.selectAllChildren */
  void selectAllChildren(Node node);

  /** @domName DOMSelection.setBaseAndExtent */
  void setBaseAndExtent(Node baseNode, int baseOffset, Node extentNode, int extentOffset);

  /** @domName DOMSelection.setPosition */
  void setPosition(Node node, int offset);

  /** @domName DOMSelection.toString */
  String toString();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName DOMSettableTokenList
interface DOMSettableTokenList extends DOMTokenList {

  /** @domName DOMSettableTokenList.value */
  String value;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName DOMStringList
interface DOMStringList extends List<String> {

  /** @domName DOMStringList.length */
  final int length;

  /** @domName DOMStringList.contains */
  bool contains(String string);

  /** @domName DOMStringList.item */
  String item(int index);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName DOMTokenList
interface DOMTokenList {

  /** @domName DOMTokenList.length */
  final int length;

  /** @domName DOMTokenList.add */
  void add(String token);

  /** @domName DOMTokenList.contains */
  bool contains(String token);

  /** @domName DOMTokenList.item */
  String item(int index);

  /** @domName DOMTokenList.remove */
  void remove(String token);

  /** @domName DOMTokenList.toString */
  String toString();

  /** @domName DOMTokenList.toggle */
  bool toggle(String token);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName DOMURL
interface DOMURL default _DOMURLFactoryProvider {

  DOMURL();

  /** @domName DOMURL.createObjectURL */
  String createObjectURL(blob_OR_stream);

  /** @domName DOMURL.revokeObjectURL */
  void revokeObjectURL(String url);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName DataTransferItem
interface DataTransferItem {

  /** @domName DataTransferItem.kind */
  final String kind;

  /** @domName DataTransferItem.type */
  final String type;

  /** @domName DataTransferItem.getAsFile */
  Blob getAsFile();

  /** @domName DataTransferItem.getAsString */
  void getAsString([StringCallback callback]);

  /** @domName DataTransferItem.webkitGetAsEntry */
  void webkitGetAsEntry([EntryCallback callback]);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName DataTransferItemList
interface DataTransferItemList {

  /** @domName DataTransferItemList.length */
  final int length;

  /** @domName DataTransferItemList.add */
  void add(data_OR_file, [String type]);

  /** @domName DataTransferItemList.clear */
  void clear();

  /** @domName DataTransferItemList.item */
  DataTransferItem item(int index);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName DataView
interface DataView extends ArrayBufferView {

  /** @domName DataView.getFloat32 */
  num getFloat32(int byteOffset, [bool littleEndian]);

  /** @domName DataView.getFloat64 */
  num getFloat64(int byteOffset, [bool littleEndian]);

  /** @domName DataView.getInt16 */
  int getInt16(int byteOffset, [bool littleEndian]);

  /** @domName DataView.getInt32 */
  int getInt32(int byteOffset, [bool littleEndian]);

  /** @domName DataView.getInt8 */
  Object getInt8();

  /** @domName DataView.getUint16 */
  int getUint16(int byteOffset, [bool littleEndian]);

  /** @domName DataView.getUint32 */
  int getUint32(int byteOffset, [bool littleEndian]);

  /** @domName DataView.getUint8 */
  Object getUint8();

  /** @domName DataView.setFloat32 */
  void setFloat32(int byteOffset, num value, [bool littleEndian]);

  /** @domName DataView.setFloat64 */
  void setFloat64(int byteOffset, num value, [bool littleEndian]);

  /** @domName DataView.setInt16 */
  void setInt16(int byteOffset, int value, [bool littleEndian]);

  /** @domName DataView.setInt32 */
  void setInt32(int byteOffset, int value, [bool littleEndian]);

  /** @domName DataView.setInt8 */
  void setInt8();

  /** @domName DataView.setUint16 */
  void setUint16(int byteOffset, int value, [bool littleEndian]);

  /** @domName DataView.setUint32 */
  void setUint32(int byteOffset, int value, [bool littleEndian]);

  /** @domName DataView.setUint8 */
  void setUint8();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName Database
interface Database {

  /** @domName Database.version */
  final String version;

  /** @domName Database.changeVersion */
  void changeVersion(String oldVersion, String newVersion, [SQLTransactionCallback callback, SQLTransactionErrorCallback errorCallback, VoidCallback successCallback]);

  /** @domName Database.readTransaction */
  void readTransaction(SQLTransactionCallback callback, [SQLTransactionErrorCallback errorCallback, VoidCallback successCallback]);

  /** @domName Database.transaction */
  void transaction(SQLTransactionCallback callback, [SQLTransactionErrorCallback errorCallback, VoidCallback successCallback]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool DatabaseCallback(database);
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName DatabaseSync
interface DatabaseSync {

  /** @domName DatabaseSync.lastErrorMessage */
  final String lastErrorMessage;

  /** @domName DatabaseSync.version */
  final String version;

  /** @domName DatabaseSync.changeVersion */
  void changeVersion(String oldVersion, String newVersion, [SQLTransactionSyncCallback callback]);

  /** @domName DatabaseSync.readTransaction */
  void readTransaction(SQLTransactionSyncCallback callback);

  /** @domName DatabaseSync.transaction */
  void transaction(SQLTransactionSyncCallback callback);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName DedicatedWorkerContext
interface DedicatedWorkerContext extends WorkerContext {

  /**
   * @domName EventTarget.addEventListener, EventTarget.removeEventListener, EventTarget.dispatchEvent
   */
  DedicatedWorkerContextEvents get on();

  /** @domName DedicatedWorkerContext.postMessage */
  void postMessage(Object message, [List messagePorts]);

  /** @domName DedicatedWorkerContext.webkitPostMessage */
  void webkitPostMessage(Object message, [List transferList]);
}

interface DedicatedWorkerContextEvents extends WorkerContextEvents {

  EventListenerList get message();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName DelayNode
interface DelayNode extends AudioNode {

  /** @domName DelayNode.delayTime */
  final AudioParam delayTime;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName DeprecatedPeerConnection
interface DeprecatedPeerConnection extends EventTarget default _DeprecatedPeerConnectionFactoryProvider {

  DeprecatedPeerConnection(String serverConfiguration, SignalingCallback signalingCallback);

  /**
   * @domName EventTarget.addEventListener, EventTarget.removeEventListener, EventTarget.dispatchEvent
   */
  DeprecatedPeerConnectionEvents get on();

  static final int ACTIVE = 2;

  static final int CLOSED = 3;

  static final int NEGOTIATING = 1;

  static final int NEW = 0;

  /** @domName DeprecatedPeerConnection.localStreams */
  final MediaStreamList localStreams;

  /** @domName DeprecatedPeerConnection.readyState */
  final int readyState;

  /** @domName DeprecatedPeerConnection.remoteStreams */
  final MediaStreamList remoteStreams;

  /** @domName DeprecatedPeerConnection.addEventListener */
  void $dom_addEventListener(String type, EventListener listener, [bool useCapture]);

  /** @domName DeprecatedPeerConnection.addStream */
  void addStream(MediaStream stream);

  /** @domName DeprecatedPeerConnection.close */
  void close();

  /** @domName DeprecatedPeerConnection.dispatchEvent */
  bool $dom_dispatchEvent(Event event);

  /** @domName DeprecatedPeerConnection.processSignalingMessage */
  void processSignalingMessage(String message);

  /** @domName DeprecatedPeerConnection.removeEventListener */
  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture]);

  /** @domName DeprecatedPeerConnection.removeStream */
  void removeStream(MediaStream stream);

  /** @domName DeprecatedPeerConnection.send */
  void send(String text);
}

interface DeprecatedPeerConnectionEvents extends Events {

  EventListenerList get addStream();

  EventListenerList get connecting();

  EventListenerList get message();

  EventListenerList get open();

  EventListenerList get removeStream();

  EventListenerList get stateChange();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLDetailsElement
interface DetailsElement extends Element {

  /** @domName HTMLDetailsElement.open */
  bool open;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName DeviceMotionEvent
interface DeviceMotionEvent extends Event {

  /** @domName DeviceMotionEvent.interval */
  final num interval;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName DeviceOrientationEvent
interface DeviceOrientationEvent extends Event {

  /** @domName DeviceOrientationEvent.absolute */
  final bool absolute;

  /** @domName DeviceOrientationEvent.alpha */
  final num alpha;

  /** @domName DeviceOrientationEvent.beta */
  final num beta;

  /** @domName DeviceOrientationEvent.gamma */
  final num gamma;

  /** @domName DeviceOrientationEvent.initDeviceOrientationEvent */
  void initDeviceOrientationEvent(String type, bool bubbles, bool cancelable, num alpha, num beta, num gamma, bool absolute);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLDirectoryElement
interface DirectoryElement extends Element {

  /** @domName HTMLDirectoryElement.compact */
  bool compact;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName DirectoryEntry
interface DirectoryEntry extends Entry {

  /** @domName DirectoryEntry.createReader */
  DirectoryReader createReader();

  /** @domName DirectoryEntry.getDirectory */
  void getDirectory(String path, [Object flags, EntryCallback successCallback, ErrorCallback errorCallback]);

  /** @domName DirectoryEntry.getFile */
  void getFile(String path, [Object flags, EntryCallback successCallback, ErrorCallback errorCallback]);

  /** @domName DirectoryEntry.removeRecursively */
  void removeRecursively(VoidCallback successCallback, [ErrorCallback errorCallback]);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName DirectoryEntrySync
interface DirectoryEntrySync extends EntrySync {

  /** @domName DirectoryEntrySync.createReader */
  DirectoryReaderSync createReader();

  /** @domName DirectoryEntrySync.getDirectory */
  DirectoryEntrySync getDirectory(String path, Object flags);

  /** @domName DirectoryEntrySync.getFile */
  FileEntrySync getFile(String path, Object flags);

  /** @domName DirectoryEntrySync.removeRecursively */
  void removeRecursively();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName DirectoryReader
interface DirectoryReader {

  /** @domName DirectoryReader.readEntries */
  void readEntries(EntriesCallback successCallback, [ErrorCallback errorCallback]);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName DirectoryReaderSync
interface DirectoryReaderSync {

  /** @domName DirectoryReaderSync.readEntries */
  EntryArraySync readEntries();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLDivElement
interface DivElement extends Element {

  /** @domName HTMLDivElement.align */
  String align;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// @domName Document
interface Document extends HtmlElement {


  /**
   * @domName EventTarget.addEventListener, EventTarget.removeEventListener, EventTarget.dispatchEvent
   */
  DocumentEvents get on();

  /** @domName HTMLDocument.activeElement */
  final Element activeElement;

  /** @domName Document.body */
  Element body;

  /** @domName Document.charset */
  String charset;

  /** @domName Document.cookie */
  String cookie;

  /** @domName Document.defaultView */
  final Window window;

  /** @domName Document.documentElement */
  final Element documentElement;

  /** @domName Document.domain */
  final String domain;

  /** @domName Document.head */
  final HeadElement head;

  /** @domName Document.lastModified */
  final String lastModified;

  /** @domName Document.preferredStylesheetSet */
  final String preferredStylesheetSet;

  /** @domName Document.readyState */
  final String readyState;

  /** @domName Document.referrer */
  final String referrer;

  /** @domName Document.selectedStylesheetSet */
  String selectedStylesheetSet;

  /** @domName Document.styleSheets */
  final StyleSheetList styleSheets;

  /** @domName Document.title */
  String title;

  /** @domName Document.webkitCurrentFullScreenElement */
  final Element webkitCurrentFullScreenElement;

  /** @domName Document.webkitFullScreenKeyboardInputAllowed */
  final bool webkitFullScreenKeyboardInputAllowed;

  /** @domName Document.webkitFullscreenElement */
  final Element webkitFullscreenElement;

  /** @domName Document.webkitFullscreenEnabled */
  final bool webkitFullscreenEnabled;

  /** @domName Document.webkitHidden */
  final bool webkitHidden;

  /** @domName Document.webkitIsFullScreen */
  final bool webkitIsFullScreen;

  /** @domName Document.webkitVisibilityState */
  final String webkitVisibilityState;

  /** @domName Document.caretRangeFromPoint */
  Range caretRangeFromPoint(int x, int y);

  /** @domName Document.createCDATASection */
  CDATASection createCDATASection(String data);

  /** @domName Document.createDocumentFragment */
  DocumentFragment createDocumentFragment();

  /** @domName Document.createElement */
  Element $dom_createElement(String tagName);

  /** @domName Document.createElementNS */
  Element $dom_createElementNS(String namespaceURI, String qualifiedName);

  /** @domName Document.createEvent */
  Event $dom_createEvent(String eventType);

  /** @domName Document.createRange */
  Range createRange();

  /** @domName Document.createTextNode */
  Text $dom_createTextNode(String data);

  /** @domName Document.createTouch */
  Touch createTouch(Window window, EventTarget target, int identifier, int pageX, int pageY, int screenX, int screenY, int webkitRadiusX, int webkitRadiusY, num webkitRotationAngle, num webkitForce);

  /** @domName Document.createTouchList */
  TouchList $dom_createTouchList();

  /** @domName Document.elementFromPoint */
  Element elementFromPoint(int x, int y);

  /** @domName Document.execCommand */
  bool execCommand(String command, bool userInterface, String value);

  /** @domName Document.getCSSCanvasContext */
  CanvasRenderingContext getCSSCanvasContext(String contextId, String name, int width, int height);

  /** @domName Document.getElementById */
  Element $dom_getElementById(String elementId);

  /** @domName Document.getElementsByClassName */
  NodeList $dom_getElementsByClassName(String tagname);

  /** @domName Document.getElementsByName */
  NodeList $dom_getElementsByName(String elementName);

  /** @domName Document.getElementsByTagName */
  NodeList $dom_getElementsByTagName(String tagname);

  /** @domName Document.queryCommandEnabled */
  bool queryCommandEnabled(String command);

  /** @domName Document.queryCommandIndeterm */
  bool queryCommandIndeterm(String command);

  /** @domName Document.queryCommandState */
  bool queryCommandState(String command);

  /** @domName Document.queryCommandSupported */
  bool queryCommandSupported(String command);

  /** @domName Document.queryCommandValue */
  String queryCommandValue(String command);

  /** @domName Document.querySelector */
  Element query(String selectors);

  /** @domName Document.querySelectorAll */
  NodeList $dom_querySelectorAll(String selectors);

  /** @domName Document.webkitCancelFullScreen */
  void webkitCancelFullScreen();

  /** @domName Document.webkitExitFullscreen */
  void webkitExitFullscreen();

  /** @domName Document.webkitGetFlowByName */
  WebKitNamedFlow webkitGetFlowByName(String name);

}

interface DocumentEvents extends ElementEvents {

  EventListenerList get abort();

  EventListenerList get beforeCopy();

  EventListenerList get beforeCut();

  EventListenerList get beforePaste();

  EventListenerList get blur();

  EventListenerList get change();

  EventListenerList get click();

  EventListenerList get contextMenu();

  EventListenerList get copy();

  EventListenerList get cut();

  EventListenerList get doubleClick();

  EventListenerList get drag();

  EventListenerList get dragEnd();

  EventListenerList get dragEnter();

  EventListenerList get dragLeave();

  EventListenerList get dragOver();

  EventListenerList get dragStart();

  EventListenerList get drop();

  EventListenerList get error();

  EventListenerList get focus();

  EventListenerList get fullscreenChange();

  EventListenerList get fullscreenError();

  EventListenerList get input();

  EventListenerList get invalid();

  EventListenerList get keyDown();

  EventListenerList get keyPress();

  EventListenerList get keyUp();

  EventListenerList get load();

  EventListenerList get mouseDown();

  EventListenerList get mouseMove();

  EventListenerList get mouseOut();

  EventListenerList get mouseOver();

  EventListenerList get mouseUp();

  EventListenerList get mouseWheel();

  EventListenerList get paste();

  EventListenerList get readyStateChange();

  EventListenerList get reset();

  EventListenerList get scroll();

  EventListenerList get search();

  EventListenerList get select();

  EventListenerList get selectStart();

  EventListenerList get selectionChange();

  EventListenerList get submit();

  EventListenerList get touchCancel();

  EventListenerList get touchEnd();

  EventListenerList get touchMove();

  EventListenerList get touchStart();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// @domName DocumentFragment
interface DocumentFragment extends Element default _DocumentFragmentFactoryProvider {

  DocumentFragment();

  DocumentFragment.html(String html);

  // TODO(nweiz): enable this when XML is ported
  // /** WARNING: Currently this doesn't work on Dartium (issue 649). */
  // DocumentFragment.xml(String xml);

  DocumentFragment.svg(String svg);

  DocumentFragment clone(bool deep);


  /**
   * @domName EventTarget.addEventListener, EventTarget.removeEventListener, EventTarget.dispatchEvent
   */
  ElementEvents get on();

  /** @domName DocumentFragment.querySelector */
  Element query(String selectors);

  /** @domName DocumentFragment.querySelectorAll */
  NodeList $dom_querySelectorAll(String selectors);

}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName DocumentType
interface DocumentType extends Node {

  /** @domName DocumentType.entities */
  final NamedNodeMap entities;

  /** @domName DocumentType.internalSubset */
  final String internalSubset;

  /** @domName DocumentType.name */
  final String name;

  /** @domName DocumentType.notations */
  final NamedNodeMap notations;

  /** @domName DocumentType.publicId */
  final String publicId;

  /** @domName DocumentType.systemId */
  final String systemId;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName DynamicsCompressorNode
interface DynamicsCompressorNode extends AudioNode {

  /** @domName DynamicsCompressorNode.attack */
  final AudioParam attack;

  /** @domName DynamicsCompressorNode.knee */
  final AudioParam knee;

  /** @domName DynamicsCompressorNode.ratio */
  final AudioParam ratio;

  /** @domName DynamicsCompressorNode.reduction */
  final AudioParam reduction;

  /** @domName DynamicsCompressorNode.release */
  final AudioParam release;

  /** @domName DynamicsCompressorNode.threshold */
  final AudioParam threshold;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName EXTTextureFilterAnisotropic
interface EXTTextureFilterAnisotropic {

  static final int MAX_TEXTURE_MAX_ANISOTROPY_EXT = 0x84FF;

  static final int TEXTURE_MAX_ANISOTROPY_EXT = 0x84FE;
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface ElementList extends List<Element> {
  // TODO(jacobr): add element batch manipulation methods.
  ElementList filter(bool f(Element element));

  ElementList getRange(int start, int length);

  Element get first();
  // TODO(jacobr): add insertAt
}

/**
 * All your attribute manipulation needs in one place.
 * Extends the regular Map interface by automatically coercing non-string
 * values to strings.
 */
interface AttributeMap extends Map<String, String> {
  void operator []=(String key, value);
}

/**
 * All your element measurement needs in one place
 */
interface ElementRect {
  // Relative to offsetParent
  ClientRect get client();
  ClientRect get offset();
  ClientRect get scroll();
  // In global coords
  ClientRect get bounding();
  // In global coords
  List<ClientRect> get clientRects();
}

/// @domName Element
interface Element extends Node, NodeSelector default _ElementFactoryProvider {
// TODO(jacobr): switch back to:
// interface Element extends Node, NodeSelector, ElementTraversal default _ElementImpl {
  Element.html(String html);
  Element.tag(String tag);

  AttributeMap get attributes();
  void set attributes(Map<String, String> value);

  /**
   * @domName querySelectorAll, getElementsByClassName, getElementsByTagName,
   *   getElementsByTagNameNS
   */
  ElementList queryAll(String selectors);

  /**
   * @domName childElementCount, firstElementChild, lastElementChild,
   *   children, Node.nodes.add
   */
  ElementList get elements();

  void set elements(Collection<Element> value);

  /** @domName className, classList */
  Set<String> get classes();

  void set classes(Collection<String> value);

  AttributeMap get dataAttributes();
  void set dataAttributes(Map<String, String> value);

  /**
   * @domName getClientRects, getBoundingClientRect, clientHeight, clientWidth,
   * clientTop, clientLeft, offsetHeight, offsetWidth, offsetTop, offsetLeft,
   * scrollHeight, scrollWidth, scrollTop, scrollLeft
   */
  Future<ElementRect> get rect();

  /** @domName Window.getComputedStyle */
  Future<CSSStyleDeclaration> get computedStyle();

  /** @domName Window.getComputedStyle */
  Future<CSSStyleDeclaration> getComputedStyle(String pseudoElement);

  Element clone(bool deep);

  Element get parent();


  /**
   * @domName EventTarget.addEventListener, EventTarget.removeEventListener, EventTarget.dispatchEvent
   */
  ElementEvents get on();

  static final int ALLOW_KEYBOARD_INPUT = 1;

  /** @domName Element.childElementCount */
  final int $dom_childElementCount;

  /** @domName HTMLElement.children */
  final HTMLCollection $dom_children;

  /** @domName HTMLElement.className */
  String $dom_className;

  /** @domName Element.clientHeight */
  final int $dom_clientHeight;

  /** @domName Element.clientLeft */
  final int $dom_clientLeft;

  /** @domName Element.clientTop */
  final int $dom_clientTop;

  /** @domName Element.clientWidth */
  final int $dom_clientWidth;

  /** @domName HTMLElement.contentEditable */
  String contentEditable;

  /** @domName Element.dataset */
  final Map<String, String> dataset;

  /** @domName HTMLElement.dir */
  String dir;

  /** @domName HTMLElement.draggable */
  bool draggable;

  /** @domName Element.firstElementChild */
  final Element $dom_firstElementChild;

  /** @domName HTMLElement.hidden */
  bool hidden;

  /** @domName HTMLElement.id */
  String id;

  /** @domName HTMLElement.innerHTML */
  String innerHTML;

  /** @domName HTMLElement.isContentEditable */
  final bool isContentEditable;

  /** @domName HTMLElement.lang */
  String lang;

  /** @domName Element.lastElementChild */
  final Element $dom_lastElementChild;

  /** @domName Element.nextElementSibling */
  final Element nextElementSibling;

  /** @domName Element.offsetHeight */
  final int $dom_offsetHeight;

  /** @domName Element.offsetLeft */
  final int $dom_offsetLeft;

  /** @domName Element.offsetParent */
  final Element offsetParent;

  /** @domName Element.offsetTop */
  final int $dom_offsetTop;

  /** @domName Element.offsetWidth */
  final int $dom_offsetWidth;

  /** @domName HTMLElement.outerHTML */
  final String outerHTML;

  /** @domName Element.previousElementSibling */
  final Element previousElementSibling;

  /** @domName Element.scrollHeight */
  final int $dom_scrollHeight;

  /** @domName Element.scrollLeft */
  int $dom_scrollLeft;

  /** @domName Element.scrollTop */
  int $dom_scrollTop;

  /** @domName Element.scrollWidth */
  final int $dom_scrollWidth;

  /** @domName HTMLElement.spellcheck */
  bool spellcheck;

  /** @domName Element.style */
  final CSSStyleDeclaration style;

  /** @domName HTMLElement.tabIndex */
  int tabIndex;

  /** @domName Element.tagName */
  final String tagName;

  /** @domName HTMLElement.title */
  String title;

  /** @domName HTMLElement.translate */
  bool translate;

  /** @domName Element.webkitRegionOverflow */
  final String webkitRegionOverflow;

  /** @domName HTMLElement.webkitdropzone */
  String webkitdropzone;

  /** @domName Element.blur */
  void blur();

  /** @domName HTMLElement.click */
  void click();

  /** @domName Element.focus */
  void focus();

  /** @domName Element.getAttribute */
  String $dom_getAttribute(String name);

  /** @domName Element.getBoundingClientRect */
  ClientRect $dom_getBoundingClientRect();

  /** @domName Element.getClientRects */
  ClientRectList $dom_getClientRects();

  /** @domName Element.getElementsByClassName */
  NodeList $dom_getElementsByClassName(String name);

  /** @domName Element.getElementsByTagName */
  NodeList $dom_getElementsByTagName(String name);

  /** @domName Element.hasAttribute */
  bool $dom_hasAttribute(String name);

  /** @domName HTMLElement.insertAdjacentElement */
  Element insertAdjacentElement(String where, Element element);

  /** @domName HTMLElement.insertAdjacentHTML */
  void insertAdjacentHTML(String where, String html);

  /** @domName HTMLElement.insertAdjacentText */
  void insertAdjacentText(String where, String text);

  /** @domName Element.querySelector */
  Element query(String selectors);

  /** @domName Element.querySelectorAll */
  NodeList $dom_querySelectorAll(String selectors);

  /** @domName Element.removeAttribute */
  void $dom_removeAttribute(String name);

  /** @domName Element.scrollByLines */
  void scrollByLines(int lines);

  /** @domName Element.scrollByPages */
  void scrollByPages(int pages);

  /** @domName Element.scrollIntoViewIfNeeded */
  void scrollIntoView([bool centerIfNeeded]);

  /** @domName Element.setAttribute */
  void $dom_setAttribute(String name, String value);

  /** @domName Element.webkitMatchesSelector */
  bool matchesSelector(String selectors);

  /** @domName Element.webkitRequestFullScreen */
  void webkitRequestFullScreen(int flags);

  /** @domName Element.webkitRequestFullscreen */
  void webkitRequestFullscreen();

}

interface ElementEvents extends Events {

  EventListenerList get abort();

  EventListenerList get beforeCopy();

  EventListenerList get beforeCut();

  EventListenerList get beforePaste();

  EventListenerList get blur();

  EventListenerList get change();

  EventListenerList get click();

  EventListenerList get contextMenu();

  EventListenerList get copy();

  EventListenerList get cut();

  EventListenerList get doubleClick();

  EventListenerList get drag();

  EventListenerList get dragEnd();

  EventListenerList get dragEnter();

  EventListenerList get dragLeave();

  EventListenerList get dragOver();

  EventListenerList get dragStart();

  EventListenerList get drop();

  EventListenerList get error();

  EventListenerList get focus();

  EventListenerList get fullscreenChange();

  EventListenerList get fullscreenError();

  EventListenerList get input();

  EventListenerList get invalid();

  EventListenerList get keyDown();

  EventListenerList get keyPress();

  EventListenerList get keyUp();

  EventListenerList get load();

  EventListenerList get mouseDown();

  EventListenerList get mouseMove();

  EventListenerList get mouseOut();

  EventListenerList get mouseOver();

  EventListenerList get mouseUp();

  EventListenerList get mouseWheel();

  EventListenerList get paste();

  EventListenerList get reset();

  EventListenerList get scroll();

  EventListenerList get search();

  EventListenerList get select();

  EventListenerList get selectStart();

  EventListenerList get submit();

  EventListenerList get touchCancel();

  EventListenerList get touchEnd();

  EventListenerList get touchEnter();

  EventListenerList get touchLeave();

  EventListenerList get touchMove();

  EventListenerList get touchStart();

  EventListenerList get transitionEnd();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName ElementTimeControl
interface ElementTimeControl {

  /** @domName ElementTimeControl.beginElement */
  void beginElement();

  /** @domName ElementTimeControl.beginElementAt */
  void beginElementAt(num offset);

  /** @domName ElementTimeControl.endElement */
  void endElement();

  /** @domName ElementTimeControl.endElementAt */
  void endElementAt(num offset);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName ElementTraversal
interface ElementTraversal {

  /** @domName ElementTraversal.childElementCount */
  final int childElementCount;

  /** @domName ElementTraversal.firstElementChild */
  final Element firstElementChild;

  /** @domName ElementTraversal.lastElementChild */
  final Element lastElementChild;

  /** @domName ElementTraversal.nextElementSibling */
  final Element nextElementSibling;

  /** @domName ElementTraversal.previousElementSibling */
  final Element previousElementSibling;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLEmbedElement
interface EmbedElement extends Element {

  /** @domName HTMLEmbedElement.align */
  String align;

  /** @domName HTMLEmbedElement.height */
  String height;

  /** @domName HTMLEmbedElement.name */
  String name;

  /** @domName HTMLEmbedElement.src */
  String src;

  /** @domName HTMLEmbedElement.type */
  String type;

  /** @domName HTMLEmbedElement.width */
  String width;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName Entity
interface Entity extends Node {

  /** @domName Entity.notationName */
  final String notationName;

  /** @domName Entity.publicId */
  final String publicId;

  /** @domName Entity.systemId */
  final String systemId;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName EntityReference
interface EntityReference extends Node {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool EntriesCallback(EntryArray entries);
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName Entry
interface Entry {

  /** @domName Entry.filesystem */
  final DOMFileSystem filesystem;

  /** @domName Entry.fullPath */
  final String fullPath;

  /** @domName Entry.isDirectory */
  final bool isDirectory;

  /** @domName Entry.isFile */
  final bool isFile;

  /** @domName Entry.name */
  final String name;

  /** @domName Entry.copyTo */
  void copyTo(DirectoryEntry parent, [String name, EntryCallback successCallback, ErrorCallback errorCallback]);

  /** @domName Entry.getMetadata */
  void getMetadata(MetadataCallback successCallback, [ErrorCallback errorCallback]);

  /** @domName Entry.getParent */
  void getParent([EntryCallback successCallback, ErrorCallback errorCallback]);

  /** @domName Entry.moveTo */
  void moveTo(DirectoryEntry parent, [String name, EntryCallback successCallback, ErrorCallback errorCallback]);

  /** @domName Entry.remove */
  void remove(VoidCallback successCallback, [ErrorCallback errorCallback]);

  /** @domName Entry.toURL */
  String toURL();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName EntryArray
interface EntryArray {

  /** @domName EntryArray.length */
  final int length;

  /** @domName EntryArray.item */
  Entry item(int index);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName EntryArraySync
interface EntryArraySync {

  /** @domName EntryArraySync.length */
  final int length;

  /** @domName EntryArraySync.item */
  EntrySync item(int index);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool EntryCallback(Entry entry);
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName EntrySync
interface EntrySync {

  /** @domName EntrySync.filesystem */
  final DOMFileSystemSync filesystem;

  /** @domName EntrySync.fullPath */
  final String fullPath;

  /** @domName EntrySync.isDirectory */
  final bool isDirectory;

  /** @domName EntrySync.isFile */
  final bool isFile;

  /** @domName EntrySync.name */
  final String name;

  /** @domName EntrySync.copyTo */
  EntrySync copyTo(DirectoryEntrySync parent, String name);

  /** @domName EntrySync.getMetadata */
  Metadata getMetadata();

  /** @domName EntrySync.getParent */
  EntrySync getParent();

  /** @domName EntrySync.moveTo */
  EntrySync moveTo(DirectoryEntrySync parent, String name);

  /** @domName EntrySync.remove */
  void remove();

  /** @domName EntrySync.toURL */
  String toURL();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool ErrorCallback(FileError error);
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName ErrorEvent
interface ErrorEvent extends Event {

  /** @domName ErrorEvent.filename */
  final String filename;

  /** @domName ErrorEvent.lineno */
  final int lineno;

  /** @domName ErrorEvent.message */
  final String message;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName Event
interface Event default _EventFactoryProvider {

  // In JS, canBubble and cancelable are technically required parameters to
  // init*Event. In practice, though, if they aren't provided they simply
  // default to false (since that's Boolean(undefined)).
  //
  // Contrary to JS, we default canBubble and cancelable to true, since that's
  // what people want most of the time anyway.
  Event(String type, [bool canBubble, bool cancelable]);

  static final int AT_TARGET = 2;

  static final int BLUR = 8192;

  static final int BUBBLING_PHASE = 3;

  static final int CAPTURING_PHASE = 1;

  static final int CHANGE = 32768;

  static final int CLICK = 64;

  static final int DBLCLICK = 128;

  static final int DRAGDROP = 2048;

  static final int FOCUS = 4096;

  static final int KEYDOWN = 256;

  static final int KEYPRESS = 1024;

  static final int KEYUP = 512;

  static final int MOUSEDOWN = 1;

  static final int MOUSEDRAG = 32;

  static final int MOUSEMOVE = 16;

  static final int MOUSEOUT = 8;

  static final int MOUSEOVER = 4;

  static final int MOUSEUP = 2;

  static final int SELECT = 16384;

  /** @domName Event.bubbles */
  final bool bubbles;

  /** @domName Event.cancelBubble */
  bool cancelBubble;

  /** @domName Event.cancelable */
  final bool cancelable;

  /** @domName Event.clipboardData */
  final Clipboard clipboardData;

  /** @domName Event.currentTarget */
  final EventTarget currentTarget;

  /** @domName Event.defaultPrevented */
  final bool defaultPrevented;

  /** @domName Event.eventPhase */
  final int eventPhase;

  /** @domName Event.returnValue */
  bool returnValue;

  /** @domName Event.srcElement */
  final EventTarget srcElement;

  /** @domName Event.target */
  final EventTarget target;

  /** @domName Event.timeStamp */
  final int timeStamp;

  /** @domName Event.type */
  final String type;

  /** @domName Event.initEvent */
  void $dom_initEvent(String eventTypeArg, bool canBubbleArg, bool cancelableArg);

  /** @domName Event.preventDefault */
  void preventDefault();

  /** @domName Event.stopImmediatePropagation */
  void stopImmediatePropagation();

  /** @domName Event.stopPropagation */
  void stopPropagation();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName EventException
interface EventException {

  static final int DISPATCH_REQUEST_ERR = 1;

  static final int UNSPECIFIED_EVENT_TYPE_ERR = 0;

  /** @domName EventException.code */
  final int code;

  /** @domName EventException.message */
  final String message;

  /** @domName EventException.name */
  final String name;

  /** @domName EventException.toString */
  String toString();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName EventSource
interface EventSource extends EventTarget default _EventSourceFactoryProvider {

  EventSource(String scriptUrl);

  /**
   * @domName EventTarget.addEventListener, EventTarget.removeEventListener, EventTarget.dispatchEvent
   */
  EventSourceEvents get on();

  static final int CLOSED = 2;

  static final int CONNECTING = 0;

  static final int OPEN = 1;

  /** @domName EventSource.URL */
  final String URL;

  /** @domName EventSource.readyState */
  final int readyState;

  /** @domName EventSource.url */
  final String url;

  /** @domName EventSource.addEventListener */
  void $dom_addEventListener(String type, EventListener listener, [bool useCapture]);

  /** @domName EventSource.close */
  void close();

  /** @domName EventSource.dispatchEvent */
  bool $dom_dispatchEvent(Event evt);

  /** @domName EventSource.removeEventListener */
  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture]);
}

interface EventSourceEvents extends Events {

  EventListenerList get error();

  EventListenerList get message();

  EventListenerList get open();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface EventListenerList {
  EventListenerList add(EventListener handler, [bool useCapture]);

  EventListenerList remove(EventListener handler, [bool useCapture]);

  bool dispatch(Event evt);
}

interface Events {
  EventListenerList operator [](String type);
}

/// @domName EventTarget
interface EventTarget {

  /** @domName EventTarget.addEventListener, EventTarget.removeEventListener, EventTarget.dispatchEvent */
  final Events on;

  /** @domName EventTarget.addEventListener */
  void $dom_addEventListener(String type, EventListener listener, [bool useCapture]);

  /** @domName EventTarget.dispatchEvent */
  bool $dom_dispatchEvent(Event event);

  /** @domName EventTarget.removeEventListener */
  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture]);

}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLFieldSetElement
interface FieldSetElement extends Element {

  /** @domName HTMLFieldSetElement.disabled */
  bool disabled;

  /** @domName HTMLFieldSetElement.form */
  final FormElement form;

  /** @domName HTMLFieldSetElement.name */
  String name;

  /** @domName HTMLFieldSetElement.type */
  final String type;

  /** @domName HTMLFieldSetElement.validationMessage */
  final String validationMessage;

  /** @domName HTMLFieldSetElement.validity */
  final ValidityState validity;

  /** @domName HTMLFieldSetElement.willValidate */
  final bool willValidate;

  /** @domName HTMLFieldSetElement.checkValidity */
  bool checkValidity();

  /** @domName HTMLFieldSetElement.setCustomValidity */
  void setCustomValidity(String error);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName File
interface File extends Blob {

  /** @domName File.lastModifiedDate */
  final Date lastModifiedDate;

  /** @domName File.name */
  final String name;

  /** @domName File.webkitRelativePath */
  final String webkitRelativePath;
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool FileCallback(File file);
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName FileEntry
interface FileEntry extends Entry {

  /** @domName FileEntry.createWriter */
  void createWriter(FileWriterCallback successCallback, [ErrorCallback errorCallback]);

  /** @domName FileEntry.file */
  void file(FileCallback successCallback, [ErrorCallback errorCallback]);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName FileEntrySync
interface FileEntrySync extends EntrySync {

  /** @domName FileEntrySync.createWriter */
  FileWriterSync createWriter();

  /** @domName FileEntrySync.file */
  File file();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName FileError
interface FileError {

  static final int ABORT_ERR = 3;

  static final int ENCODING_ERR = 5;

  static final int INVALID_MODIFICATION_ERR = 9;

  static final int INVALID_STATE_ERR = 7;

  static final int NOT_FOUND_ERR = 1;

  static final int NOT_READABLE_ERR = 4;

  static final int NO_MODIFICATION_ALLOWED_ERR = 6;

  static final int PATH_EXISTS_ERR = 12;

  static final int QUOTA_EXCEEDED_ERR = 10;

  static final int SECURITY_ERR = 2;

  static final int SYNTAX_ERR = 8;

  static final int TYPE_MISMATCH_ERR = 11;

  /** @domName FileError.code */
  final int code;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName FileException
interface FileException {

  static final int ABORT_ERR = 3;

  static final int ENCODING_ERR = 5;

  static final int INVALID_MODIFICATION_ERR = 9;

  static final int INVALID_STATE_ERR = 7;

  static final int NOT_FOUND_ERR = 1;

  static final int NOT_READABLE_ERR = 4;

  static final int NO_MODIFICATION_ALLOWED_ERR = 6;

  static final int PATH_EXISTS_ERR = 12;

  static final int QUOTA_EXCEEDED_ERR = 10;

  static final int SECURITY_ERR = 2;

  static final int SYNTAX_ERR = 8;

  static final int TYPE_MISMATCH_ERR = 11;

  /** @domName FileException.code */
  final int code;

  /** @domName FileException.message */
  final String message;

  /** @domName FileException.name */
  final String name;

  /** @domName FileException.toString */
  String toString();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName FileList
interface FileList {

  /** @domName FileList.length */
  final int length;

  /** @domName FileList.item */
  File item(int index);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName FileReader
interface FileReader extends EventTarget default _FileReaderFactoryProvider {

  FileReader();

  /**
   * @domName EventTarget.addEventListener, EventTarget.removeEventListener, EventTarget.dispatchEvent
   */
  FileReaderEvents get on();

  static final int DONE = 2;

  static final int EMPTY = 0;

  static final int LOADING = 1;

  /** @domName FileReader.error */
  final FileError error;

  /** @domName FileReader.readyState */
  final int readyState;

  /** @domName FileReader.result */
  final Object result;

  /** @domName FileReader.abort */
  void abort();

  /** @domName FileReader.addEventListener */
  void $dom_addEventListener(String type, EventListener listener, [bool useCapture]);

  /** @domName FileReader.dispatchEvent */
  bool $dom_dispatchEvent(Event evt);

  /** @domName FileReader.readAsArrayBuffer */
  void readAsArrayBuffer(Blob blob);

  /** @domName FileReader.readAsBinaryString */
  void readAsBinaryString(Blob blob);

  /** @domName FileReader.readAsDataURL */
  void readAsDataURL(Blob blob);

  /** @domName FileReader.readAsText */
  void readAsText(Blob blob, [String encoding]);

  /** @domName FileReader.removeEventListener */
  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture]);
}

interface FileReaderEvents extends Events {

  EventListenerList get abort();

  EventListenerList get error();

  EventListenerList get load();

  EventListenerList get loadEnd();

  EventListenerList get loadStart();

  EventListenerList get progress();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName FileReaderSync
interface FileReaderSync default _FileReaderSyncFactoryProvider {

  FileReaderSync();

  /** @domName FileReaderSync.readAsArrayBuffer */
  ArrayBuffer readAsArrayBuffer(Blob blob);

  /** @domName FileReaderSync.readAsBinaryString */
  String readAsBinaryString(Blob blob);

  /** @domName FileReaderSync.readAsDataURL */
  String readAsDataURL(Blob blob);

  /** @domName FileReaderSync.readAsText */
  String readAsText(Blob blob, [String encoding]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool FileSystemCallback(DOMFileSystem fileSystem);
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName FileWriter
interface FileWriter extends EventTarget {

  /**
   * @domName EventTarget.addEventListener, EventTarget.removeEventListener, EventTarget.dispatchEvent
   */
  FileWriterEvents get on();

  static final int DONE = 2;

  static final int INIT = 0;

  static final int WRITING = 1;

  /** @domName FileWriter.error */
  final FileError error;

  /** @domName FileWriter.length */
  final int length;

  /** @domName FileWriter.position */
  final int position;

  /** @domName FileWriter.readyState */
  final int readyState;

  /** @domName FileWriter.abort */
  void abort();

  /** @domName FileWriter.addEventListener */
  void $dom_addEventListener(String type, EventListener listener, [bool useCapture]);

  /** @domName FileWriter.dispatchEvent */
  bool $dom_dispatchEvent(Event evt);

  /** @domName FileWriter.removeEventListener */
  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture]);

  /** @domName FileWriter.seek */
  void seek(int position);

  /** @domName FileWriter.truncate */
  void truncate(int size);

  /** @domName FileWriter.write */
  void write(Blob data);
}

interface FileWriterEvents extends Events {

  EventListenerList get abort();

  EventListenerList get error();

  EventListenerList get progress();

  EventListenerList get write();

  EventListenerList get writeEnd();

  EventListenerList get writeStart();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool FileWriterCallback(FileWriter fileWriter);
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName FileWriterSync
interface FileWriterSync {

  /** @domName FileWriterSync.length */
  final int length;

  /** @domName FileWriterSync.position */
  final int position;

  /** @domName FileWriterSync.seek */
  void seek(int position);

  /** @domName FileWriterSync.truncate */
  void truncate(int size);

  /** @domName FileWriterSync.write */
  void write(Blob data);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName Float32Array
interface Float32Array extends ArrayBufferView, List<num> default _TypedArrayFactoryProvider {

  Float32Array(int length);

  Float32Array.fromList(List<num> list);

  Float32Array.fromBuffer(ArrayBuffer buffer, [int byteOffset, int length]);

  static final int BYTES_PER_ELEMENT = 4;

  /** @domName Float32Array.length */
  final int length;

  /** @domName Float32Array.setElements */
  void setElements(Object array, [int offset]);

  /** @domName Float32Array.subarray */
  Float32Array subarray(int start, [int end]);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName Float64Array
interface Float64Array extends ArrayBufferView, List<num> default _TypedArrayFactoryProvider {

  Float64Array(int length);

  Float64Array.fromList(List<num> list);

  Float64Array.fromBuffer(ArrayBuffer buffer, [int byteOffset, int length]);

  static final int BYTES_PER_ELEMENT = 8;

  /** @domName Float64Array.length */
  final int length;

  /** @domName Float64Array.setElements */
  void setElements(Object array, [int offset]);

  /** @domName Float64Array.subarray */
  Float64Array subarray(int start, [int end]);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLFontElement
interface FontElement extends Element {

  /** @domName HTMLFontElement.color */
  String color;

  /** @domName HTMLFontElement.face */
  String face;

  /** @domName HTMLFontElement.size */
  String size;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLFormElement
interface FormElement extends Element {

  /** @domName HTMLFormElement.acceptCharset */
  String acceptCharset;

  /** @domName HTMLFormElement.action */
  String action;

  /** @domName HTMLFormElement.autocomplete */
  String autocomplete;

  /** @domName HTMLFormElement.encoding */
  String encoding;

  /** @domName HTMLFormElement.enctype */
  String enctype;

  /** @domName HTMLFormElement.length */
  final int length;

  /** @domName HTMLFormElement.method */
  String method;

  /** @domName HTMLFormElement.name */
  String name;

  /** @domName HTMLFormElement.noValidate */
  bool noValidate;

  /** @domName HTMLFormElement.target */
  String target;

  /** @domName HTMLFormElement.checkValidity */
  bool checkValidity();

  /** @domName HTMLFormElement.reset */
  void reset();

  /** @domName HTMLFormElement.submit */
  void submit();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLFrameElement
interface FrameElement extends Element {

  /** @domName HTMLFrameElement.contentDocument */
  final Document contentDocument;

  /** @domName HTMLFrameElement.contentWindow */
  final Window contentWindow;

  /** @domName HTMLFrameElement.frameBorder */
  String frameBorder;

  /** @domName HTMLFrameElement.height */
  final int height;

  /** @domName HTMLFrameElement.location */
  String location;

  /** @domName HTMLFrameElement.longDesc */
  String longDesc;

  /** @domName HTMLFrameElement.marginHeight */
  String marginHeight;

  /** @domName HTMLFrameElement.marginWidth */
  String marginWidth;

  /** @domName HTMLFrameElement.name */
  String name;

  /** @domName HTMLFrameElement.noResize */
  bool noResize;

  /** @domName HTMLFrameElement.scrolling */
  String scrolling;

  /** @domName HTMLFrameElement.src */
  String src;

  /** @domName HTMLFrameElement.width */
  final int width;

  /** @domName HTMLFrameElement.getSVGDocument */
  SVGDocument getSVGDocument();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLFrameSetElement
interface FrameSetElement extends Element {

  /**
   * @domName EventTarget.addEventListener, EventTarget.removeEventListener, EventTarget.dispatchEvent
   */
  FrameSetElementEvents get on();

  /** @domName HTMLFrameSetElement.cols */
  String cols;

  /** @domName HTMLFrameSetElement.rows */
  String rows;
}

interface FrameSetElementEvents extends ElementEvents {

  EventListenerList get beforeUnload();

  EventListenerList get blur();

  EventListenerList get error();

  EventListenerList get focus();

  EventListenerList get hashChange();

  EventListenerList get load();

  EventListenerList get message();

  EventListenerList get offline();

  EventListenerList get online();

  EventListenerList get popState();

  EventListenerList get resize();

  EventListenerList get storage();

  EventListenerList get unload();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName Geolocation
interface Geolocation {

  /** @domName Geolocation.clearWatch */
  void clearWatch(int watchId);

  /** @domName Geolocation.getCurrentPosition */
  void getCurrentPosition(PositionCallback successCallback, [PositionErrorCallback errorCallback]);

  /** @domName Geolocation.watchPosition */
  int watchPosition(PositionCallback successCallback, [PositionErrorCallback errorCallback]);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName Geoposition
interface Geoposition {

  /** @domName Geoposition.coords */
  final Coordinates coords;

  /** @domName Geoposition.timestamp */
  final int timestamp;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLHRElement
interface HRElement extends Element {

  /** @domName HTMLHRElement.align */
  String align;

  /** @domName HTMLHRElement.noShade */
  bool noShade;

  /** @domName HTMLHRElement.size */
  String size;

  /** @domName HTMLHRElement.width */
  String width;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLAllCollection
interface HTMLAllCollection {

  /** @domName HTMLAllCollection.length */
  final int length;

  /** @domName HTMLAllCollection.item */
  Node item(int index);

  /** @domName HTMLAllCollection.namedItem */
  Node namedItem(String name);

  /** @domName HTMLAllCollection.tags */
  NodeList tags(String name);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLCollection
interface HTMLCollection extends List<Node> {

  /** @domName HTMLCollection.length */
  final int length;

  /** @domName HTMLCollection.item */
  Node item(int index);

  /** @domName HTMLCollection.namedItem */
  Node namedItem(String name);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLOptionsCollection
interface HTMLOptionsCollection extends HTMLCollection {

  /** @domName HTMLOptionsCollection.length */
  int length;

  /** @domName HTMLOptionsCollection.selectedIndex */
  int selectedIndex;

  /** @domName HTMLOptionsCollection.remove */
  void remove(int index);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HashChangeEvent
interface HashChangeEvent extends Event {

  /** @domName HashChangeEvent.newURL */
  final String newURL;

  /** @domName HashChangeEvent.oldURL */
  final String oldURL;

  /** @domName HashChangeEvent.initHashChangeEvent */
  void initHashChangeEvent(String type, bool canBubble, bool cancelable, String oldURL, String newURL);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLHeadElement
interface HeadElement extends Element {

  /** @domName HTMLHeadElement.profile */
  String profile;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLHeadingElement
interface HeadingElement extends Element {

  /** @domName HTMLHeadingElement.align */
  String align;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName History
interface History {

  /** @domName History.length */
  final int length;

  /** @domName History.state */
  final Dynamic state;

  /** @domName History.back */
  void back();

  /** @domName History.forward */
  void forward();

  /** @domName History.go */
  void go(int distance);

  /** @domName History.pushState */
  void pushState(Object data, String title, [String url]);

  /** @domName History.replaceState */
  void replaceState(Object data, String title, [String url]);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLHtmlElement
interface HtmlElement extends Element {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName IDBAny
interface IDBAny {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName IDBCursor
interface IDBCursor {

  static final int NEXT = 0;

  static final int NEXT_NO_DUPLICATE = 1;

  static final int PREV = 2;

  static final int PREV_NO_DUPLICATE = 3;

  /** @domName IDBCursor.direction */
  final int direction;

  /** @domName IDBCursor.key */
  final Dynamic key;

  /** @domName IDBCursor.primaryKey */
  final Dynamic primaryKey;

  /** @domName IDBCursor.source */
  final Dynamic source;

  /** @domName IDBCursor.continueFunction */
  void continueFunction([/*IDBKey*/ key]);

  /** @domName IDBCursor.delete */
  IDBRequest delete();

  /** @domName IDBCursor.update */
  IDBRequest update(/*SerializedScriptValue*/ value);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName IDBCursorWithValue
interface IDBCursorWithValue extends IDBCursor {

  /** @domName IDBCursorWithValue.value */
  final Dynamic value;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName IDBDatabase
interface IDBDatabase extends EventTarget {

  /**
   * @domName EventTarget.addEventListener, EventTarget.removeEventListener, EventTarget.dispatchEvent
   */
  IDBDatabaseEvents get on();

  /** @domName IDBDatabase.name */
  final String name;

  /** @domName IDBDatabase.objectStoreNames */
  final List<String> objectStoreNames;

  /** @domName IDBDatabase.version */
  final String version;

  /** @domName IDBDatabase.addEventListener */
  void $dom_addEventListener(String type, EventListener listener, [bool useCapture]);

  /** @domName IDBDatabase.close */
  void close();

  /** @domName IDBDatabase.createObjectStore */
  IDBObjectStore createObjectStore(String name, [Map options]);

  /** @domName IDBDatabase.deleteObjectStore */
  void deleteObjectStore(String name);

  /** @domName IDBDatabase.dispatchEvent */
  bool $dom_dispatchEvent(Event evt);

  /** @domName IDBDatabase.removeEventListener */
  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture]);

  /** @domName IDBDatabase.setVersion */
  IDBVersionChangeRequest setVersion(String version);

  /** @domName IDBDatabase.transaction */
  IDBTransaction transaction(storeName_OR_storeNames, [int mode]);
}

interface IDBDatabaseEvents extends Events {

  EventListenerList get abort();

  EventListenerList get error();

  EventListenerList get versionChange();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName IDBDatabaseException
interface IDBDatabaseException {

  static final int ABORT_ERR = 8;

  static final int CONSTRAINT_ERR = 4;

  static final int DATA_ERR = 5;

  static final int NON_TRANSIENT_ERR = 2;

  static final int NOT_ALLOWED_ERR = 6;

  static final int NOT_FOUND_ERR = 3;

  static final int NO_ERR = 0;

  static final int QUOTA_ERR = 11;

  static final int READ_ONLY_ERR = 9;

  static final int TIMEOUT_ERR = 10;

  static final int TRANSACTION_INACTIVE_ERR = 7;

  static final int UNKNOWN_ERR = 1;

  static final int VER_ERR = 12;

  /** @domName IDBDatabaseException.code */
  final int code;

  /** @domName IDBDatabaseException.message */
  final String message;

  /** @domName IDBDatabaseException.name */
  final String name;

  /** @domName IDBDatabaseException.toString */
  String toString();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName IDBFactory
interface IDBFactory {

  /** @domName IDBFactory.cmp */
  int cmp(/*IDBKey*/ first, /*IDBKey*/ second);

  /** @domName IDBFactory.deleteDatabase */
  IDBVersionChangeRequest deleteDatabase(String name);

  /** @domName IDBFactory.getDatabaseNames */
  IDBRequest getDatabaseNames();

  /** @domName IDBFactory.open */
  IDBRequest open(String name);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName IDBIndex
interface IDBIndex {

  /** @domName IDBIndex.keyPath */
  final String keyPath;

  /** @domName IDBIndex.multiEntry */
  final bool multiEntry;

  /** @domName IDBIndex.name */
  final String name;

  /** @domName IDBIndex.objectStore */
  final IDBObjectStore objectStore;

  /** @domName IDBIndex.unique */
  final bool unique;

  /** @domName IDBIndex.count */
  IDBRequest count([key_OR_range]);

  /** @domName IDBIndex.get */
  IDBRequest get(key);

  /** @domName IDBIndex.getKey */
  IDBRequest getKey(key);

  /** @domName IDBIndex.openCursor */
  IDBRequest openCursor([IDBKeyRange range, int direction]);

  /** @domName IDBIndex.openKeyCursor */
  IDBRequest openKeyCursor([IDBKeyRange range, int direction]);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName IDBKey
interface IDBKey {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName IDBKeyRange
interface IDBKeyRange {

  /** @domName IDBKeyRange.lower */
  final Dynamic lower;

  /** @domName IDBKeyRange.lowerOpen */
  final bool lowerOpen;

  /** @domName IDBKeyRange.upper */
  final Dynamic upper;

  /** @domName IDBKeyRange.upperOpen */
  final bool upperOpen;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName IDBObjectStore
interface IDBObjectStore {

  /** @domName IDBObjectStore.indexNames */
  final List<String> indexNames;

  /** @domName IDBObjectStore.keyPath */
  final String keyPath;

  /** @domName IDBObjectStore.name */
  final String name;

  /** @domName IDBObjectStore.transaction */
  final IDBTransaction transaction;

  /** @domName IDBObjectStore.add */
  IDBRequest add(/*SerializedScriptValue*/ value, [/*IDBKey*/ key]);

  /** @domName IDBObjectStore.clear */
  IDBRequest clear();

  /** @domName IDBObjectStore.count */
  IDBRequest count([key_OR_range]);

  /** @domName IDBObjectStore.createIndex */
  IDBIndex createIndex(String name, String keyPath, [Map options]);

  /** @domName IDBObjectStore.delete */
  IDBRequest delete(key_OR_keyRange);

  /** @domName IDBObjectStore.deleteIndex */
  void deleteIndex(String name);

  /** @domName IDBObjectStore.getObject */
  IDBRequest getObject(key);

  /** @domName IDBObjectStore.index */
  IDBIndex index(String name);

  /** @domName IDBObjectStore.openCursor */
  IDBRequest openCursor([IDBKeyRange range, int direction]);

  /** @domName IDBObjectStore.put */
  IDBRequest put(/*SerializedScriptValue*/ value, [/*IDBKey*/ key]);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName IDBRequest
interface IDBRequest extends EventTarget {

  /**
   * @domName EventTarget.addEventListener, EventTarget.removeEventListener, EventTarget.dispatchEvent
   */
  IDBRequestEvents get on();

  static final int DONE = 2;

  static final int LOADING = 1;

  /** @domName IDBRequest.errorCode */
  final int errorCode;

  /** @domName IDBRequest.readyState */
  final int readyState;

  /** @domName IDBRequest.result */
  final Dynamic result;

  /** @domName IDBRequest.source */
  final Dynamic source;

  /** @domName IDBRequest.transaction */
  final IDBTransaction transaction;

  /** @domName IDBRequest.webkitErrorMessage */
  final String webkitErrorMessage;

  /** @domName IDBRequest.addEventListener */
  void $dom_addEventListener(String type, EventListener listener, [bool useCapture]);

  /** @domName IDBRequest.dispatchEvent */
  bool $dom_dispatchEvent(Event evt);

  /** @domName IDBRequest.removeEventListener */
  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture]);
}

interface IDBRequestEvents extends Events {

  EventListenerList get error();

  EventListenerList get success();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName IDBTransaction
interface IDBTransaction extends EventTarget {

  /**
   * @domName EventTarget.addEventListener, EventTarget.removeEventListener, EventTarget.dispatchEvent
   */
  IDBTransactionEvents get on();

  static final int READ_ONLY = 0;

  static final int READ_WRITE = 1;

  static final int VERSION_CHANGE = 2;

  /** @domName IDBTransaction.db */
  final IDBDatabase db;

  /** @domName IDBTransaction.mode */
  final int mode;

  /** @domName IDBTransaction.abort */
  void abort();

  /** @domName IDBTransaction.addEventListener */
  void $dom_addEventListener(String type, EventListener listener, [bool useCapture]);

  /** @domName IDBTransaction.dispatchEvent */
  bool $dom_dispatchEvent(Event evt);

  /** @domName IDBTransaction.objectStore */
  IDBObjectStore objectStore(String name);

  /** @domName IDBTransaction.removeEventListener */
  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture]);
}

interface IDBTransactionEvents extends Events {

  EventListenerList get abort();

  EventListenerList get complete();

  EventListenerList get error();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName IDBVersionChangeEvent
interface IDBVersionChangeEvent extends Event {

  /** @domName IDBVersionChangeEvent.version */
  final String version;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName IDBVersionChangeRequest
interface IDBVersionChangeRequest extends IDBRequest, EventTarget {

  /**
   * @domName EventTarget.addEventListener, EventTarget.removeEventListener, EventTarget.dispatchEvent
   */
  IDBVersionChangeRequestEvents get on();
}

interface IDBVersionChangeRequestEvents extends IDBRequestEvents {

  EventListenerList get blocked();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLIFrameElement
interface IFrameElement extends Element {

  /** @domName HTMLIFrameElement.align */
  String align;

  /** @domName HTMLIFrameElement.contentDocument */
  final Document contentDocument;

  /** @domName HTMLIFrameElement.contentWindow */
  final Window contentWindow;

  /** @domName HTMLIFrameElement.frameBorder */
  String frameBorder;

  /** @domName HTMLIFrameElement.height */
  String height;

  /** @domName HTMLIFrameElement.longDesc */
  String longDesc;

  /** @domName HTMLIFrameElement.marginHeight */
  String marginHeight;

  /** @domName HTMLIFrameElement.marginWidth */
  String marginWidth;

  /** @domName HTMLIFrameElement.name */
  String name;

  /** @domName HTMLIFrameElement.sandbox */
  String sandbox;

  /** @domName HTMLIFrameElement.scrolling */
  String scrolling;

  /** @domName HTMLIFrameElement.src */
  String src;

  /** @domName HTMLIFrameElement.srcdoc */
  String srcdoc;

  /** @domName HTMLIFrameElement.width */
  String width;

  /** @domName HTMLIFrameElement.getSVGDocument */
  SVGDocument getSVGDocument();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool IceCallback(IceCandidate candidate, bool moreToFollow, PeerConnection00 source);
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName IceCandidate
interface IceCandidate default _IceCandidateFactoryProvider {

  IceCandidate(String label, String candidateLine);

  /** @domName IceCandidate.label */
  final String label;

  /** @domName IceCandidate.toSdp */
  String toSdp();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName ImageData
interface ImageData {

  /** @domName ImageData.data */
  final Uint8ClampedArray data;

  /** @domName ImageData.height */
  final int height;

  /** @domName ImageData.width */
  final int width;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLImageElement
interface ImageElement extends Element {

  /** @domName HTMLImageElement.align */
  String align;

  /** @domName HTMLImageElement.alt */
  String alt;

  /** @domName HTMLImageElement.border */
  String border;

  /** @domName HTMLImageElement.complete */
  final bool complete;

  /** @domName HTMLImageElement.crossOrigin */
  String crossOrigin;

  /** @domName HTMLImageElement.height */
  int height;

  /** @domName HTMLImageElement.hspace */
  int hspace;

  /** @domName HTMLImageElement.isMap */
  bool isMap;

  /** @domName HTMLImageElement.longDesc */
  String longDesc;

  /** @domName HTMLImageElement.lowsrc */
  String lowsrc;

  /** @domName HTMLImageElement.name */
  String name;

  /** @domName HTMLImageElement.naturalHeight */
  final int naturalHeight;

  /** @domName HTMLImageElement.naturalWidth */
  final int naturalWidth;

  /** @domName HTMLImageElement.src */
  String src;

  /** @domName HTMLImageElement.useMap */
  String useMap;

  /** @domName HTMLImageElement.vspace */
  int vspace;

  /** @domName HTMLImageElement.width */
  int width;

  /** @domName HTMLImageElement.x */
  final int x;

  /** @domName HTMLImageElement.y */
  final int y;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLInputElement
interface InputElement extends Element {

  /**
   * @domName EventTarget.addEventListener, EventTarget.removeEventListener, EventTarget.dispatchEvent
   */
  InputElementEvents get on();

  /** @domName HTMLInputElement.accept */
  String accept;

  /** @domName HTMLInputElement.align */
  String align;

  /** @domName HTMLInputElement.alt */
  String alt;

  /** @domName HTMLInputElement.autocomplete */
  String autocomplete;

  /** @domName HTMLInputElement.autofocus */
  bool autofocus;

  /** @domName HTMLInputElement.checked */
  bool checked;

  /** @domName HTMLInputElement.defaultChecked */
  bool defaultChecked;

  /** @domName HTMLInputElement.defaultValue */
  String defaultValue;

  /** @domName HTMLInputElement.disabled */
  bool disabled;

  /** @domName HTMLInputElement.files */
  final FileList files;

  /** @domName HTMLInputElement.form */
  final FormElement form;

  /** @domName HTMLInputElement.formAction */
  String formAction;

  /** @domName HTMLInputElement.formEnctype */
  String formEnctype;

  /** @domName HTMLInputElement.formMethod */
  String formMethod;

  /** @domName HTMLInputElement.formNoValidate */
  bool formNoValidate;

  /** @domName HTMLInputElement.formTarget */
  String formTarget;

  /** @domName HTMLInputElement.incremental */
  bool incremental;

  /** @domName HTMLInputElement.indeterminate */
  bool indeterminate;

  /** @domName HTMLInputElement.labels */
  final NodeList labels;

  /** @domName HTMLInputElement.max */
  String max;

  /** @domName HTMLInputElement.maxLength */
  int maxLength;

  /** @domName HTMLInputElement.min */
  String min;

  /** @domName HTMLInputElement.multiple */
  bool multiple;

  /** @domName HTMLInputElement.name */
  String name;

  /** @domName HTMLInputElement.pattern */
  String pattern;

  /** @domName HTMLInputElement.placeholder */
  String placeholder;

  /** @domName HTMLInputElement.readOnly */
  bool readOnly;

  /** @domName HTMLInputElement.required */
  bool required;

  /** @domName HTMLInputElement.selectionDirection */
  String selectionDirection;

  /** @domName HTMLInputElement.selectionEnd */
  int selectionEnd;

  /** @domName HTMLInputElement.selectionStart */
  int selectionStart;

  /** @domName HTMLInputElement.size */
  int size;

  /** @domName HTMLInputElement.src */
  String src;

  /** @domName HTMLInputElement.step */
  String step;

  /** @domName HTMLInputElement.type */
  String type;

  /** @domName HTMLInputElement.useMap */
  String useMap;

  /** @domName HTMLInputElement.validationMessage */
  final String validationMessage;

  /** @domName HTMLInputElement.validity */
  final ValidityState validity;

  /** @domName HTMLInputElement.value */
  String value;

  /** @domName HTMLInputElement.valueAsDate */
  Date valueAsDate;

  /** @domName HTMLInputElement.valueAsNumber */
  num valueAsNumber;

  /** @domName HTMLInputElement.webkitGrammar */
  bool webkitGrammar;

  /** @domName HTMLInputElement.webkitSpeech */
  bool webkitSpeech;

  /** @domName HTMLInputElement.webkitdirectory */
  bool webkitdirectory;

  /** @domName HTMLInputElement.willValidate */
  final bool willValidate;

  /** @domName HTMLInputElement.checkValidity */
  bool checkValidity();

  /** @domName HTMLInputElement.select */
  void select();

  /** @domName HTMLInputElement.setCustomValidity */
  void setCustomValidity(String error);

  /** @domName HTMLInputElement.setSelectionRange */
  void setSelectionRange(int start, int end, [String direction]);

  /** @domName HTMLInputElement.stepDown */
  void stepDown([int n]);

  /** @domName HTMLInputElement.stepUp */
  void stepUp([int n]);
}

interface InputElementEvents extends ElementEvents {

  EventListenerList get speechChange();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName Int16Array
interface Int16Array extends ArrayBufferView, List<int> default _TypedArrayFactoryProvider {

  Int16Array(int length);

  Int16Array.fromList(List<int> list);

  Int16Array.fromBuffer(ArrayBuffer buffer, [int byteOffset, int length]);

  static final int BYTES_PER_ELEMENT = 2;

  /** @domName Int16Array.length */
  final int length;

  /** @domName Int16Array.setElements */
  void setElements(Object array, [int offset]);

  /** @domName Int16Array.subarray */
  Int16Array subarray(int start, [int end]);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName Int32Array
interface Int32Array extends ArrayBufferView, List<int> default _TypedArrayFactoryProvider {

  Int32Array(int length);

  Int32Array.fromList(List<int> list);

  Int32Array.fromBuffer(ArrayBuffer buffer, [int byteOffset, int length]);

  static final int BYTES_PER_ELEMENT = 4;

  /** @domName Int32Array.length */
  final int length;

  /** @domName Int32Array.setElements */
  void setElements(Object array, [int offset]);

  /** @domName Int32Array.subarray */
  Int32Array subarray(int start, [int end]);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName Int8Array
interface Int8Array extends ArrayBufferView, List<int> default _TypedArrayFactoryProvider {

  Int8Array(int length);

  Int8Array.fromList(List<int> list);

  Int8Array.fromBuffer(ArrayBuffer buffer, [int byteOffset, int length]);

  static final int BYTES_PER_ELEMENT = 1;

  /** @domName Int8Array.length */
  final int length;

  /** @domName Int8Array.setElements */
  void setElements(Object array, [int offset]);

  /** @domName Int8Array.subarray */
  Int8Array subarray(int start, [int end]);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName JavaScriptAudioNode
interface JavaScriptAudioNode extends AudioNode, EventTarget {

  /**
   * @domName EventTarget.addEventListener, EventTarget.removeEventListener, EventTarget.dispatchEvent
   */
  JavaScriptAudioNodeEvents get on();

  /** @domName JavaScriptAudioNode.bufferSize */
  final int bufferSize;
}

interface JavaScriptAudioNodeEvents extends Events {

  EventListenerList get audioProcess();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName JavaScriptCallFrame
interface JavaScriptCallFrame {

  static final int CATCH_SCOPE = 4;

  static final int CLOSURE_SCOPE = 3;

  static final int GLOBAL_SCOPE = 0;

  static final int LOCAL_SCOPE = 1;

  static final int WITH_SCOPE = 2;

  /** @domName JavaScriptCallFrame.caller */
  final JavaScriptCallFrame caller;

  /** @domName JavaScriptCallFrame.column */
  final int column;

  /** @domName JavaScriptCallFrame.functionName */
  final String functionName;

  /** @domName JavaScriptCallFrame.line */
  final int line;

  /** @domName JavaScriptCallFrame.scopeChain */
  final List scopeChain;

  /** @domName JavaScriptCallFrame.sourceID */
  final int sourceID;

  /** @domName JavaScriptCallFrame.thisObject */
  final Object thisObject;

  /** @domName JavaScriptCallFrame.type */
  final String type;

  /** @domName JavaScriptCallFrame.evaluate */
  void evaluate(String script);

  /** @domName JavaScriptCallFrame.scopeType */
  int scopeType(int scopeIndex);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName KeyboardEvent
interface KeyboardEvent extends UIEvent {

  /** @domName KeyboardEvent.altGraphKey */
  final bool altGraphKey;

  /** @domName KeyboardEvent.altKey */
  final bool altKey;

  /** @domName KeyboardEvent.ctrlKey */
  final bool ctrlKey;

  /** @domName KeyboardEvent.keyIdentifier */
  final String keyIdentifier;

  /** @domName KeyboardEvent.keyLocation */
  final int keyLocation;

  /** @domName KeyboardEvent.metaKey */
  final bool metaKey;

  /** @domName KeyboardEvent.shiftKey */
  final bool shiftKey;

  /** @domName KeyboardEvent.initKeyboardEvent */
  void initKeyboardEvent(String type, bool canBubble, bool cancelable, Window view, String keyIdentifier, int keyLocation, bool ctrlKey, bool altKey, bool shiftKey, bool metaKey, bool altGraphKey);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLKeygenElement
interface KeygenElement extends Element {

  /** @domName HTMLKeygenElement.autofocus */
  bool autofocus;

  /** @domName HTMLKeygenElement.challenge */
  String challenge;

  /** @domName HTMLKeygenElement.disabled */
  bool disabled;

  /** @domName HTMLKeygenElement.form */
  final FormElement form;

  /** @domName HTMLKeygenElement.keytype */
  String keytype;

  /** @domName HTMLKeygenElement.labels */
  final NodeList labels;

  /** @domName HTMLKeygenElement.name */
  String name;

  /** @domName HTMLKeygenElement.type */
  final String type;

  /** @domName HTMLKeygenElement.validationMessage */
  final String validationMessage;

  /** @domName HTMLKeygenElement.validity */
  final ValidityState validity;

  /** @domName HTMLKeygenElement.willValidate */
  final bool willValidate;

  /** @domName HTMLKeygenElement.checkValidity */
  bool checkValidity();

  /** @domName HTMLKeygenElement.setCustomValidity */
  void setCustomValidity(String error);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLLIElement
interface LIElement extends Element {

  /** @domName HTMLLIElement.type */
  String type;

  /** @domName HTMLLIElement.value */
  int value;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLLabelElement
interface LabelElement extends Element {

  /** @domName HTMLLabelElement.control */
  final Element control;

  /** @domName HTMLLabelElement.form */
  final FormElement form;

  /** @domName HTMLLabelElement.htmlFor */
  String htmlFor;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLLegendElement
interface LegendElement extends Element {

  /** @domName HTMLLegendElement.align */
  String align;

  /** @domName HTMLLegendElement.form */
  final FormElement form;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLLinkElement
interface LinkElement extends Element {

  /** @domName HTMLLinkElement.charset */
  String charset;

  /** @domName HTMLLinkElement.disabled */
  bool disabled;

  /** @domName HTMLLinkElement.href */
  String href;

  /** @domName HTMLLinkElement.hreflang */
  String hreflang;

  /** @domName HTMLLinkElement.media */
  String media;

  /** @domName HTMLLinkElement.rel */
  String rel;

  /** @domName HTMLLinkElement.rev */
  String rev;

  /** @domName HTMLLinkElement.sheet */
  final StyleSheet sheet;

  /** @domName HTMLLinkElement.sizes */
  DOMSettableTokenList sizes;

  /** @domName HTMLLinkElement.target */
  String target;

  /** @domName HTMLLinkElement.type */
  String type;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName LocalMediaStream
interface LocalMediaStream extends MediaStream {

  /** @domName LocalMediaStream.stop */
  void stop();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName Location
interface Location {

  /** @domName Location.ancestorOrigins */
  final List<String> ancestorOrigins;

  /** @domName Location.hash */
  String hash;

  /** @domName Location.host */
  String host;

  /** @domName Location.hostname */
  String hostname;

  /** @domName Location.href */
  String href;

  /** @domName Location.origin */
  final String origin;

  /** @domName Location.pathname */
  String pathname;

  /** @domName Location.port */
  String port;

  /** @domName Location.protocol */
  String protocol;

  /** @domName Location.search */
  String search;

  /** @domName Location.assign */
  void assign(String url);

  /** @domName Location.reload */
  void reload();

  /** @domName Location.replace */
  void replace(String url);

  /** @domName Location.toString */
  String toString();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLMapElement
interface MapElement extends Element {

  /** @domName HTMLMapElement.areas */
  final HTMLCollection areas;

  /** @domName HTMLMapElement.name */
  String name;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLMarqueeElement
interface MarqueeElement extends Element {

  /** @domName HTMLMarqueeElement.behavior */
  String behavior;

  /** @domName HTMLMarqueeElement.bgColor */
  String bgColor;

  /** @domName HTMLMarqueeElement.direction */
  String direction;

  /** @domName HTMLMarqueeElement.height */
  String height;

  /** @domName HTMLMarqueeElement.hspace */
  int hspace;

  /** @domName HTMLMarqueeElement.loop */
  int loop;

  /** @domName HTMLMarqueeElement.scrollAmount */
  int scrollAmount;

  /** @domName HTMLMarqueeElement.scrollDelay */
  int scrollDelay;

  /** @domName HTMLMarqueeElement.trueSpeed */
  bool trueSpeed;

  /** @domName HTMLMarqueeElement.vspace */
  int vspace;

  /** @domName HTMLMarqueeElement.width */
  String width;

  /** @domName HTMLMarqueeElement.start */
  void start();

  /** @domName HTMLMarqueeElement.stop */
  void stop();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName MediaController
interface MediaController extends EventTarget default _MediaControllerFactoryProvider {

  MediaController();

  /** @domName MediaController.buffered */
  final TimeRanges buffered;

  /** @domName MediaController.currentTime */
  num currentTime;

  /** @domName MediaController.defaultPlaybackRate */
  num defaultPlaybackRate;

  /** @domName MediaController.duration */
  final num duration;

  /** @domName MediaController.muted */
  bool muted;

  /** @domName MediaController.paused */
  final bool paused;

  /** @domName MediaController.playbackRate */
  num playbackRate;

  /** @domName MediaController.played */
  final TimeRanges played;

  /** @domName MediaController.seekable */
  final TimeRanges seekable;

  /** @domName MediaController.volume */
  num volume;

  /** @domName MediaController.addEventListener */
  void $dom_addEventListener(String type, EventListener listener, [bool useCapture]);

  /** @domName MediaController.dispatchEvent */
  bool $dom_dispatchEvent(Event evt);

  /** @domName MediaController.pause */
  void pause();

  /** @domName MediaController.play */
  void play();

  /** @domName MediaController.removeEventListener */
  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture]);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLMediaElement
interface MediaElement extends Element {

  /**
   * @domName EventTarget.addEventListener, EventTarget.removeEventListener, EventTarget.dispatchEvent
   */
  MediaElementEvents get on();

  static final int EOS_DECODE_ERR = 2;

  static final int EOS_NETWORK_ERR = 1;

  static final int EOS_NO_ERROR = 0;

  static final int HAVE_CURRENT_DATA = 2;

  static final int HAVE_ENOUGH_DATA = 4;

  static final int HAVE_FUTURE_DATA = 3;

  static final int HAVE_METADATA = 1;

  static final int HAVE_NOTHING = 0;

  static final int NETWORK_EMPTY = 0;

  static final int NETWORK_IDLE = 1;

  static final int NETWORK_LOADING = 2;

  static final int NETWORK_NO_SOURCE = 3;

  static final int SOURCE_CLOSED = 0;

  static final int SOURCE_ENDED = 2;

  static final int SOURCE_OPEN = 1;

  /** @domName HTMLMediaElement.autoplay */
  bool autoplay;

  /** @domName HTMLMediaElement.buffered */
  final TimeRanges buffered;

  /** @domName HTMLMediaElement.controller */
  MediaController controller;

  /** @domName HTMLMediaElement.controls */
  bool controls;

  /** @domName HTMLMediaElement.currentSrc */
  final String currentSrc;

  /** @domName HTMLMediaElement.currentTime */
  num currentTime;

  /** @domName HTMLMediaElement.defaultMuted */
  bool defaultMuted;

  /** @domName HTMLMediaElement.defaultPlaybackRate */
  num defaultPlaybackRate;

  /** @domName HTMLMediaElement.duration */
  final num duration;

  /** @domName HTMLMediaElement.ended */
  final bool ended;

  /** @domName HTMLMediaElement.error */
  final MediaError error;

  /** @domName HTMLMediaElement.initialTime */
  final num initialTime;

  /** @domName HTMLMediaElement.loop */
  bool loop;

  /** @domName HTMLMediaElement.mediaGroup */
  String mediaGroup;

  /** @domName HTMLMediaElement.muted */
  bool muted;

  /** @domName HTMLMediaElement.networkState */
  final int networkState;

  /** @domName HTMLMediaElement.paused */
  final bool paused;

  /** @domName HTMLMediaElement.playbackRate */
  num playbackRate;

  /** @domName HTMLMediaElement.played */
  final TimeRanges played;

  /** @domName HTMLMediaElement.preload */
  String preload;

  /** @domName HTMLMediaElement.readyState */
  final int readyState;

  /** @domName HTMLMediaElement.seekable */
  final TimeRanges seekable;

  /** @domName HTMLMediaElement.seeking */
  final bool seeking;

  /** @domName HTMLMediaElement.src */
  String src;

  /** @domName HTMLMediaElement.startTime */
  final num startTime;

  /** @domName HTMLMediaElement.textTracks */
  final TextTrackList textTracks;

  /** @domName HTMLMediaElement.volume */
  num volume;

  /** @domName HTMLMediaElement.webkitAudioDecodedByteCount */
  final int webkitAudioDecodedByteCount;

  /** @domName HTMLMediaElement.webkitClosedCaptionsVisible */
  bool webkitClosedCaptionsVisible;

  /** @domName HTMLMediaElement.webkitHasClosedCaptions */
  final bool webkitHasClosedCaptions;

  /** @domName HTMLMediaElement.webkitMediaSourceURL */
  final String webkitMediaSourceURL;

  /** @domName HTMLMediaElement.webkitPreservesPitch */
  bool webkitPreservesPitch;

  /** @domName HTMLMediaElement.webkitSourceState */
  final int webkitSourceState;

  /** @domName HTMLMediaElement.webkitVideoDecodedByteCount */
  final int webkitVideoDecodedByteCount;

  /** @domName HTMLMediaElement.addTextTrack */
  TextTrack addTextTrack(String kind, [String label, String language]);

  /** @domName HTMLMediaElement.canPlayType */
  String canPlayType(String type, String keySystem);

  /** @domName HTMLMediaElement.load */
  void load();

  /** @domName HTMLMediaElement.pause */
  void pause();

  /** @domName HTMLMediaElement.play */
  void play();

  /** @domName HTMLMediaElement.webkitAddKey */
  void webkitAddKey(String keySystem, Uint8Array key, [Uint8Array initData, String sessionId]);

  /** @domName HTMLMediaElement.webkitCancelKeyRequest */
  void webkitCancelKeyRequest(String keySystem, String sessionId);

  /** @domName HTMLMediaElement.webkitGenerateKeyRequest */
  void webkitGenerateKeyRequest(String keySystem, [Uint8Array initData]);

  /** @domName HTMLMediaElement.webkitSourceAddId */
  void webkitSourceAddId(String id, String type);

  /** @domName HTMLMediaElement.webkitSourceAppend */
  void webkitSourceAppend(Uint8Array data);

  /** @domName HTMLMediaElement.webkitSourceEndOfStream */
  void webkitSourceEndOfStream(int status);

  /** @domName HTMLMediaElement.webkitSourceRemoveId */
  void webkitSourceRemoveId(String id);
}

interface MediaElementEvents extends ElementEvents {

  EventListenerList get keyAdded();

  EventListenerList get keyError();

  EventListenerList get keyMessage();

  EventListenerList get needKey();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName MediaElementAudioSourceNode
interface MediaElementAudioSourceNode extends AudioSourceNode {

  /** @domName MediaElementAudioSourceNode.mediaElement */
  final MediaElement mediaElement;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName MediaError
interface MediaError {

  static final int MEDIA_ERR_ABORTED = 1;

  static final int MEDIA_ERR_DECODE = 3;

  static final int MEDIA_ERR_ENCRYPTED = 5;

  static final int MEDIA_ERR_NETWORK = 2;

  static final int MEDIA_ERR_SRC_NOT_SUPPORTED = 4;

  /** @domName MediaError.code */
  final int code;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName MediaKeyError
interface MediaKeyError {

  static final int MEDIA_KEYERR_CLIENT = 2;

  static final int MEDIA_KEYERR_DOMAIN = 6;

  static final int MEDIA_KEYERR_HARDWARECHANGE = 5;

  static final int MEDIA_KEYERR_OUTPUT = 4;

  static final int MEDIA_KEYERR_SERVICE = 3;

  static final int MEDIA_KEYERR_UNKNOWN = 1;

  /** @domName MediaKeyError.code */
  final int code;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName MediaKeyEvent
interface MediaKeyEvent extends Event {

  /** @domName MediaKeyEvent.defaultURL */
  final String defaultURL;

  /** @domName MediaKeyEvent.errorCode */
  final MediaKeyError errorCode;

  /** @domName MediaKeyEvent.initData */
  final Uint8Array initData;

  /** @domName MediaKeyEvent.keySystem */
  final String keySystem;

  /** @domName MediaKeyEvent.message */
  final Uint8Array message;

  /** @domName MediaKeyEvent.sessionId */
  final String sessionId;

  /** @domName MediaKeyEvent.systemCode */
  final int systemCode;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName MediaList
interface MediaList extends List<String> {

  /** @domName MediaList.length */
  final int length;

  /** @domName MediaList.mediaText */
  String mediaText;

  /** @domName MediaList.appendMedium */
  void appendMedium(String newMedium);

  /** @domName MediaList.deleteMedium */
  void deleteMedium(String oldMedium);

  /** @domName MediaList.item */
  String item(int index);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName MediaQueryList
interface MediaQueryList {

  /** @domName MediaQueryList.matches */
  final bool matches;

  /** @domName MediaQueryList.media */
  final String media;

  /** @domName MediaQueryList.addListener */
  void addListener(MediaQueryListListener listener);

  /** @domName MediaQueryList.removeListener */
  void removeListener(MediaQueryListListener listener);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName MediaQueryListListener
interface MediaQueryListListener {

  /** @domName MediaQueryListListener.queryChanged */
  void queryChanged(MediaQueryList list);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName MediaStream
interface MediaStream extends EventTarget default _MediaStreamFactoryProvider {

  MediaStream(MediaStreamTrackList audioTracks, MediaStreamTrackList videoTracks);

  /**
   * @domName EventTarget.addEventListener, EventTarget.removeEventListener, EventTarget.dispatchEvent
   */
  MediaStreamEvents get on();

  static final int ENDED = 2;

  static final int LIVE = 1;

  /** @domName MediaStream.audioTracks */
  final MediaStreamTrackList audioTracks;

  /** @domName MediaStream.label */
  final String label;

  /** @domName MediaStream.readyState */
  final int readyState;

  /** @domName MediaStream.videoTracks */
  final MediaStreamTrackList videoTracks;

  /** @domName MediaStream.addEventListener */
  void $dom_addEventListener(String type, EventListener listener, [bool useCapture]);

  /** @domName MediaStream.dispatchEvent */
  bool $dom_dispatchEvent(Event event);

  /** @domName MediaStream.removeEventListener */
  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture]);
}

interface MediaStreamEvents extends Events {

  EventListenerList get ended();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName MediaStreamEvent
interface MediaStreamEvent extends Event {

  /** @domName MediaStreamEvent.stream */
  final MediaStream stream;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName MediaStreamList
interface MediaStreamList {

  /** @domName MediaStreamList.length */
  final int length;

  /** @domName MediaStreamList.item */
  MediaStream item(int index);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName MediaStreamTrack
interface MediaStreamTrack {

  /** @domName MediaStreamTrack.enabled */
  bool enabled;

  /** @domName MediaStreamTrack.kind */
  final String kind;

  /** @domName MediaStreamTrack.label */
  final String label;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName MediaStreamTrackList
interface MediaStreamTrackList {

  /** @domName MediaStreamTrackList.length */
  final int length;

  /** @domName MediaStreamTrackList.item */
  MediaStreamTrack item(int index);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName MemoryInfo
interface MemoryInfo {

  /** @domName MemoryInfo.jsHeapSizeLimit */
  final int jsHeapSizeLimit;

  /** @domName MemoryInfo.totalJSHeapSize */
  final int totalJSHeapSize;

  /** @domName MemoryInfo.usedJSHeapSize */
  final int usedJSHeapSize;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLMenuElement
interface MenuElement extends Element {

  /** @domName HTMLMenuElement.compact */
  bool compact;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName MessageChannel
interface MessageChannel default _MessageChannelFactoryProvider {

  MessageChannel();

  /** @domName MessageChannel.port1 */
  final MessagePort port1;

  /** @domName MessageChannel.port2 */
  final MessagePort port2;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName MessageEvent
interface MessageEvent extends Event {

  /** @domName MessageEvent.data */
  final Object data;

  /** @domName MessageEvent.lastEventId */
  final String lastEventId;

  /** @domName MessageEvent.origin */
  final String origin;

  /** @domName MessageEvent.ports */
  final List ports;

  /** @domName MessageEvent.source */
  final Window source;

  /** @domName MessageEvent.initMessageEvent */
  void initMessageEvent(String typeArg, bool canBubbleArg, bool cancelableArg, Object dataArg, String originArg, String lastEventIdArg, Window sourceArg, List messagePorts);

  /** @domName MessageEvent.webkitInitMessageEvent */
  void webkitInitMessageEvent(String typeArg, bool canBubbleArg, bool cancelableArg, Object dataArg, String originArg, String lastEventIdArg, Window sourceArg, List transferables);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName MessagePort
interface MessagePort extends EventTarget {

  /**
   * @domName EventTarget.addEventListener, EventTarget.removeEventListener, EventTarget.dispatchEvent
   */
  MessagePortEvents get on();

  /** @domName MessagePort.addEventListener */
  void $dom_addEventListener(String type, EventListener listener, [bool useCapture]);

  /** @domName MessagePort.close */
  void close();

  /** @domName MessagePort.dispatchEvent */
  bool $dom_dispatchEvent(Event evt);

  /** @domName MessagePort.postMessage */
  void postMessage(String message, [List messagePorts]);

  /** @domName MessagePort.removeEventListener */
  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture]);

  /** @domName MessagePort.start */
  void start();

  /** @domName MessagePort.webkitPostMessage */
  void webkitPostMessage(String message, [List transfer]);
}

interface MessagePortEvents extends Events {

  EventListenerList get message();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLMetaElement
interface MetaElement extends Element {

  /** @domName HTMLMetaElement.content */
  String content;

  /** @domName HTMLMetaElement.httpEquiv */
  String httpEquiv;

  /** @domName HTMLMetaElement.name */
  String name;

  /** @domName HTMLMetaElement.scheme */
  String scheme;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName Metadata
interface Metadata {

  /** @domName Metadata.modificationTime */
  final Date modificationTime;

  /** @domName Metadata.size */
  final int size;
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool MetadataCallback(Metadata metadata);
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLMeterElement
interface MeterElement extends Element {

  /** @domName HTMLMeterElement.high */
  num high;

  /** @domName HTMLMeterElement.labels */
  final NodeList labels;

  /** @domName HTMLMeterElement.low */
  num low;

  /** @domName HTMLMeterElement.max */
  num max;

  /** @domName HTMLMeterElement.min */
  num min;

  /** @domName HTMLMeterElement.optimum */
  num optimum;

  /** @domName HTMLMeterElement.value */
  num value;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLModElement
interface ModElement extends Element {

  /** @domName HTMLModElement.cite */
  String cite;

  /** @domName HTMLModElement.dateTime */
  String dateTime;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName MouseEvent
interface MouseEvent extends UIEvent default _MouseEventFactoryProvider {

  MouseEvent(String type, Window view, int detail, int screenX, int screenY,
      int clientX, int clientY, int button, [bool canBubble, bool cancelable,
      bool ctrlKey, bool altKey, bool shiftKey, bool metaKey,
      EventTarget relatedTarget]);


  /** @domName MouseEvent.altKey */
  final bool altKey;

  /** @domName MouseEvent.button */
  final int button;

  /** @domName MouseEvent.clientX */
  final int clientX;

  /** @domName MouseEvent.clientY */
  final int clientY;

  /** @domName MouseEvent.ctrlKey */
  final bool ctrlKey;

  /** @domName MouseEvent.dataTransfer */
  final Clipboard dataTransfer;

  /** @domName MouseEvent.fromElement */
  final Node fromElement;

  /** @domName MouseEvent.metaKey */
  final bool metaKey;

  /** @domName MouseEvent.offsetX */
  final int offsetX;

  /** @domName MouseEvent.offsetY */
  final int offsetY;

  /** @domName MouseEvent.relatedTarget */
  final EventTarget relatedTarget;

  /** @domName MouseEvent.screenX */
  final int screenX;

  /** @domName MouseEvent.screenY */
  final int screenY;

  /** @domName MouseEvent.shiftKey */
  final bool shiftKey;

  /** @domName MouseEvent.toElement */
  final Node toElement;

  /** @domName MouseEvent.webkitMovementX */
  final int webkitMovementX;

  /** @domName MouseEvent.webkitMovementY */
  final int webkitMovementY;

  /** @domName MouseEvent.x */
  final int x;

  /** @domName MouseEvent.y */
  final int y;

  /** @domName MouseEvent.initMouseEvent */
  void $dom_initMouseEvent(String type, bool canBubble, bool cancelable, Window view, int detail, int screenX, int screenY, int clientX, int clientY, bool ctrlKey, bool altKey, bool shiftKey, bool metaKey, int button, EventTarget relatedTarget);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName MutationCallback
interface MutationCallback {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName MutationEvent
interface MutationEvent extends Event {

  static final int ADDITION = 2;

  static final int MODIFICATION = 1;

  static final int REMOVAL = 3;

  /** @domName MutationEvent.attrChange */
  final int attrChange;

  /** @domName MutationEvent.attrName */
  final String attrName;

  /** @domName MutationEvent.newValue */
  final String newValue;

  /** @domName MutationEvent.prevValue */
  final String prevValue;

  /** @domName MutationEvent.relatedNode */
  final Node relatedNode;

  /** @domName MutationEvent.initMutationEvent */
  void initMutationEvent(String type, bool canBubble, bool cancelable, Node relatedNode, String prevValue, String newValue, String attrName, int attrChange);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName MutationRecord
interface MutationRecord {

  /** @domName MutationRecord.addedNodes */
  final NodeList addedNodes;

  /** @domName MutationRecord.attributeName */
  final String attributeName;

  /** @domName MutationRecord.attributeNamespace */
  final String attributeNamespace;

  /** @domName MutationRecord.nextSibling */
  final Node nextSibling;

  /** @domName MutationRecord.oldValue */
  final String oldValue;

  /** @domName MutationRecord.previousSibling */
  final Node previousSibling;

  /** @domName MutationRecord.removedNodes */
  final NodeList removedNodes;

  /** @domName MutationRecord.target */
  final Node target;

  /** @domName MutationRecord.type */
  final String type;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName NamedNodeMap
interface NamedNodeMap extends List<Node> {

  /** @domName NamedNodeMap.length */
  final int length;

  /** @domName NamedNodeMap.getNamedItem */
  Node getNamedItem(String name);

  /** @domName NamedNodeMap.getNamedItemNS */
  Node getNamedItemNS(String namespaceURI, String localName);

  /** @domName NamedNodeMap.item */
  Node item(int index);

  /** @domName NamedNodeMap.removeNamedItem */
  Node removeNamedItem(String name);

  /** @domName NamedNodeMap.removeNamedItemNS */
  Node removeNamedItemNS(String namespaceURI, String localName);

  /** @domName NamedNodeMap.setNamedItem */
  Node setNamedItem(Node node);

  /** @domName NamedNodeMap.setNamedItemNS */
  Node setNamedItemNS(Node node);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName Navigator
interface Navigator {

  /** @domName Navigator.appCodeName */
  final String appCodeName;

  /** @domName Navigator.appName */
  final String appName;

  /** @domName Navigator.appVersion */
  final String appVersion;

  /** @domName Navigator.cookieEnabled */
  final bool cookieEnabled;

  /** @domName Navigator.geolocation */
  final Geolocation geolocation;

  /** @domName Navigator.language */
  final String language;

  /** @domName Navigator.mimeTypes */
  final DOMMimeTypeArray mimeTypes;

  /** @domName Navigator.onLine */
  final bool onLine;

  /** @domName Navigator.platform */
  final String platform;

  /** @domName Navigator.plugins */
  final DOMPluginArray plugins;

  /** @domName Navigator.product */
  final String product;

  /** @domName Navigator.productSub */
  final String productSub;

  /** @domName Navigator.userAgent */
  final String userAgent;

  /** @domName Navigator.vendor */
  final String vendor;

  /** @domName Navigator.vendorSub */
  final String vendorSub;

  /** @domName Navigator.webkitBattery */
  final BatteryManager webkitBattery;

  /** @domName Navigator.webkitPointer */
  final PointerLock webkitPointer;

  /** @domName Navigator.getStorageUpdates */
  void getStorageUpdates();

  /** @domName Navigator.javaEnabled */
  bool javaEnabled();

  /** @domName Navigator.registerProtocolHandler */
  void registerProtocolHandler(String scheme, String url, String title);

  /** @domName Navigator.webkitGetUserMedia */
  void webkitGetUserMedia(String options, NavigatorUserMediaSuccessCallback successCallback, [NavigatorUserMediaErrorCallback errorCallback]);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName NavigatorUserMediaError
interface NavigatorUserMediaError {

  static final int PERMISSION_DENIED = 1;

  /** @domName NavigatorUserMediaError.code */
  final int code;
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool NavigatorUserMediaErrorCallback(NavigatorUserMediaError error);
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool NavigatorUserMediaSuccessCallback(LocalMediaStream stream);
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName Node
interface Node extends EventTarget {
  NodeList get nodes();

  void set nodes(Collection<Node> value);

  /**
   * Replaces this node with another node.
   * @domName Node.replaceChild
   */
  Node replaceWith(Node otherNode);

  /**
   * Removes this node from the DOM.
   * @domName Node.removeChild
   */
  Node remove();


  static final int ATTRIBUTE_NODE = 2;

  static final int CDATA_SECTION_NODE = 4;

  static final int COMMENT_NODE = 8;

  static final int DOCUMENT_FRAGMENT_NODE = 11;

  static final int DOCUMENT_NODE = 9;

  static final int DOCUMENT_POSITION_CONTAINED_BY = 0x10;

  static final int DOCUMENT_POSITION_CONTAINS = 0x08;

  static final int DOCUMENT_POSITION_DISCONNECTED = 0x01;

  static final int DOCUMENT_POSITION_FOLLOWING = 0x04;

  static final int DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC = 0x20;

  static final int DOCUMENT_POSITION_PRECEDING = 0x02;

  static final int DOCUMENT_TYPE_NODE = 10;

  static final int ELEMENT_NODE = 1;

  static final int ENTITY_NODE = 6;

  static final int ENTITY_REFERENCE_NODE = 5;

  static final int NOTATION_NODE = 12;

  static final int PROCESSING_INSTRUCTION_NODE = 7;

  static final int TEXT_NODE = 3;

  /** @domName Node.attributes */
  final NamedNodeMap $dom_attributes;

  /** @domName Node.childNodes */
  final NodeList $dom_childNodes;

  /** @domName Node.firstChild */
  final Node $dom_firstChild;

  /** @domName Node.lastChild */
  final Node $dom_lastChild;

  /** @domName Node.nextSibling */
  final Node nextNode;

  /** @domName Node.nodeType */
  final int $dom_nodeType;

  /** @domName Node.ownerDocument */
  final Document document;

  /** @domName Node.parentNode */
  final Node parent;

  /** @domName Node.previousSibling */
  final Node previousNode;

  /** @domName Node.textContent */
  String text;

  /** @domName Node.appendChild */
  Node $dom_appendChild(Node newChild);

  /** @domName Node.cloneNode */
  Node clone(bool deep);

  /** @domName Node.contains */
  bool contains(Node other);

  /** @domName Node.hasChildNodes */
  bool hasChildNodes();

  /** @domName Node.insertBefore */
  Node insertBefore(Node newChild, Node refChild);

  /** @domName Node.removeChild */
  Node $dom_removeChild(Node oldChild);

  /** @domName Node.replaceChild */
  Node $dom_replaceChild(Node newChild, Node oldChild);

}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName NodeFilter
interface NodeFilter {

  static final int FILTER_ACCEPT = 1;

  static final int FILTER_REJECT = 2;

  static final int FILTER_SKIP = 3;

  static final int SHOW_ALL = 0xFFFFFFFF;

  static final int SHOW_ATTRIBUTE = 0x00000002;

  static final int SHOW_CDATA_SECTION = 0x00000008;

  static final int SHOW_COMMENT = 0x00000080;

  static final int SHOW_DOCUMENT = 0x00000100;

  static final int SHOW_DOCUMENT_FRAGMENT = 0x00000400;

  static final int SHOW_DOCUMENT_TYPE = 0x00000200;

  static final int SHOW_ELEMENT = 0x00000001;

  static final int SHOW_ENTITY = 0x00000020;

  static final int SHOW_ENTITY_REFERENCE = 0x00000010;

  static final int SHOW_NOTATION = 0x00000800;

  static final int SHOW_PROCESSING_INSTRUCTION = 0x00000040;

  static final int SHOW_TEXT = 0x00000004;

  /** @domName NodeFilter.acceptNode */
  int acceptNode(Node n);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName NodeIterator
interface NodeIterator {

  /** @domName NodeIterator.expandEntityReferences */
  final bool expandEntityReferences;

  /** @domName NodeIterator.filter */
  final NodeFilter filter;

  /** @domName NodeIterator.pointerBeforeReferenceNode */
  final bool pointerBeforeReferenceNode;

  /** @domName NodeIterator.referenceNode */
  final Node referenceNode;

  /** @domName NodeIterator.root */
  final Node root;

  /** @domName NodeIterator.whatToShow */
  final int whatToShow;

  /** @domName NodeIterator.detach */
  void detach();

  /** @domName NodeIterator.nextNode */
  Node nextNode();

  /** @domName NodeIterator.previousNode */
  Node previousNode();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName NodeList
interface NodeList extends List<Node> {

  NodeList filter(bool f(Node element));

  NodeList getRange(int start, int length);

  Node get first();


  /** @domName NodeList.length */
  final int length;

}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName NodeSelector
interface NodeSelector {

  // TODO(nweiz): add this back once DocumentFragment is ported.
  // ElementList queryAll(String selectors);


  /** @domName NodeSelector.querySelector */
  Element query(String selectors);

  /** @domName NodeSelector.querySelectorAll */
  NodeList $dom_querySelectorAll(String selectors);

}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName Notation
interface Notation extends Node {

  /** @domName Notation.publicId */
  final String publicId;

  /** @domName Notation.systemId */
  final String systemId;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName Notification
interface Notification extends EventTarget default _NotificationFactoryProvider {

  Notification(String title, [Map options]);

  /**
   * @domName EventTarget.addEventListener, EventTarget.removeEventListener, EventTarget.dispatchEvent
   */
  NotificationEvents get on();

  /** @domName Notification.dir */
  String dir;

  /** @domName Notification.replaceId */
  String replaceId;

  /** @domName Notification.tag */
  String tag;

  /** @domName Notification.cancel */
  void cancel();

  /** @domName Notification.close */
  void close();

  /** @domName Notification.show */
  void show();
}

interface NotificationEvents extends Events {

  EventListenerList get click();

  EventListenerList get close();

  EventListenerList get display();

  EventListenerList get error();

  EventListenerList get show();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName NotificationCenter
interface NotificationCenter {

  /** @domName NotificationCenter.checkPermission */
  int checkPermission();

  /** @domName NotificationCenter.createHTMLNotification */
  Notification createHTMLNotification(String url);

  /** @domName NotificationCenter.createNotification */
  Notification createNotification(String iconUrl, String title, String body);

  /** @domName NotificationCenter.requestPermission */
  void requestPermission(VoidCallback callback);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName OESStandardDerivatives
interface OESStandardDerivatives {

  static final int FRAGMENT_SHADER_DERIVATIVE_HINT_OES = 0x8B8B;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName OESTextureFloat
interface OESTextureFloat {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName OESVertexArrayObject
interface OESVertexArrayObject {

  static final int VERTEX_ARRAY_BINDING_OES = 0x85B5;

  /** @domName OESVertexArrayObject.bindVertexArrayOES */
  void bindVertexArrayOES(WebGLVertexArrayObjectOES arrayObject);

  /** @domName OESVertexArrayObject.createVertexArrayOES */
  WebGLVertexArrayObjectOES createVertexArrayOES();

  /** @domName OESVertexArrayObject.deleteVertexArrayOES */
  void deleteVertexArrayOES(WebGLVertexArrayObjectOES arrayObject);

  /** @domName OESVertexArrayObject.isVertexArrayOES */
  bool isVertexArrayOES(WebGLVertexArrayObjectOES arrayObject);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLOListElement
interface OListElement extends Element {

  /** @domName HTMLOListElement.compact */
  bool compact;

  /** @domName HTMLOListElement.reversed */
  bool reversed;

  /** @domName HTMLOListElement.start */
  int start;

  /** @domName HTMLOListElement.type */
  String type;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLObjectElement
interface ObjectElement extends Element {

  /** @domName HTMLObjectElement.align */
  String align;

  /** @domName HTMLObjectElement.archive */
  String archive;

  /** @domName HTMLObjectElement.border */
  String border;

  /** @domName HTMLObjectElement.code */
  String code;

  /** @domName HTMLObjectElement.codeBase */
  String codeBase;

  /** @domName HTMLObjectElement.codeType */
  String codeType;

  /** @domName HTMLObjectElement.contentDocument */
  final Document contentDocument;

  /** @domName HTMLObjectElement.data */
  String data;

  /** @domName HTMLObjectElement.declare */
  bool declare;

  /** @domName HTMLObjectElement.form */
  final FormElement form;

  /** @domName HTMLObjectElement.height */
  String height;

  /** @domName HTMLObjectElement.hspace */
  int hspace;

  /** @domName HTMLObjectElement.name */
  String name;

  /** @domName HTMLObjectElement.standby */
  String standby;

  /** @domName HTMLObjectElement.type */
  String type;

  /** @domName HTMLObjectElement.useMap */
  String useMap;

  /** @domName HTMLObjectElement.validationMessage */
  final String validationMessage;

  /** @domName HTMLObjectElement.validity */
  final ValidityState validity;

  /** @domName HTMLObjectElement.vspace */
  int vspace;

  /** @domName HTMLObjectElement.width */
  String width;

  /** @domName HTMLObjectElement.willValidate */
  final bool willValidate;

  /** @domName HTMLObjectElement.checkValidity */
  bool checkValidity();

  /** @domName HTMLObjectElement.setCustomValidity */
  void setCustomValidity(String error);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName OfflineAudioCompletionEvent
interface OfflineAudioCompletionEvent extends Event {

  /** @domName OfflineAudioCompletionEvent.renderedBuffer */
  final AudioBuffer renderedBuffer;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName OperationNotAllowedException
interface OperationNotAllowedException {

  static final int NOT_ALLOWED_ERR = 1;

  /** @domName OperationNotAllowedException.code */
  final int code;

  /** @domName OperationNotAllowedException.message */
  final String message;

  /** @domName OperationNotAllowedException.name */
  final String name;

  /** @domName OperationNotAllowedException.toString */
  String toString();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLOptGroupElement
interface OptGroupElement extends Element {

  /** @domName HTMLOptGroupElement.disabled */
  bool disabled;

  /** @domName HTMLOptGroupElement.label */
  String label;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLOptionElement
interface OptionElement extends Element default _OptionElementFactoryProvider {

  OptionElement([String data, String value, bool defaultSelected, bool selected]);

  /** @domName HTMLOptionElement.defaultSelected */
  bool defaultSelected;

  /** @domName HTMLOptionElement.disabled */
  bool disabled;

  /** @domName HTMLOptionElement.form */
  final FormElement form;

  /** @domName HTMLOptionElement.index */
  final int index;

  /** @domName HTMLOptionElement.label */
  String label;

  /** @domName HTMLOptionElement.selected */
  bool selected;

  /** @domName HTMLOptionElement.value */
  String value;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName Oscillator
interface Oscillator extends AudioSourceNode {

  static final int CUSTOM = 4;

  static final int SAWTOOTH = 2;

  static final int SINE = 0;

  static final int SQUARE = 1;

  static final int TRIANGLE = 3;

  /** @domName Oscillator.detune */
  final AudioParam detune;

  /** @domName Oscillator.frequency */
  final AudioParam frequency;

  /** @domName Oscillator.type */
  int type;

  /** @domName Oscillator.setWaveTable */
  void setWaveTable(WaveTable waveTable);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLOutputElement
interface OutputElement extends Element {

  /** @domName HTMLOutputElement.defaultValue */
  String defaultValue;

  /** @domName HTMLOutputElement.form */
  final FormElement form;

  /** @domName HTMLOutputElement.htmlFor */
  DOMSettableTokenList htmlFor;

  /** @domName HTMLOutputElement.labels */
  final NodeList labels;

  /** @domName HTMLOutputElement.name */
  String name;

  /** @domName HTMLOutputElement.type */
  final String type;

  /** @domName HTMLOutputElement.validationMessage */
  final String validationMessage;

  /** @domName HTMLOutputElement.validity */
  final ValidityState validity;

  /** @domName HTMLOutputElement.value */
  String value;

  /** @domName HTMLOutputElement.willValidate */
  final bool willValidate;

  /** @domName HTMLOutputElement.checkValidity */
  bool checkValidity();

  /** @domName HTMLOutputElement.setCustomValidity */
  void setCustomValidity(String error);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName OverflowEvent
interface OverflowEvent extends Event {

  static final int BOTH = 2;

  static final int HORIZONTAL = 0;

  static final int VERTICAL = 1;

  /** @domName OverflowEvent.horizontalOverflow */
  final bool horizontalOverflow;

  /** @domName OverflowEvent.orient */
  final int orient;

  /** @domName OverflowEvent.verticalOverflow */
  final bool verticalOverflow;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName PageTransitionEvent
interface PageTransitionEvent extends Event {

  /** @domName PageTransitionEvent.persisted */
  final bool persisted;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLParagraphElement
interface ParagraphElement extends Element {

  /** @domName HTMLParagraphElement.align */
  String align;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLParamElement
interface ParamElement extends Element {

  /** @domName HTMLParamElement.name */
  String name;

  /** @domName HTMLParamElement.type */
  String type;

  /** @domName HTMLParamElement.value */
  String value;

  /** @domName HTMLParamElement.valueType */
  String valueType;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName PeerConnection00
interface PeerConnection00 extends EventTarget default _PeerConnection00FactoryProvider {

  PeerConnection00(String serverConfiguration, IceCallback iceCallback);

  /**
   * @domName EventTarget.addEventListener, EventTarget.removeEventListener, EventTarget.dispatchEvent
   */
  PeerConnection00Events get on();

  static final int ACTIVE = 2;

  static final int CLOSED = 3;

  static final int ICE_CHECKING = 0x300;

  static final int ICE_CLOSED = 0x700;

  static final int ICE_COMPLETED = 0x500;

  static final int ICE_CONNECTED = 0x400;

  static final int ICE_FAILED = 0x600;

  static final int ICE_GATHERING = 0x100;

  static final int ICE_WAITING = 0x200;

  static final int NEGOTIATING = 1;

  static final int NEW = 0;

  static final int SDP_ANSWER = 0x300;

  static final int SDP_OFFER = 0x100;

  static final int SDP_PRANSWER = 0x200;

  /** @domName PeerConnection00.iceState */
  final int iceState;

  /** @domName PeerConnection00.localDescription */
  final SessionDescription localDescription;

  /** @domName PeerConnection00.localStreams */
  final MediaStreamList localStreams;

  /** @domName PeerConnection00.readyState */
  final int readyState;

  /** @domName PeerConnection00.remoteDescription */
  final SessionDescription remoteDescription;

  /** @domName PeerConnection00.remoteStreams */
  final MediaStreamList remoteStreams;

  /** @domName PeerConnection00.addEventListener */
  void $dom_addEventListener(String type, EventListener listener, [bool useCapture]);

  /** @domName PeerConnection00.addStream */
  void addStream(MediaStream stream, [String mediaStreamHints]);

  /** @domName PeerConnection00.close */
  void close();

  /** @domName PeerConnection00.createAnswer */
  SessionDescription createAnswer(String offer, [String mediaHints]);

  /** @domName PeerConnection00.createOffer */
  SessionDescription createOffer([String mediaHints]);

  /** @domName PeerConnection00.dispatchEvent */
  bool $dom_dispatchEvent(Event event);

  /** @domName PeerConnection00.processIceMessage */
  void processIceMessage(IceCandidate candidate);

  /** @domName PeerConnection00.removeEventListener */
  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture]);

  /** @domName PeerConnection00.removeStream */
  void removeStream(MediaStream stream);

  /** @domName PeerConnection00.setLocalDescription */
  void setLocalDescription(int action, SessionDescription desc);

  /** @domName PeerConnection00.setRemoteDescription */
  void setRemoteDescription(int action, SessionDescription desc);

  /** @domName PeerConnection00.startIce */
  void startIce([String iceOptions]);
}

interface PeerConnection00Events extends Events {

  EventListenerList get addStream();

  EventListenerList get connecting();

  EventListenerList get open();

  EventListenerList get removeStream();

  EventListenerList get stateChange();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName Performance
interface Performance {

  /** @domName Performance.memory */
  final MemoryInfo memory;

  /** @domName Performance.navigation */
  final PerformanceNavigation navigation;

  /** @domName Performance.timing */
  final PerformanceTiming timing;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName PerformanceNavigation
interface PerformanceNavigation {

  static final int TYPE_BACK_FORWARD = 2;

  static final int TYPE_NAVIGATE = 0;

  static final int TYPE_RELOAD = 1;

  static final int TYPE_RESERVED = 255;

  /** @domName PerformanceNavigation.redirectCount */
  final int redirectCount;

  /** @domName PerformanceNavigation.type */
  final int type;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName PerformanceTiming
interface PerformanceTiming {

  /** @domName PerformanceTiming.connectEnd */
  final int connectEnd;

  /** @domName PerformanceTiming.connectStart */
  final int connectStart;

  /** @domName PerformanceTiming.domComplete */
  final int domComplete;

  /** @domName PerformanceTiming.domContentLoadedEventEnd */
  final int domContentLoadedEventEnd;

  /** @domName PerformanceTiming.domContentLoadedEventStart */
  final int domContentLoadedEventStart;

  /** @domName PerformanceTiming.domInteractive */
  final int domInteractive;

  /** @domName PerformanceTiming.domLoading */
  final int domLoading;

  /** @domName PerformanceTiming.domainLookupEnd */
  final int domainLookupEnd;

  /** @domName PerformanceTiming.domainLookupStart */
  final int domainLookupStart;

  /** @domName PerformanceTiming.fetchStart */
  final int fetchStart;

  /** @domName PerformanceTiming.loadEventEnd */
  final int loadEventEnd;

  /** @domName PerformanceTiming.loadEventStart */
  final int loadEventStart;

  /** @domName PerformanceTiming.navigationStart */
  final int navigationStart;

  /** @domName PerformanceTiming.redirectEnd */
  final int redirectEnd;

  /** @domName PerformanceTiming.redirectStart */
  final int redirectStart;

  /** @domName PerformanceTiming.requestStart */
  final int requestStart;

  /** @domName PerformanceTiming.responseEnd */
  final int responseEnd;

  /** @domName PerformanceTiming.responseStart */
  final int responseStart;

  /** @domName PerformanceTiming.secureConnectionStart */
  final int secureConnectionStart;

  /** @domName PerformanceTiming.unloadEventEnd */
  final int unloadEventEnd;

  /** @domName PerformanceTiming.unloadEventStart */
  final int unloadEventStart;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName WebKitPoint
interface Point default _PointFactoryProvider {

  Point(num x, num y);

  /** @domName WebKitPoint.x */
  num x;

  /** @domName WebKitPoint.y */
  num y;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName PointerLock
interface PointerLock {

  /** @domName PointerLock.isLocked */
  final bool isLocked;

  /** @domName PointerLock.lock */
  void lock(Element target, [VoidCallback successCallback, VoidCallback failureCallback]);

  /** @domName PointerLock.unlock */
  void unlock();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName PopStateEvent
interface PopStateEvent extends Event {

  /** @domName PopStateEvent.state */
  final Object state;
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool PositionCallback(Geoposition position);
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName PositionError
interface PositionError {

  static final int PERMISSION_DENIED = 1;

  static final int POSITION_UNAVAILABLE = 2;

  static final int TIMEOUT = 3;

  /** @domName PositionError.code */
  final int code;

  /** @domName PositionError.message */
  final String message;
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool PositionErrorCallback(PositionError error);
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLPreElement
interface PreElement extends Element {

  /** @domName HTMLPreElement.width */
  int width;

  /** @domName HTMLPreElement.wrap */
  bool wrap;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName ProcessingInstruction
interface ProcessingInstruction extends Node {

  /** @domName ProcessingInstruction.data */
  String data;

  /** @domName ProcessingInstruction.sheet */
  final StyleSheet sheet;

  /** @domName ProcessingInstruction.target */
  final String target;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLProgressElement
interface ProgressElement extends Element {

  /** @domName HTMLProgressElement.labels */
  final NodeList labels;

  /** @domName HTMLProgressElement.max */
  num max;

  /** @domName HTMLProgressElement.position */
  final num position;

  /** @domName HTMLProgressElement.value */
  num value;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName ProgressEvent
interface ProgressEvent extends Event {

  /** @domName ProgressEvent.lengthComputable */
  final bool lengthComputable;

  /** @domName ProgressEvent.loaded */
  final int loaded;

  /** @domName ProgressEvent.total */
  final int total;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLQuoteElement
interface QuoteElement extends Element {

  /** @domName HTMLQuoteElement.cite */
  String cite;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName RGBColor
interface RGBColor {

  /** @domName RGBColor.blue */
  final CSSPrimitiveValue blue;

  /** @domName RGBColor.green */
  final CSSPrimitiveValue green;

  /** @domName RGBColor.red */
  final CSSPrimitiveValue red;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName Range
interface Range {

  static final int END_TO_END = 2;

  static final int END_TO_START = 3;

  static final int NODE_AFTER = 1;

  static final int NODE_BEFORE = 0;

  static final int NODE_BEFORE_AND_AFTER = 2;

  static final int NODE_INSIDE = 3;

  static final int START_TO_END = 1;

  static final int START_TO_START = 0;

  /** @domName Range.collapsed */
  final bool collapsed;

  /** @domName Range.commonAncestorContainer */
  final Node commonAncestorContainer;

  /** @domName Range.endContainer */
  final Node endContainer;

  /** @domName Range.endOffset */
  final int endOffset;

  /** @domName Range.startContainer */
  final Node startContainer;

  /** @domName Range.startOffset */
  final int startOffset;

  /** @domName Range.cloneContents */
  DocumentFragment cloneContents();

  /** @domName Range.cloneRange */
  Range cloneRange();

  /** @domName Range.collapse */
  void collapse(bool toStart);

  /** @domName Range.compareNode */
  int compareNode(Node refNode);

  /** @domName Range.comparePoint */
  int comparePoint(Node refNode, int offset);

  /** @domName Range.createContextualFragment */
  DocumentFragment createContextualFragment(String html);

  /** @domName Range.deleteContents */
  void deleteContents();

  /** @domName Range.detach */
  void detach();

  /** @domName Range.expand */
  void expand(String unit);

  /** @domName Range.extractContents */
  DocumentFragment extractContents();

  /** @domName Range.getBoundingClientRect */
  ClientRect getBoundingClientRect();

  /** @domName Range.getClientRects */
  ClientRectList getClientRects();

  /** @domName Range.insertNode */
  void insertNode(Node newNode);

  /** @domName Range.intersectsNode */
  bool intersectsNode(Node refNode);

  /** @domName Range.isPointInRange */
  bool isPointInRange(Node refNode, int offset);

  /** @domName Range.selectNode */
  void selectNode(Node refNode);

  /** @domName Range.selectNodeContents */
  void selectNodeContents(Node refNode);

  /** @domName Range.setEnd */
  void setEnd(Node refNode, int offset);

  /** @domName Range.setEndAfter */
  void setEndAfter(Node refNode);

  /** @domName Range.setEndBefore */
  void setEndBefore(Node refNode);

  /** @domName Range.setStart */
  void setStart(Node refNode, int offset);

  /** @domName Range.setStartAfter */
  void setStartAfter(Node refNode);

  /** @domName Range.setStartBefore */
  void setStartBefore(Node refNode);

  /** @domName Range.surroundContents */
  void surroundContents(Node newParent);

  /** @domName Range.toString */
  String toString();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName RangeException
interface RangeException {

  static final int BAD_BOUNDARYPOINTS_ERR = 1;

  static final int INVALID_NODE_TYPE_ERR = 2;

  /** @domName RangeException.code */
  final int code;

  /** @domName RangeException.message */
  final String message;

  /** @domName RangeException.name */
  final String name;

  /** @domName RangeException.toString */
  String toString();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName RealtimeAnalyserNode
interface RealtimeAnalyserNode extends AudioNode {

  /** @domName RealtimeAnalyserNode.fftSize */
  int fftSize;

  /** @domName RealtimeAnalyserNode.frequencyBinCount */
  final int frequencyBinCount;

  /** @domName RealtimeAnalyserNode.maxDecibels */
  num maxDecibels;

  /** @domName RealtimeAnalyserNode.minDecibels */
  num minDecibels;

  /** @domName RealtimeAnalyserNode.smoothingTimeConstant */
  num smoothingTimeConstant;

  /** @domName RealtimeAnalyserNode.getByteFrequencyData */
  void getByteFrequencyData(Uint8Array array);

  /** @domName RealtimeAnalyserNode.getByteTimeDomainData */
  void getByteTimeDomainData(Uint8Array array);

  /** @domName RealtimeAnalyserNode.getFloatFrequencyData */
  void getFloatFrequencyData(Float32Array array);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName Rect
interface Rect {

  /** @domName Rect.bottom */
  final CSSPrimitiveValue bottom;

  /** @domName Rect.left */
  final CSSPrimitiveValue left;

  /** @domName Rect.right */
  final CSSPrimitiveValue right;

  /** @domName Rect.top */
  final CSSPrimitiveValue top;
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool RequestAnimationFrameCallback(int time);
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SQLError
interface SQLError {

  static final int CONSTRAINT_ERR = 6;

  static final int DATABASE_ERR = 1;

  static final int QUOTA_ERR = 4;

  static final int SYNTAX_ERR = 5;

  static final int TIMEOUT_ERR = 7;

  static final int TOO_LARGE_ERR = 3;

  static final int UNKNOWN_ERR = 0;

  static final int VERSION_ERR = 2;

  /** @domName SQLError.code */
  final int code;

  /** @domName SQLError.message */
  final String message;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SQLException
interface SQLException {

  static final int CONSTRAINT_ERR = 6;

  static final int DATABASE_ERR = 1;

  static final int QUOTA_ERR = 4;

  static final int SYNTAX_ERR = 5;

  static final int TIMEOUT_ERR = 7;

  static final int TOO_LARGE_ERR = 3;

  static final int UNKNOWN_ERR = 0;

  static final int VERSION_ERR = 2;

  /** @domName SQLException.code */
  final int code;

  /** @domName SQLException.message */
  final String message;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SQLResultSet
interface SQLResultSet {

  /** @domName SQLResultSet.insertId */
  final int insertId;

  /** @domName SQLResultSet.rows */
  final SQLResultSetRowList rows;

  /** @domName SQLResultSet.rowsAffected */
  final int rowsAffected;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SQLResultSetRowList
interface SQLResultSetRowList {

  /** @domName SQLResultSetRowList.length */
  final int length;

  /** @domName SQLResultSetRowList.item */
  Object item(int index);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool SQLStatementCallback(SQLTransaction transaction, SQLResultSet resultSet);
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool SQLStatementErrorCallback(SQLTransaction transaction, SQLError error);
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SQLTransaction
interface SQLTransaction {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool SQLTransactionCallback(SQLTransaction transaction);
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool SQLTransactionErrorCallback(SQLError error);
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SQLTransactionSync
interface SQLTransactionSync {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool SQLTransactionSyncCallback(SQLTransactionSync transaction);
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGAElement
interface SVGAElement extends SVGElement, SVGURIReference, SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable, SVGTransformable {

  /** @domName SVGAElement.target */
  final SVGAnimatedString target;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGAltGlyphDefElement
interface SVGAltGlyphDefElement extends SVGElement {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGAltGlyphElement
interface SVGAltGlyphElement extends SVGTextPositioningElement, SVGURIReference {

  /** @domName SVGAltGlyphElement.format */
  String format;

  /** @domName SVGAltGlyphElement.glyphRef */
  String glyphRef;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGAltGlyphItemElement
interface SVGAltGlyphItemElement extends SVGElement {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGAngle
interface SVGAngle {

  static final int SVG_ANGLETYPE_DEG = 2;

  static final int SVG_ANGLETYPE_GRAD = 4;

  static final int SVG_ANGLETYPE_RAD = 3;

  static final int SVG_ANGLETYPE_UNKNOWN = 0;

  static final int SVG_ANGLETYPE_UNSPECIFIED = 1;

  /** @domName SVGAngle.unitType */
  final int unitType;

  /** @domName SVGAngle.value */
  num value;

  /** @domName SVGAngle.valueAsString */
  String valueAsString;

  /** @domName SVGAngle.valueInSpecifiedUnits */
  num valueInSpecifiedUnits;

  /** @domName SVGAngle.convertToSpecifiedUnits */
  void convertToSpecifiedUnits(int unitType);

  /** @domName SVGAngle.newValueSpecifiedUnits */
  void newValueSpecifiedUnits(int unitType, num valueInSpecifiedUnits);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGAnimateColorElement
interface SVGAnimateColorElement extends SVGAnimationElement {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGAnimateElement
interface SVGAnimateElement extends SVGAnimationElement {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGAnimateMotionElement
interface SVGAnimateMotionElement extends SVGAnimationElement {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGAnimateTransformElement
interface SVGAnimateTransformElement extends SVGAnimationElement {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGAnimatedAngle
interface SVGAnimatedAngle {

  /** @domName SVGAnimatedAngle.animVal */
  final SVGAngle animVal;

  /** @domName SVGAnimatedAngle.baseVal */
  final SVGAngle baseVal;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGAnimatedBoolean
interface SVGAnimatedBoolean {

  /** @domName SVGAnimatedBoolean.animVal */
  final bool animVal;

  /** @domName SVGAnimatedBoolean.baseVal */
  bool baseVal;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGAnimatedEnumeration
interface SVGAnimatedEnumeration {

  /** @domName SVGAnimatedEnumeration.animVal */
  final int animVal;

  /** @domName SVGAnimatedEnumeration.baseVal */
  int baseVal;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGAnimatedInteger
interface SVGAnimatedInteger {

  /** @domName SVGAnimatedInteger.animVal */
  final int animVal;

  /** @domName SVGAnimatedInteger.baseVal */
  int baseVal;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGAnimatedLength
interface SVGAnimatedLength {

  /** @domName SVGAnimatedLength.animVal */
  final SVGLength animVal;

  /** @domName SVGAnimatedLength.baseVal */
  final SVGLength baseVal;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGAnimatedLengthList
interface SVGAnimatedLengthList {

  /** @domName SVGAnimatedLengthList.animVal */
  final SVGLengthList animVal;

  /** @domName SVGAnimatedLengthList.baseVal */
  final SVGLengthList baseVal;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGAnimatedNumber
interface SVGAnimatedNumber {

  /** @domName SVGAnimatedNumber.animVal */
  final num animVal;

  /** @domName SVGAnimatedNumber.baseVal */
  num baseVal;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGAnimatedNumberList
interface SVGAnimatedNumberList {

  /** @domName SVGAnimatedNumberList.animVal */
  final SVGNumberList animVal;

  /** @domName SVGAnimatedNumberList.baseVal */
  final SVGNumberList baseVal;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGAnimatedPreserveAspectRatio
interface SVGAnimatedPreserveAspectRatio {

  /** @domName SVGAnimatedPreserveAspectRatio.animVal */
  final SVGPreserveAspectRatio animVal;

  /** @domName SVGAnimatedPreserveAspectRatio.baseVal */
  final SVGPreserveAspectRatio baseVal;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGAnimatedRect
interface SVGAnimatedRect {

  /** @domName SVGAnimatedRect.animVal */
  final SVGRect animVal;

  /** @domName SVGAnimatedRect.baseVal */
  final SVGRect baseVal;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGAnimatedString
interface SVGAnimatedString {

  /** @domName SVGAnimatedString.animVal */
  final String animVal;

  /** @domName SVGAnimatedString.baseVal */
  String baseVal;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGAnimatedTransformList
interface SVGAnimatedTransformList {

  /** @domName SVGAnimatedTransformList.animVal */
  final SVGTransformList animVal;

  /** @domName SVGAnimatedTransformList.baseVal */
  final SVGTransformList baseVal;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGAnimationElement
interface SVGAnimationElement extends SVGElement, SVGTests, SVGExternalResourcesRequired, ElementTimeControl {

  /** @domName SVGAnimationElement.targetElement */
  final SVGElement targetElement;

  /** @domName SVGAnimationElement.getCurrentTime */
  num getCurrentTime();

  /** @domName SVGAnimationElement.getSimpleDuration */
  num getSimpleDuration();

  /** @domName SVGAnimationElement.getStartTime */
  num getStartTime();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGCircleElement
interface SVGCircleElement extends SVGElement, SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable, SVGTransformable {

  /** @domName SVGCircleElement.cx */
  final SVGAnimatedLength cx;

  /** @domName SVGCircleElement.cy */
  final SVGAnimatedLength cy;

  /** @domName SVGCircleElement.r */
  final SVGAnimatedLength r;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGClipPathElement
interface SVGClipPathElement extends SVGElement, SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable, SVGTransformable {

  /** @domName SVGClipPathElement.clipPathUnits */
  final SVGAnimatedEnumeration clipPathUnits;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGColor
interface SVGColor extends CSSValue {

  static final int SVG_COLORTYPE_CURRENTCOLOR = 3;

  static final int SVG_COLORTYPE_RGBCOLOR = 1;

  static final int SVG_COLORTYPE_RGBCOLOR_ICCCOLOR = 2;

  static final int SVG_COLORTYPE_UNKNOWN = 0;

  /** @domName SVGColor.colorType */
  final int colorType;

  /** @domName SVGColor.rgbColor */
  final RGBColor rgbColor;

  /** @domName SVGColor.setColor */
  void setColor(int colorType, String rgbColor, String iccColor);

  /** @domName SVGColor.setRGBColor */
  void setRGBColor(String rgbColor);

  /** @domName SVGColor.setRGBColorICCColor */
  void setRGBColorICCColor(String rgbColor, String iccColor);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGComponentTransferFunctionElement
interface SVGComponentTransferFunctionElement extends SVGElement {

  static final int SVG_FECOMPONENTTRANSFER_TYPE_DISCRETE = 3;

  static final int SVG_FECOMPONENTTRANSFER_TYPE_GAMMA = 5;

  static final int SVG_FECOMPONENTTRANSFER_TYPE_IDENTITY = 1;

  static final int SVG_FECOMPONENTTRANSFER_TYPE_LINEAR = 4;

  static final int SVG_FECOMPONENTTRANSFER_TYPE_TABLE = 2;

  static final int SVG_FECOMPONENTTRANSFER_TYPE_UNKNOWN = 0;

  /** @domName SVGComponentTransferFunctionElement.amplitude */
  final SVGAnimatedNumber amplitude;

  /** @domName SVGComponentTransferFunctionElement.exponent */
  final SVGAnimatedNumber exponent;

  /** @domName SVGComponentTransferFunctionElement.intercept */
  final SVGAnimatedNumber intercept;

  /** @domName SVGComponentTransferFunctionElement.offset */
  final SVGAnimatedNumber offset;

  /** @domName SVGComponentTransferFunctionElement.slope */
  final SVGAnimatedNumber slope;

  /** @domName SVGComponentTransferFunctionElement.tableValues */
  final SVGAnimatedNumberList tableValues;

  /** @domName SVGComponentTransferFunctionElement.type */
  final SVGAnimatedEnumeration type;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGCursorElement
interface SVGCursorElement extends SVGElement, SVGURIReference, SVGTests, SVGExternalResourcesRequired {

  /** @domName SVGCursorElement.x */
  final SVGAnimatedLength x;

  /** @domName SVGCursorElement.y */
  final SVGAnimatedLength y;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGDefsElement
interface SVGDefsElement extends SVGElement, SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable, SVGTransformable {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGDescElement
interface SVGDescElement extends SVGElement, SVGLangSpace, SVGStylable {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGDocument
interface SVGDocument extends Document {

  /** @domName SVGDocument.rootElement */
  final SVGSVGElement rootElement;

  /** @domName SVGDocument.createEvent */
  Event $dom_createEvent(String eventType);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// @domName SVGElement
interface SVGElement extends Element default _SVGElementFactoryProvider {

  SVGElement.tag(String tag);
  SVGElement.svg(String svg);

  SVGElement clone(bool deep);


  /** @domName SVGElement.id */
  String id;

  /** @domName SVGElement.ownerSVGElement */
  final SVGSVGElement ownerSVGElement;

  /** @domName SVGElement.viewportElement */
  final SVGElement viewportElement;

  /** @domName SVGElement.xmlbase */
  String xmlbase;

}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGElementInstance
interface SVGElementInstance {

  /**
   * @domName EventTarget.addEventListener, EventTarget.removeEventListener, EventTarget.dispatchEvent
   */
  SVGElementInstanceEvents get on();

  /** @domName SVGElementInstance.childNodes */
  final SVGElementInstanceList childNodes;

  /** @domName SVGElementInstance.correspondingElement */
  final SVGElement correspondingElement;

  /** @domName SVGElementInstance.correspondingUseElement */
  final SVGUseElement correspondingUseElement;

  /** @domName SVGElementInstance.firstChild */
  final SVGElementInstance firstChild;

  /** @domName SVGElementInstance.lastChild */
  final SVGElementInstance lastChild;

  /** @domName SVGElementInstance.nextSibling */
  final SVGElementInstance nextSibling;

  /** @domName SVGElementInstance.parentNode */
  final SVGElementInstance parentNode;

  /** @domName SVGElementInstance.previousSibling */
  final SVGElementInstance previousSibling;

  /** @domName SVGElementInstance.addEventListener */
  void addEventListener(String type, EventListener listener, [bool useCapture]);

  /** @domName SVGElementInstance.dispatchEvent */
  bool dispatchEvent(Event event);

  /** @domName SVGElementInstance.removeEventListener */
  void removeEventListener(String type, EventListener listener, [bool useCapture]);
}

interface SVGElementInstanceEvents extends Events {

  EventListenerList get abort();

  EventListenerList get beforeCopy();

  EventListenerList get beforeCut();

  EventListenerList get beforePaste();

  EventListenerList get blur();

  EventListenerList get change();

  EventListenerList get click();

  EventListenerList get contextMenu();

  EventListenerList get copy();

  EventListenerList get cut();

  EventListenerList get doubleClick();

  EventListenerList get drag();

  EventListenerList get dragEnd();

  EventListenerList get dragEnter();

  EventListenerList get dragLeave();

  EventListenerList get dragOver();

  EventListenerList get dragStart();

  EventListenerList get drop();

  EventListenerList get error();

  EventListenerList get focus();

  EventListenerList get input();

  EventListenerList get keyDown();

  EventListenerList get keyPress();

  EventListenerList get keyUp();

  EventListenerList get load();

  EventListenerList get mouseDown();

  EventListenerList get mouseMove();

  EventListenerList get mouseOut();

  EventListenerList get mouseOver();

  EventListenerList get mouseUp();

  EventListenerList get mouseWheel();

  EventListenerList get paste();

  EventListenerList get reset();

  EventListenerList get resize();

  EventListenerList get scroll();

  EventListenerList get search();

  EventListenerList get select();

  EventListenerList get selectStart();

  EventListenerList get submit();

  EventListenerList get unload();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGElementInstanceList
interface SVGElementInstanceList {

  /** @domName SVGElementInstanceList.length */
  final int length;

  /** @domName SVGElementInstanceList.item */
  SVGElementInstance item(int index);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGEllipseElement
interface SVGEllipseElement extends SVGElement, SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable, SVGTransformable {

  /** @domName SVGEllipseElement.cx */
  final SVGAnimatedLength cx;

  /** @domName SVGEllipseElement.cy */
  final SVGAnimatedLength cy;

  /** @domName SVGEllipseElement.rx */
  final SVGAnimatedLength rx;

  /** @domName SVGEllipseElement.ry */
  final SVGAnimatedLength ry;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGException
interface SVGException {

  static final int SVG_INVALID_VALUE_ERR = 1;

  static final int SVG_MATRIX_NOT_INVERTABLE = 2;

  static final int SVG_WRONG_TYPE_ERR = 0;

  /** @domName SVGException.code */
  final int code;

  /** @domName SVGException.message */
  final String message;

  /** @domName SVGException.name */
  final String name;

  /** @domName SVGException.toString */
  String toString();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGExternalResourcesRequired
interface SVGExternalResourcesRequired {

  /** @domName SVGExternalResourcesRequired.externalResourcesRequired */
  final SVGAnimatedBoolean externalResourcesRequired;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGFEBlendElement
interface SVGFEBlendElement extends SVGElement, SVGFilterPrimitiveStandardAttributes {

  static final int SVG_FEBLEND_MODE_DARKEN = 4;

  static final int SVG_FEBLEND_MODE_LIGHTEN = 5;

  static final int SVG_FEBLEND_MODE_MULTIPLY = 2;

  static final int SVG_FEBLEND_MODE_NORMAL = 1;

  static final int SVG_FEBLEND_MODE_SCREEN = 3;

  static final int SVG_FEBLEND_MODE_UNKNOWN = 0;

  /** @domName SVGFEBlendElement.in1 */
  final SVGAnimatedString in1;

  /** @domName SVGFEBlendElement.in2 */
  final SVGAnimatedString in2;

  /** @domName SVGFEBlendElement.mode */
  final SVGAnimatedEnumeration mode;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGFEColorMatrixElement
interface SVGFEColorMatrixElement extends SVGElement, SVGFilterPrimitiveStandardAttributes {

  static final int SVG_FECOLORMATRIX_TYPE_HUEROTATE = 3;

  static final int SVG_FECOLORMATRIX_TYPE_LUMINANCETOALPHA = 4;

  static final int SVG_FECOLORMATRIX_TYPE_MATRIX = 1;

  static final int SVG_FECOLORMATRIX_TYPE_SATURATE = 2;

  static final int SVG_FECOLORMATRIX_TYPE_UNKNOWN = 0;

  /** @domName SVGFEColorMatrixElement.in1 */
  final SVGAnimatedString in1;

  /** @domName SVGFEColorMatrixElement.type */
  final SVGAnimatedEnumeration type;

  /** @domName SVGFEColorMatrixElement.values */
  final SVGAnimatedNumberList values;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGFEComponentTransferElement
interface SVGFEComponentTransferElement extends SVGElement, SVGFilterPrimitiveStandardAttributes {

  /** @domName SVGFEComponentTransferElement.in1 */
  final SVGAnimatedString in1;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGFECompositeElement
interface SVGFECompositeElement extends SVGElement, SVGFilterPrimitiveStandardAttributes {

  static final int SVG_FECOMPOSITE_OPERATOR_ARITHMETIC = 6;

  static final int SVG_FECOMPOSITE_OPERATOR_ATOP = 4;

  static final int SVG_FECOMPOSITE_OPERATOR_IN = 2;

  static final int SVG_FECOMPOSITE_OPERATOR_OUT = 3;

  static final int SVG_FECOMPOSITE_OPERATOR_OVER = 1;

  static final int SVG_FECOMPOSITE_OPERATOR_UNKNOWN = 0;

  static final int SVG_FECOMPOSITE_OPERATOR_XOR = 5;

  /** @domName SVGFECompositeElement.in1 */
  final SVGAnimatedString in1;

  /** @domName SVGFECompositeElement.in2 */
  final SVGAnimatedString in2;

  /** @domName SVGFECompositeElement.k1 */
  final SVGAnimatedNumber k1;

  /** @domName SVGFECompositeElement.k2 */
  final SVGAnimatedNumber k2;

  /** @domName SVGFECompositeElement.k3 */
  final SVGAnimatedNumber k3;

  /** @domName SVGFECompositeElement.k4 */
  final SVGAnimatedNumber k4;

  /** @domName SVGFECompositeElement.operator */
  final SVGAnimatedEnumeration operator;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGFEConvolveMatrixElement
interface SVGFEConvolveMatrixElement extends SVGElement, SVGFilterPrimitiveStandardAttributes {

  static final int SVG_EDGEMODE_DUPLICATE = 1;

  static final int SVG_EDGEMODE_NONE = 3;

  static final int SVG_EDGEMODE_UNKNOWN = 0;

  static final int SVG_EDGEMODE_WRAP = 2;

  /** @domName SVGFEConvolveMatrixElement.bias */
  final SVGAnimatedNumber bias;

  /** @domName SVGFEConvolveMatrixElement.divisor */
  final SVGAnimatedNumber divisor;

  /** @domName SVGFEConvolveMatrixElement.edgeMode */
  final SVGAnimatedEnumeration edgeMode;

  /** @domName SVGFEConvolveMatrixElement.in1 */
  final SVGAnimatedString in1;

  /** @domName SVGFEConvolveMatrixElement.kernelMatrix */
  final SVGAnimatedNumberList kernelMatrix;

  /** @domName SVGFEConvolveMatrixElement.kernelUnitLengthX */
  final SVGAnimatedNumber kernelUnitLengthX;

  /** @domName SVGFEConvolveMatrixElement.kernelUnitLengthY */
  final SVGAnimatedNumber kernelUnitLengthY;

  /** @domName SVGFEConvolveMatrixElement.orderX */
  final SVGAnimatedInteger orderX;

  /** @domName SVGFEConvolveMatrixElement.orderY */
  final SVGAnimatedInteger orderY;

  /** @domName SVGFEConvolveMatrixElement.preserveAlpha */
  final SVGAnimatedBoolean preserveAlpha;

  /** @domName SVGFEConvolveMatrixElement.targetX */
  final SVGAnimatedInteger targetX;

  /** @domName SVGFEConvolveMatrixElement.targetY */
  final SVGAnimatedInteger targetY;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGFEDiffuseLightingElement
interface SVGFEDiffuseLightingElement extends SVGElement, SVGFilterPrimitiveStandardAttributes {

  /** @domName SVGFEDiffuseLightingElement.diffuseConstant */
  final SVGAnimatedNumber diffuseConstant;

  /** @domName SVGFEDiffuseLightingElement.in1 */
  final SVGAnimatedString in1;

  /** @domName SVGFEDiffuseLightingElement.kernelUnitLengthX */
  final SVGAnimatedNumber kernelUnitLengthX;

  /** @domName SVGFEDiffuseLightingElement.kernelUnitLengthY */
  final SVGAnimatedNumber kernelUnitLengthY;

  /** @domName SVGFEDiffuseLightingElement.surfaceScale */
  final SVGAnimatedNumber surfaceScale;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGFEDisplacementMapElement
interface SVGFEDisplacementMapElement extends SVGElement, SVGFilterPrimitiveStandardAttributes {

  static final int SVG_CHANNEL_A = 4;

  static final int SVG_CHANNEL_B = 3;

  static final int SVG_CHANNEL_G = 2;

  static final int SVG_CHANNEL_R = 1;

  static final int SVG_CHANNEL_UNKNOWN = 0;

  /** @domName SVGFEDisplacementMapElement.in1 */
  final SVGAnimatedString in1;

  /** @domName SVGFEDisplacementMapElement.in2 */
  final SVGAnimatedString in2;

  /** @domName SVGFEDisplacementMapElement.scale */
  final SVGAnimatedNumber scale;

  /** @domName SVGFEDisplacementMapElement.xChannelSelector */
  final SVGAnimatedEnumeration xChannelSelector;

  /** @domName SVGFEDisplacementMapElement.yChannelSelector */
  final SVGAnimatedEnumeration yChannelSelector;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGFEDistantLightElement
interface SVGFEDistantLightElement extends SVGElement {

  /** @domName SVGFEDistantLightElement.azimuth */
  final SVGAnimatedNumber azimuth;

  /** @domName SVGFEDistantLightElement.elevation */
  final SVGAnimatedNumber elevation;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGFEDropShadowElement
interface SVGFEDropShadowElement extends SVGElement, SVGFilterPrimitiveStandardAttributes {

  /** @domName SVGFEDropShadowElement.dx */
  final SVGAnimatedNumber dx;

  /** @domName SVGFEDropShadowElement.dy */
  final SVGAnimatedNumber dy;

  /** @domName SVGFEDropShadowElement.in1 */
  final SVGAnimatedString in1;

  /** @domName SVGFEDropShadowElement.stdDeviationX */
  final SVGAnimatedNumber stdDeviationX;

  /** @domName SVGFEDropShadowElement.stdDeviationY */
  final SVGAnimatedNumber stdDeviationY;

  /** @domName SVGFEDropShadowElement.setStdDeviation */
  void setStdDeviation(num stdDeviationX, num stdDeviationY);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGFEFloodElement
interface SVGFEFloodElement extends SVGElement, SVGFilterPrimitiveStandardAttributes {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGFEFuncAElement
interface SVGFEFuncAElement extends SVGComponentTransferFunctionElement {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGFEFuncBElement
interface SVGFEFuncBElement extends SVGComponentTransferFunctionElement {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGFEFuncGElement
interface SVGFEFuncGElement extends SVGComponentTransferFunctionElement {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGFEFuncRElement
interface SVGFEFuncRElement extends SVGComponentTransferFunctionElement {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGFEGaussianBlurElement
interface SVGFEGaussianBlurElement extends SVGElement, SVGFilterPrimitiveStandardAttributes {

  /** @domName SVGFEGaussianBlurElement.in1 */
  final SVGAnimatedString in1;

  /** @domName SVGFEGaussianBlurElement.stdDeviationX */
  final SVGAnimatedNumber stdDeviationX;

  /** @domName SVGFEGaussianBlurElement.stdDeviationY */
  final SVGAnimatedNumber stdDeviationY;

  /** @domName SVGFEGaussianBlurElement.setStdDeviation */
  void setStdDeviation(num stdDeviationX, num stdDeviationY);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGFEImageElement
interface SVGFEImageElement extends SVGElement, SVGURIReference, SVGLangSpace, SVGExternalResourcesRequired, SVGFilterPrimitiveStandardAttributes {

  /** @domName SVGFEImageElement.preserveAspectRatio */
  final SVGAnimatedPreserveAspectRatio preserveAspectRatio;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGFEMergeElement
interface SVGFEMergeElement extends SVGElement, SVGFilterPrimitiveStandardAttributes {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGFEMergeNodeElement
interface SVGFEMergeNodeElement extends SVGElement {

  /** @domName SVGFEMergeNodeElement.in1 */
  final SVGAnimatedString in1;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGFEMorphologyElement
interface SVGFEMorphologyElement extends SVGElement, SVGFilterPrimitiveStandardAttributes {

  static final int SVG_MORPHOLOGY_OPERATOR_DILATE = 2;

  static final int SVG_MORPHOLOGY_OPERATOR_ERODE = 1;

  static final int SVG_MORPHOLOGY_OPERATOR_UNKNOWN = 0;

  /** @domName SVGFEMorphologyElement.in1 */
  final SVGAnimatedString in1;

  /** @domName SVGFEMorphologyElement.operator */
  final SVGAnimatedEnumeration operator;

  /** @domName SVGFEMorphologyElement.radiusX */
  final SVGAnimatedNumber radiusX;

  /** @domName SVGFEMorphologyElement.radiusY */
  final SVGAnimatedNumber radiusY;

  /** @domName SVGFEMorphologyElement.setRadius */
  void setRadius(num radiusX, num radiusY);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGFEOffsetElement
interface SVGFEOffsetElement extends SVGElement, SVGFilterPrimitiveStandardAttributes {

  /** @domName SVGFEOffsetElement.dx */
  final SVGAnimatedNumber dx;

  /** @domName SVGFEOffsetElement.dy */
  final SVGAnimatedNumber dy;

  /** @domName SVGFEOffsetElement.in1 */
  final SVGAnimatedString in1;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGFEPointLightElement
interface SVGFEPointLightElement extends SVGElement {

  /** @domName SVGFEPointLightElement.x */
  final SVGAnimatedNumber x;

  /** @domName SVGFEPointLightElement.y */
  final SVGAnimatedNumber y;

  /** @domName SVGFEPointLightElement.z */
  final SVGAnimatedNumber z;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGFESpecularLightingElement
interface SVGFESpecularLightingElement extends SVGElement, SVGFilterPrimitiveStandardAttributes {

  /** @domName SVGFESpecularLightingElement.in1 */
  final SVGAnimatedString in1;

  /** @domName SVGFESpecularLightingElement.specularConstant */
  final SVGAnimatedNumber specularConstant;

  /** @domName SVGFESpecularLightingElement.specularExponent */
  final SVGAnimatedNumber specularExponent;

  /** @domName SVGFESpecularLightingElement.surfaceScale */
  final SVGAnimatedNumber surfaceScale;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGFESpotLightElement
interface SVGFESpotLightElement extends SVGElement {

  /** @domName SVGFESpotLightElement.limitingConeAngle */
  final SVGAnimatedNumber limitingConeAngle;

  /** @domName SVGFESpotLightElement.pointsAtX */
  final SVGAnimatedNumber pointsAtX;

  /** @domName SVGFESpotLightElement.pointsAtY */
  final SVGAnimatedNumber pointsAtY;

  /** @domName SVGFESpotLightElement.pointsAtZ */
  final SVGAnimatedNumber pointsAtZ;

  /** @domName SVGFESpotLightElement.specularExponent */
  final SVGAnimatedNumber specularExponent;

  /** @domName SVGFESpotLightElement.x */
  final SVGAnimatedNumber x;

  /** @domName SVGFESpotLightElement.y */
  final SVGAnimatedNumber y;

  /** @domName SVGFESpotLightElement.z */
  final SVGAnimatedNumber z;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGFETileElement
interface SVGFETileElement extends SVGElement, SVGFilterPrimitiveStandardAttributes {

  /** @domName SVGFETileElement.in1 */
  final SVGAnimatedString in1;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGFETurbulenceElement
interface SVGFETurbulenceElement extends SVGElement, SVGFilterPrimitiveStandardAttributes {

  static final int SVG_STITCHTYPE_NOSTITCH = 2;

  static final int SVG_STITCHTYPE_STITCH = 1;

  static final int SVG_STITCHTYPE_UNKNOWN = 0;

  static final int SVG_TURBULENCE_TYPE_FRACTALNOISE = 1;

  static final int SVG_TURBULENCE_TYPE_TURBULENCE = 2;

  static final int SVG_TURBULENCE_TYPE_UNKNOWN = 0;

  /** @domName SVGFETurbulenceElement.baseFrequencyX */
  final SVGAnimatedNumber baseFrequencyX;

  /** @domName SVGFETurbulenceElement.baseFrequencyY */
  final SVGAnimatedNumber baseFrequencyY;

  /** @domName SVGFETurbulenceElement.numOctaves */
  final SVGAnimatedInteger numOctaves;

  /** @domName SVGFETurbulenceElement.seed */
  final SVGAnimatedNumber seed;

  /** @domName SVGFETurbulenceElement.stitchTiles */
  final SVGAnimatedEnumeration stitchTiles;

  /** @domName SVGFETurbulenceElement.type */
  final SVGAnimatedEnumeration type;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGFilterElement
interface SVGFilterElement extends SVGElement, SVGURIReference, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable {

  /** @domName SVGFilterElement.filterResX */
  final SVGAnimatedInteger filterResX;

  /** @domName SVGFilterElement.filterResY */
  final SVGAnimatedInteger filterResY;

  /** @domName SVGFilterElement.filterUnits */
  final SVGAnimatedEnumeration filterUnits;

  /** @domName SVGFilterElement.height */
  final SVGAnimatedLength height;

  /** @domName SVGFilterElement.primitiveUnits */
  final SVGAnimatedEnumeration primitiveUnits;

  /** @domName SVGFilterElement.width */
  final SVGAnimatedLength width;

  /** @domName SVGFilterElement.x */
  final SVGAnimatedLength x;

  /** @domName SVGFilterElement.y */
  final SVGAnimatedLength y;

  /** @domName SVGFilterElement.setFilterRes */
  void setFilterRes(int filterResX, int filterResY);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGFilterPrimitiveStandardAttributes
interface SVGFilterPrimitiveStandardAttributes extends SVGStylable {

  /** @domName SVGFilterPrimitiveStandardAttributes.height */
  final SVGAnimatedLength height;

  /** @domName SVGFilterPrimitiveStandardAttributes.result */
  final SVGAnimatedString result;

  /** @domName SVGFilterPrimitiveStandardAttributes.width */
  final SVGAnimatedLength width;

  /** @domName SVGFilterPrimitiveStandardAttributes.x */
  final SVGAnimatedLength x;

  /** @domName SVGFilterPrimitiveStandardAttributes.y */
  final SVGAnimatedLength y;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGFitToViewBox
interface SVGFitToViewBox {

  /** @domName SVGFitToViewBox.preserveAspectRatio */
  final SVGAnimatedPreserveAspectRatio preserveAspectRatio;

  /** @domName SVGFitToViewBox.viewBox */
  final SVGAnimatedRect viewBox;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGFontElement
interface SVGFontElement extends SVGElement {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGFontFaceElement
interface SVGFontFaceElement extends SVGElement {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGFontFaceFormatElement
interface SVGFontFaceFormatElement extends SVGElement {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGFontFaceNameElement
interface SVGFontFaceNameElement extends SVGElement {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGFontFaceSrcElement
interface SVGFontFaceSrcElement extends SVGElement {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGFontFaceUriElement
interface SVGFontFaceUriElement extends SVGElement {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGForeignObjectElement
interface SVGForeignObjectElement extends SVGElement, SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable, SVGTransformable {

  /** @domName SVGForeignObjectElement.height */
  final SVGAnimatedLength height;

  /** @domName SVGForeignObjectElement.width */
  final SVGAnimatedLength width;

  /** @domName SVGForeignObjectElement.x */
  final SVGAnimatedLength x;

  /** @domName SVGForeignObjectElement.y */
  final SVGAnimatedLength y;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGGElement
interface SVGGElement extends SVGElement, SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable, SVGTransformable {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGGlyphElement
interface SVGGlyphElement extends SVGElement {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGGlyphRefElement
interface SVGGlyphRefElement extends SVGElement, SVGURIReference, SVGStylable {

  /** @domName SVGGlyphRefElement.dx */
  num dx;

  /** @domName SVGGlyphRefElement.dy */
  num dy;

  /** @domName SVGGlyphRefElement.format */
  String format;

  /** @domName SVGGlyphRefElement.glyphRef */
  String glyphRef;

  /** @domName SVGGlyphRefElement.x */
  num x;

  /** @domName SVGGlyphRefElement.y */
  num y;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGGradientElement
interface SVGGradientElement extends SVGElement, SVGURIReference, SVGExternalResourcesRequired, SVGStylable {

  static final int SVG_SPREADMETHOD_PAD = 1;

  static final int SVG_SPREADMETHOD_REFLECT = 2;

  static final int SVG_SPREADMETHOD_REPEAT = 3;

  static final int SVG_SPREADMETHOD_UNKNOWN = 0;

  /** @domName SVGGradientElement.gradientTransform */
  final SVGAnimatedTransformList gradientTransform;

  /** @domName SVGGradientElement.gradientUnits */
  final SVGAnimatedEnumeration gradientUnits;

  /** @domName SVGGradientElement.spreadMethod */
  final SVGAnimatedEnumeration spreadMethod;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGHKernElement
interface SVGHKernElement extends SVGElement {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGImageElement
interface SVGImageElement extends SVGElement, SVGURIReference, SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable, SVGTransformable {

  /** @domName SVGImageElement.height */
  final SVGAnimatedLength height;

  /** @domName SVGImageElement.preserveAspectRatio */
  final SVGAnimatedPreserveAspectRatio preserveAspectRatio;

  /** @domName SVGImageElement.width */
  final SVGAnimatedLength width;

  /** @domName SVGImageElement.x */
  final SVGAnimatedLength x;

  /** @domName SVGImageElement.y */
  final SVGAnimatedLength y;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGLangSpace
interface SVGLangSpace {

  /** @domName SVGLangSpace.xmllang */
  String xmllang;

  /** @domName SVGLangSpace.xmlspace */
  String xmlspace;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGLength
interface SVGLength {

  static final int SVG_LENGTHTYPE_CM = 6;

  static final int SVG_LENGTHTYPE_EMS = 3;

  static final int SVG_LENGTHTYPE_EXS = 4;

  static final int SVG_LENGTHTYPE_IN = 8;

  static final int SVG_LENGTHTYPE_MM = 7;

  static final int SVG_LENGTHTYPE_NUMBER = 1;

  static final int SVG_LENGTHTYPE_PC = 10;

  static final int SVG_LENGTHTYPE_PERCENTAGE = 2;

  static final int SVG_LENGTHTYPE_PT = 9;

  static final int SVG_LENGTHTYPE_PX = 5;

  static final int SVG_LENGTHTYPE_UNKNOWN = 0;

  /** @domName SVGLength.unitType */
  final int unitType;

  /** @domName SVGLength.value */
  num value;

  /** @domName SVGLength.valueAsString */
  String valueAsString;

  /** @domName SVGLength.valueInSpecifiedUnits */
  num valueInSpecifiedUnits;

  /** @domName SVGLength.convertToSpecifiedUnits */
  void convertToSpecifiedUnits(int unitType);

  /** @domName SVGLength.newValueSpecifiedUnits */
  void newValueSpecifiedUnits(int unitType, num valueInSpecifiedUnits);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGLengthList
interface SVGLengthList {

  /** @domName SVGLengthList.numberOfItems */
  final int numberOfItems;

  /** @domName SVGLengthList.appendItem */
  SVGLength appendItem(SVGLength item);

  /** @domName SVGLengthList.clear */
  void clear();

  /** @domName SVGLengthList.getItem */
  SVGLength getItem(int index);

  /** @domName SVGLengthList.initialize */
  SVGLength initialize(SVGLength item);

  /** @domName SVGLengthList.insertItemBefore */
  SVGLength insertItemBefore(SVGLength item, int index);

  /** @domName SVGLengthList.removeItem */
  SVGLength removeItem(int index);

  /** @domName SVGLengthList.replaceItem */
  SVGLength replaceItem(SVGLength item, int index);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGLineElement
interface SVGLineElement extends SVGElement, SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable, SVGTransformable {

  /** @domName SVGLineElement.x1 */
  final SVGAnimatedLength x1;

  /** @domName SVGLineElement.x2 */
  final SVGAnimatedLength x2;

  /** @domName SVGLineElement.y1 */
  final SVGAnimatedLength y1;

  /** @domName SVGLineElement.y2 */
  final SVGAnimatedLength y2;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGLinearGradientElement
interface SVGLinearGradientElement extends SVGGradientElement {

  /** @domName SVGLinearGradientElement.x1 */
  final SVGAnimatedLength x1;

  /** @domName SVGLinearGradientElement.x2 */
  final SVGAnimatedLength x2;

  /** @domName SVGLinearGradientElement.y1 */
  final SVGAnimatedLength y1;

  /** @domName SVGLinearGradientElement.y2 */
  final SVGAnimatedLength y2;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGLocatable
interface SVGLocatable {

  /** @domName SVGLocatable.farthestViewportElement */
  final SVGElement farthestViewportElement;

  /** @domName SVGLocatable.nearestViewportElement */
  final SVGElement nearestViewportElement;

  /** @domName SVGLocatable.getBBox */
  SVGRect getBBox();

  /** @domName SVGLocatable.getCTM */
  SVGMatrix getCTM();

  /** @domName SVGLocatable.getScreenCTM */
  SVGMatrix getScreenCTM();

  /** @domName SVGLocatable.getTransformToElement */
  SVGMatrix getTransformToElement(SVGElement element);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGMPathElement
interface SVGMPathElement extends SVGElement, SVGURIReference, SVGExternalResourcesRequired {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGMarkerElement
interface SVGMarkerElement extends SVGElement, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable, SVGFitToViewBox {

  static final int SVG_MARKERUNITS_STROKEWIDTH = 2;

  static final int SVG_MARKERUNITS_UNKNOWN = 0;

  static final int SVG_MARKERUNITS_USERSPACEONUSE = 1;

  static final int SVG_MARKER_ORIENT_ANGLE = 2;

  static final int SVG_MARKER_ORIENT_AUTO = 1;

  static final int SVG_MARKER_ORIENT_UNKNOWN = 0;

  /** @domName SVGMarkerElement.markerHeight */
  final SVGAnimatedLength markerHeight;

  /** @domName SVGMarkerElement.markerUnits */
  final SVGAnimatedEnumeration markerUnits;

  /** @domName SVGMarkerElement.markerWidth */
  final SVGAnimatedLength markerWidth;

  /** @domName SVGMarkerElement.orientAngle */
  final SVGAnimatedAngle orientAngle;

  /** @domName SVGMarkerElement.orientType */
  final SVGAnimatedEnumeration orientType;

  /** @domName SVGMarkerElement.refX */
  final SVGAnimatedLength refX;

  /** @domName SVGMarkerElement.refY */
  final SVGAnimatedLength refY;

  /** @domName SVGMarkerElement.setOrientToAngle */
  void setOrientToAngle(SVGAngle angle);

  /** @domName SVGMarkerElement.setOrientToAuto */
  void setOrientToAuto();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGMaskElement
interface SVGMaskElement extends SVGElement, SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable {

  /** @domName SVGMaskElement.height */
  final SVGAnimatedLength height;

  /** @domName SVGMaskElement.maskContentUnits */
  final SVGAnimatedEnumeration maskContentUnits;

  /** @domName SVGMaskElement.maskUnits */
  final SVGAnimatedEnumeration maskUnits;

  /** @domName SVGMaskElement.width */
  final SVGAnimatedLength width;

  /** @domName SVGMaskElement.x */
  final SVGAnimatedLength x;

  /** @domName SVGMaskElement.y */
  final SVGAnimatedLength y;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGMatrix
interface SVGMatrix {

  /** @domName SVGMatrix.a */
  num a;

  /** @domName SVGMatrix.b */
  num b;

  /** @domName SVGMatrix.c */
  num c;

  /** @domName SVGMatrix.d */
  num d;

  /** @domName SVGMatrix.e */
  num e;

  /** @domName SVGMatrix.f */
  num f;

  /** @domName SVGMatrix.flipX */
  SVGMatrix flipX();

  /** @domName SVGMatrix.flipY */
  SVGMatrix flipY();

  /** @domName SVGMatrix.inverse */
  SVGMatrix inverse();

  /** @domName SVGMatrix.multiply */
  SVGMatrix multiply(SVGMatrix secondMatrix);

  /** @domName SVGMatrix.rotate */
  SVGMatrix rotate(num angle);

  /** @domName SVGMatrix.rotateFromVector */
  SVGMatrix rotateFromVector(num x, num y);

  /** @domName SVGMatrix.scale */
  SVGMatrix scale(num scaleFactor);

  /** @domName SVGMatrix.scaleNonUniform */
  SVGMatrix scaleNonUniform(num scaleFactorX, num scaleFactorY);

  /** @domName SVGMatrix.skewX */
  SVGMatrix skewX(num angle);

  /** @domName SVGMatrix.skewY */
  SVGMatrix skewY(num angle);

  /** @domName SVGMatrix.translate */
  SVGMatrix translate(num x, num y);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGMetadataElement
interface SVGMetadataElement extends SVGElement {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGMissingGlyphElement
interface SVGMissingGlyphElement extends SVGElement {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGNumber
interface SVGNumber {

  /** @domName SVGNumber.value */
  num value;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGNumberList
interface SVGNumberList {

  /** @domName SVGNumberList.numberOfItems */
  final int numberOfItems;

  /** @domName SVGNumberList.appendItem */
  SVGNumber appendItem(SVGNumber item);

  /** @domName SVGNumberList.clear */
  void clear();

  /** @domName SVGNumberList.getItem */
  SVGNumber getItem(int index);

  /** @domName SVGNumberList.initialize */
  SVGNumber initialize(SVGNumber item);

  /** @domName SVGNumberList.insertItemBefore */
  SVGNumber insertItemBefore(SVGNumber item, int index);

  /** @domName SVGNumberList.removeItem */
  SVGNumber removeItem(int index);

  /** @domName SVGNumberList.replaceItem */
  SVGNumber replaceItem(SVGNumber item, int index);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGPaint
interface SVGPaint extends SVGColor {

  static final int SVG_PAINTTYPE_CURRENTCOLOR = 102;

  static final int SVG_PAINTTYPE_NONE = 101;

  static final int SVG_PAINTTYPE_RGBCOLOR = 1;

  static final int SVG_PAINTTYPE_RGBCOLOR_ICCCOLOR = 2;

  static final int SVG_PAINTTYPE_UNKNOWN = 0;

  static final int SVG_PAINTTYPE_URI = 107;

  static final int SVG_PAINTTYPE_URI_CURRENTCOLOR = 104;

  static final int SVG_PAINTTYPE_URI_NONE = 103;

  static final int SVG_PAINTTYPE_URI_RGBCOLOR = 105;

  static final int SVG_PAINTTYPE_URI_RGBCOLOR_ICCCOLOR = 106;

  /** @domName SVGPaint.paintType */
  final int paintType;

  /** @domName SVGPaint.uri */
  final String uri;

  /** @domName SVGPaint.setPaint */
  void setPaint(int paintType, String uri, String rgbColor, String iccColor);

  /** @domName SVGPaint.setUri */
  void setUri(String uri);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGPathElement
interface SVGPathElement extends SVGElement, SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable, SVGTransformable {

  /** @domName SVGPathElement.animatedNormalizedPathSegList */
  final SVGPathSegList animatedNormalizedPathSegList;

  /** @domName SVGPathElement.animatedPathSegList */
  final SVGPathSegList animatedPathSegList;

  /** @domName SVGPathElement.normalizedPathSegList */
  final SVGPathSegList normalizedPathSegList;

  /** @domName SVGPathElement.pathLength */
  final SVGAnimatedNumber pathLength;

  /** @domName SVGPathElement.pathSegList */
  final SVGPathSegList pathSegList;

  /** @domName SVGPathElement.createSVGPathSegArcAbs */
  SVGPathSegArcAbs createSVGPathSegArcAbs(num x, num y, num r1, num r2, num angle, bool largeArcFlag, bool sweepFlag);

  /** @domName SVGPathElement.createSVGPathSegArcRel */
  SVGPathSegArcRel createSVGPathSegArcRel(num x, num y, num r1, num r2, num angle, bool largeArcFlag, bool sweepFlag);

  /** @domName SVGPathElement.createSVGPathSegClosePath */
  SVGPathSegClosePath createSVGPathSegClosePath();

  /** @domName SVGPathElement.createSVGPathSegCurvetoCubicAbs */
  SVGPathSegCurvetoCubicAbs createSVGPathSegCurvetoCubicAbs(num x, num y, num x1, num y1, num x2, num y2);

  /** @domName SVGPathElement.createSVGPathSegCurvetoCubicRel */
  SVGPathSegCurvetoCubicRel createSVGPathSegCurvetoCubicRel(num x, num y, num x1, num y1, num x2, num y2);

  /** @domName SVGPathElement.createSVGPathSegCurvetoCubicSmoothAbs */
  SVGPathSegCurvetoCubicSmoothAbs createSVGPathSegCurvetoCubicSmoothAbs(num x, num y, num x2, num y2);

  /** @domName SVGPathElement.createSVGPathSegCurvetoCubicSmoothRel */
  SVGPathSegCurvetoCubicSmoothRel createSVGPathSegCurvetoCubicSmoothRel(num x, num y, num x2, num y2);

  /** @domName SVGPathElement.createSVGPathSegCurvetoQuadraticAbs */
  SVGPathSegCurvetoQuadraticAbs createSVGPathSegCurvetoQuadraticAbs(num x, num y, num x1, num y1);

  /** @domName SVGPathElement.createSVGPathSegCurvetoQuadraticRel */
  SVGPathSegCurvetoQuadraticRel createSVGPathSegCurvetoQuadraticRel(num x, num y, num x1, num y1);

  /** @domName SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothAbs */
  SVGPathSegCurvetoQuadraticSmoothAbs createSVGPathSegCurvetoQuadraticSmoothAbs(num x, num y);

  /** @domName SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothRel */
  SVGPathSegCurvetoQuadraticSmoothRel createSVGPathSegCurvetoQuadraticSmoothRel(num x, num y);

  /** @domName SVGPathElement.createSVGPathSegLinetoAbs */
  SVGPathSegLinetoAbs createSVGPathSegLinetoAbs(num x, num y);

  /** @domName SVGPathElement.createSVGPathSegLinetoHorizontalAbs */
  SVGPathSegLinetoHorizontalAbs createSVGPathSegLinetoHorizontalAbs(num x);

  /** @domName SVGPathElement.createSVGPathSegLinetoHorizontalRel */
  SVGPathSegLinetoHorizontalRel createSVGPathSegLinetoHorizontalRel(num x);

  /** @domName SVGPathElement.createSVGPathSegLinetoRel */
  SVGPathSegLinetoRel createSVGPathSegLinetoRel(num x, num y);

  /** @domName SVGPathElement.createSVGPathSegLinetoVerticalAbs */
  SVGPathSegLinetoVerticalAbs createSVGPathSegLinetoVerticalAbs(num y);

  /** @domName SVGPathElement.createSVGPathSegLinetoVerticalRel */
  SVGPathSegLinetoVerticalRel createSVGPathSegLinetoVerticalRel(num y);

  /** @domName SVGPathElement.createSVGPathSegMovetoAbs */
  SVGPathSegMovetoAbs createSVGPathSegMovetoAbs(num x, num y);

  /** @domName SVGPathElement.createSVGPathSegMovetoRel */
  SVGPathSegMovetoRel createSVGPathSegMovetoRel(num x, num y);

  /** @domName SVGPathElement.getPathSegAtLength */
  int getPathSegAtLength(num distance);

  /** @domName SVGPathElement.getPointAtLength */
  SVGPoint getPointAtLength(num distance);

  /** @domName SVGPathElement.getTotalLength */
  num getTotalLength();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGPathSeg
interface SVGPathSeg {

  static final int PATHSEG_ARC_ABS = 10;

  static final int PATHSEG_ARC_REL = 11;

  static final int PATHSEG_CLOSEPATH = 1;

  static final int PATHSEG_CURVETO_CUBIC_ABS = 6;

  static final int PATHSEG_CURVETO_CUBIC_REL = 7;

  static final int PATHSEG_CURVETO_CUBIC_SMOOTH_ABS = 16;

  static final int PATHSEG_CURVETO_CUBIC_SMOOTH_REL = 17;

  static final int PATHSEG_CURVETO_QUADRATIC_ABS = 8;

  static final int PATHSEG_CURVETO_QUADRATIC_REL = 9;

  static final int PATHSEG_CURVETO_QUADRATIC_SMOOTH_ABS = 18;

  static final int PATHSEG_CURVETO_QUADRATIC_SMOOTH_REL = 19;

  static final int PATHSEG_LINETO_ABS = 4;

  static final int PATHSEG_LINETO_HORIZONTAL_ABS = 12;

  static final int PATHSEG_LINETO_HORIZONTAL_REL = 13;

  static final int PATHSEG_LINETO_REL = 5;

  static final int PATHSEG_LINETO_VERTICAL_ABS = 14;

  static final int PATHSEG_LINETO_VERTICAL_REL = 15;

  static final int PATHSEG_MOVETO_ABS = 2;

  static final int PATHSEG_MOVETO_REL = 3;

  static final int PATHSEG_UNKNOWN = 0;

  /** @domName SVGPathSeg.pathSegType */
  final int pathSegType;

  /** @domName SVGPathSeg.pathSegTypeAsLetter */
  final String pathSegTypeAsLetter;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGPathSegArcAbs
interface SVGPathSegArcAbs extends SVGPathSeg {

  /** @domName SVGPathSegArcAbs.angle */
  num angle;

  /** @domName SVGPathSegArcAbs.largeArcFlag */
  bool largeArcFlag;

  /** @domName SVGPathSegArcAbs.r1 */
  num r1;

  /** @domName SVGPathSegArcAbs.r2 */
  num r2;

  /** @domName SVGPathSegArcAbs.sweepFlag */
  bool sweepFlag;

  /** @domName SVGPathSegArcAbs.x */
  num x;

  /** @domName SVGPathSegArcAbs.y */
  num y;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGPathSegArcRel
interface SVGPathSegArcRel extends SVGPathSeg {

  /** @domName SVGPathSegArcRel.angle */
  num angle;

  /** @domName SVGPathSegArcRel.largeArcFlag */
  bool largeArcFlag;

  /** @domName SVGPathSegArcRel.r1 */
  num r1;

  /** @domName SVGPathSegArcRel.r2 */
  num r2;

  /** @domName SVGPathSegArcRel.sweepFlag */
  bool sweepFlag;

  /** @domName SVGPathSegArcRel.x */
  num x;

  /** @domName SVGPathSegArcRel.y */
  num y;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGPathSegClosePath
interface SVGPathSegClosePath extends SVGPathSeg {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGPathSegCurvetoCubicAbs
interface SVGPathSegCurvetoCubicAbs extends SVGPathSeg {

  /** @domName SVGPathSegCurvetoCubicAbs.x */
  num x;

  /** @domName SVGPathSegCurvetoCubicAbs.x1 */
  num x1;

  /** @domName SVGPathSegCurvetoCubicAbs.x2 */
  num x2;

  /** @domName SVGPathSegCurvetoCubicAbs.y */
  num y;

  /** @domName SVGPathSegCurvetoCubicAbs.y1 */
  num y1;

  /** @domName SVGPathSegCurvetoCubicAbs.y2 */
  num y2;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGPathSegCurvetoCubicRel
interface SVGPathSegCurvetoCubicRel extends SVGPathSeg {

  /** @domName SVGPathSegCurvetoCubicRel.x */
  num x;

  /** @domName SVGPathSegCurvetoCubicRel.x1 */
  num x1;

  /** @domName SVGPathSegCurvetoCubicRel.x2 */
  num x2;

  /** @domName SVGPathSegCurvetoCubicRel.y */
  num y;

  /** @domName SVGPathSegCurvetoCubicRel.y1 */
  num y1;

  /** @domName SVGPathSegCurvetoCubicRel.y2 */
  num y2;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGPathSegCurvetoCubicSmoothAbs
interface SVGPathSegCurvetoCubicSmoothAbs extends SVGPathSeg {

  /** @domName SVGPathSegCurvetoCubicSmoothAbs.x */
  num x;

  /** @domName SVGPathSegCurvetoCubicSmoothAbs.x2 */
  num x2;

  /** @domName SVGPathSegCurvetoCubicSmoothAbs.y */
  num y;

  /** @domName SVGPathSegCurvetoCubicSmoothAbs.y2 */
  num y2;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGPathSegCurvetoCubicSmoothRel
interface SVGPathSegCurvetoCubicSmoothRel extends SVGPathSeg {

  /** @domName SVGPathSegCurvetoCubicSmoothRel.x */
  num x;

  /** @domName SVGPathSegCurvetoCubicSmoothRel.x2 */
  num x2;

  /** @domName SVGPathSegCurvetoCubicSmoothRel.y */
  num y;

  /** @domName SVGPathSegCurvetoCubicSmoothRel.y2 */
  num y2;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGPathSegCurvetoQuadraticAbs
interface SVGPathSegCurvetoQuadraticAbs extends SVGPathSeg {

  /** @domName SVGPathSegCurvetoQuadraticAbs.x */
  num x;

  /** @domName SVGPathSegCurvetoQuadraticAbs.x1 */
  num x1;

  /** @domName SVGPathSegCurvetoQuadraticAbs.y */
  num y;

  /** @domName SVGPathSegCurvetoQuadraticAbs.y1 */
  num y1;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGPathSegCurvetoQuadraticRel
interface SVGPathSegCurvetoQuadraticRel extends SVGPathSeg {

  /** @domName SVGPathSegCurvetoQuadraticRel.x */
  num x;

  /** @domName SVGPathSegCurvetoQuadraticRel.x1 */
  num x1;

  /** @domName SVGPathSegCurvetoQuadraticRel.y */
  num y;

  /** @domName SVGPathSegCurvetoQuadraticRel.y1 */
  num y1;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGPathSegCurvetoQuadraticSmoothAbs
interface SVGPathSegCurvetoQuadraticSmoothAbs extends SVGPathSeg {

  /** @domName SVGPathSegCurvetoQuadraticSmoothAbs.x */
  num x;

  /** @domName SVGPathSegCurvetoQuadraticSmoothAbs.y */
  num y;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGPathSegCurvetoQuadraticSmoothRel
interface SVGPathSegCurvetoQuadraticSmoothRel extends SVGPathSeg {

  /** @domName SVGPathSegCurvetoQuadraticSmoothRel.x */
  num x;

  /** @domName SVGPathSegCurvetoQuadraticSmoothRel.y */
  num y;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGPathSegLinetoAbs
interface SVGPathSegLinetoAbs extends SVGPathSeg {

  /** @domName SVGPathSegLinetoAbs.x */
  num x;

  /** @domName SVGPathSegLinetoAbs.y */
  num y;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGPathSegLinetoHorizontalAbs
interface SVGPathSegLinetoHorizontalAbs extends SVGPathSeg {

  /** @domName SVGPathSegLinetoHorizontalAbs.x */
  num x;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGPathSegLinetoHorizontalRel
interface SVGPathSegLinetoHorizontalRel extends SVGPathSeg {

  /** @domName SVGPathSegLinetoHorizontalRel.x */
  num x;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGPathSegLinetoRel
interface SVGPathSegLinetoRel extends SVGPathSeg {

  /** @domName SVGPathSegLinetoRel.x */
  num x;

  /** @domName SVGPathSegLinetoRel.y */
  num y;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGPathSegLinetoVerticalAbs
interface SVGPathSegLinetoVerticalAbs extends SVGPathSeg {

  /** @domName SVGPathSegLinetoVerticalAbs.y */
  num y;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGPathSegLinetoVerticalRel
interface SVGPathSegLinetoVerticalRel extends SVGPathSeg {

  /** @domName SVGPathSegLinetoVerticalRel.y */
  num y;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGPathSegList
interface SVGPathSegList {

  /** @domName SVGPathSegList.numberOfItems */
  final int numberOfItems;

  /** @domName SVGPathSegList.appendItem */
  SVGPathSeg appendItem(SVGPathSeg newItem);

  /** @domName SVGPathSegList.clear */
  void clear();

  /** @domName SVGPathSegList.getItem */
  SVGPathSeg getItem(int index);

  /** @domName SVGPathSegList.initialize */
  SVGPathSeg initialize(SVGPathSeg newItem);

  /** @domName SVGPathSegList.insertItemBefore */
  SVGPathSeg insertItemBefore(SVGPathSeg newItem, int index);

  /** @domName SVGPathSegList.removeItem */
  SVGPathSeg removeItem(int index);

  /** @domName SVGPathSegList.replaceItem */
  SVGPathSeg replaceItem(SVGPathSeg newItem, int index);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGPathSegMovetoAbs
interface SVGPathSegMovetoAbs extends SVGPathSeg {

  /** @domName SVGPathSegMovetoAbs.x */
  num x;

  /** @domName SVGPathSegMovetoAbs.y */
  num y;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGPathSegMovetoRel
interface SVGPathSegMovetoRel extends SVGPathSeg {

  /** @domName SVGPathSegMovetoRel.x */
  num x;

  /** @domName SVGPathSegMovetoRel.y */
  num y;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGPatternElement
interface SVGPatternElement extends SVGElement, SVGURIReference, SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable, SVGFitToViewBox {

  /** @domName SVGPatternElement.height */
  final SVGAnimatedLength height;

  /** @domName SVGPatternElement.patternContentUnits */
  final SVGAnimatedEnumeration patternContentUnits;

  /** @domName SVGPatternElement.patternTransform */
  final SVGAnimatedTransformList patternTransform;

  /** @domName SVGPatternElement.patternUnits */
  final SVGAnimatedEnumeration patternUnits;

  /** @domName SVGPatternElement.width */
  final SVGAnimatedLength width;

  /** @domName SVGPatternElement.x */
  final SVGAnimatedLength x;

  /** @domName SVGPatternElement.y */
  final SVGAnimatedLength y;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGPoint
interface SVGPoint {

  /** @domName SVGPoint.x */
  num x;

  /** @domName SVGPoint.y */
  num y;

  /** @domName SVGPoint.matrixTransform */
  SVGPoint matrixTransform(SVGMatrix matrix);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGPointList
interface SVGPointList {

  /** @domName SVGPointList.numberOfItems */
  final int numberOfItems;

  /** @domName SVGPointList.appendItem */
  SVGPoint appendItem(SVGPoint item);

  /** @domName SVGPointList.clear */
  void clear();

  /** @domName SVGPointList.getItem */
  SVGPoint getItem(int index);

  /** @domName SVGPointList.initialize */
  SVGPoint initialize(SVGPoint item);

  /** @domName SVGPointList.insertItemBefore */
  SVGPoint insertItemBefore(SVGPoint item, int index);

  /** @domName SVGPointList.removeItem */
  SVGPoint removeItem(int index);

  /** @domName SVGPointList.replaceItem */
  SVGPoint replaceItem(SVGPoint item, int index);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGPolygonElement
interface SVGPolygonElement extends SVGElement, SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable, SVGTransformable {

  /** @domName SVGPolygonElement.animatedPoints */
  final SVGPointList animatedPoints;

  /** @domName SVGPolygonElement.points */
  final SVGPointList points;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGPolylineElement
interface SVGPolylineElement extends SVGElement, SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable, SVGTransformable {

  /** @domName SVGPolylineElement.animatedPoints */
  final SVGPointList animatedPoints;

  /** @domName SVGPolylineElement.points */
  final SVGPointList points;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGPreserveAspectRatio
interface SVGPreserveAspectRatio {

  static final int SVG_MEETORSLICE_MEET = 1;

  static final int SVG_MEETORSLICE_SLICE = 2;

  static final int SVG_MEETORSLICE_UNKNOWN = 0;

  static final int SVG_PRESERVEASPECTRATIO_NONE = 1;

  static final int SVG_PRESERVEASPECTRATIO_UNKNOWN = 0;

  static final int SVG_PRESERVEASPECTRATIO_XMAXYMAX = 10;

  static final int SVG_PRESERVEASPECTRATIO_XMAXYMID = 7;

  static final int SVG_PRESERVEASPECTRATIO_XMAXYMIN = 4;

  static final int SVG_PRESERVEASPECTRATIO_XMIDYMAX = 9;

  static final int SVG_PRESERVEASPECTRATIO_XMIDYMID = 6;

  static final int SVG_PRESERVEASPECTRATIO_XMIDYMIN = 3;

  static final int SVG_PRESERVEASPECTRATIO_XMINYMAX = 8;

  static final int SVG_PRESERVEASPECTRATIO_XMINYMID = 5;

  static final int SVG_PRESERVEASPECTRATIO_XMINYMIN = 2;

  /** @domName SVGPreserveAspectRatio.align */
  int align;

  /** @domName SVGPreserveAspectRatio.meetOrSlice */
  int meetOrSlice;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGRadialGradientElement
interface SVGRadialGradientElement extends SVGGradientElement {

  /** @domName SVGRadialGradientElement.cx */
  final SVGAnimatedLength cx;

  /** @domName SVGRadialGradientElement.cy */
  final SVGAnimatedLength cy;

  /** @domName SVGRadialGradientElement.fx */
  final SVGAnimatedLength fx;

  /** @domName SVGRadialGradientElement.fy */
  final SVGAnimatedLength fy;

  /** @domName SVGRadialGradientElement.r */
  final SVGAnimatedLength r;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGRect
interface SVGRect {

  /** @domName SVGRect.height */
  num height;

  /** @domName SVGRect.width */
  num width;

  /** @domName SVGRect.x */
  num x;

  /** @domName SVGRect.y */
  num y;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGRectElement
interface SVGRectElement extends SVGElement, SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable, SVGTransformable {

  /** @domName SVGRectElement.height */
  final SVGAnimatedLength height;

  /** @domName SVGRectElement.rx */
  final SVGAnimatedLength rx;

  /** @domName SVGRectElement.ry */
  final SVGAnimatedLength ry;

  /** @domName SVGRectElement.width */
  final SVGAnimatedLength width;

  /** @domName SVGRectElement.x */
  final SVGAnimatedLength x;

  /** @domName SVGRectElement.y */
  final SVGAnimatedLength y;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGRenderingIntent
interface SVGRenderingIntent {

  static final int RENDERING_INTENT_ABSOLUTE_COLORIMETRIC = 5;

  static final int RENDERING_INTENT_AUTO = 1;

  static final int RENDERING_INTENT_PERCEPTUAL = 2;

  static final int RENDERING_INTENT_RELATIVE_COLORIMETRIC = 3;

  static final int RENDERING_INTENT_SATURATION = 4;

  static final int RENDERING_INTENT_UNKNOWN = 0;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// @domName SVGSVGElement
interface SVGSVGElement extends SVGElement, SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable, SVGLocatable, SVGFitToViewBox, SVGZoomAndPan
    default _SVGSVGElementFactoryProvider {
  SVGSVGElement();


  /** @domName SVGSVGElement.contentScriptType */
  String contentScriptType;

  /** @domName SVGSVGElement.contentStyleType */
  String contentStyleType;

  /** @domName SVGSVGElement.currentScale */
  num currentScale;

  /** @domName SVGSVGElement.currentTranslate */
  final SVGPoint currentTranslate;

  /** @domName SVGSVGElement.height */
  final SVGAnimatedLength height;

  /** @domName SVGSVGElement.pixelUnitToMillimeterX */
  final num pixelUnitToMillimeterX;

  /** @domName SVGSVGElement.pixelUnitToMillimeterY */
  final num pixelUnitToMillimeterY;

  /** @domName SVGSVGElement.screenPixelToMillimeterX */
  final num screenPixelToMillimeterX;

  /** @domName SVGSVGElement.screenPixelToMillimeterY */
  final num screenPixelToMillimeterY;

  /** @domName SVGSVGElement.useCurrentView */
  bool useCurrentView;

  /** @domName SVGSVGElement.viewport */
  final SVGRect viewport;

  /** @domName SVGSVGElement.width */
  final SVGAnimatedLength width;

  /** @domName SVGSVGElement.x */
  final SVGAnimatedLength x;

  /** @domName SVGSVGElement.y */
  final SVGAnimatedLength y;

  /** @domName SVGSVGElement.animationsPaused */
  bool animationsPaused();

  /** @domName SVGSVGElement.checkEnclosure */
  bool checkEnclosure(SVGElement element, SVGRect rect);

  /** @domName SVGSVGElement.checkIntersection */
  bool checkIntersection(SVGElement element, SVGRect rect);

  /** @domName SVGSVGElement.createSVGAngle */
  SVGAngle createSVGAngle();

  /** @domName SVGSVGElement.createSVGLength */
  SVGLength createSVGLength();

  /** @domName SVGSVGElement.createSVGMatrix */
  SVGMatrix createSVGMatrix();

  /** @domName SVGSVGElement.createSVGNumber */
  SVGNumber createSVGNumber();

  /** @domName SVGSVGElement.createSVGPoint */
  SVGPoint createSVGPoint();

  /** @domName SVGSVGElement.createSVGRect */
  SVGRect createSVGRect();

  /** @domName SVGSVGElement.createSVGTransform */
  SVGTransform createSVGTransform();

  /** @domName SVGSVGElement.createSVGTransformFromMatrix */
  SVGTransform createSVGTransformFromMatrix(SVGMatrix matrix);

  /** @domName SVGSVGElement.deselectAll */
  void deselectAll();

  /** @domName SVGSVGElement.forceRedraw */
  void forceRedraw();

  /** @domName SVGSVGElement.getCurrentTime */
  num getCurrentTime();

  /** @domName SVGSVGElement.getElementById */
  Element getElementById(String elementId);

  /** @domName SVGSVGElement.getEnclosureList */
  NodeList getEnclosureList(SVGRect rect, SVGElement referenceElement);

  /** @domName SVGSVGElement.getIntersectionList */
  NodeList getIntersectionList(SVGRect rect, SVGElement referenceElement);

  /** @domName SVGSVGElement.pauseAnimations */
  void pauseAnimations();

  /** @domName SVGSVGElement.setCurrentTime */
  void setCurrentTime(num seconds);

  /** @domName SVGSVGElement.suspendRedraw */
  int suspendRedraw(int maxWaitMilliseconds);

  /** @domName SVGSVGElement.unpauseAnimations */
  void unpauseAnimations();

  /** @domName SVGSVGElement.unsuspendRedraw */
  void unsuspendRedraw(int suspendHandleId);

  /** @domName SVGSVGElement.unsuspendRedrawAll */
  void unsuspendRedrawAll();

}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGScriptElement
interface SVGScriptElement extends SVGElement, SVGURIReference, SVGExternalResourcesRequired {

  /** @domName SVGScriptElement.type */
  String type;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGSetElement
interface SVGSetElement extends SVGAnimationElement {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGStopElement
interface SVGStopElement extends SVGElement, SVGStylable {

  /** @domName SVGStopElement.offset */
  final SVGAnimatedNumber offset;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGStringList
interface SVGStringList {

  /** @domName SVGStringList.numberOfItems */
  final int numberOfItems;

  /** @domName SVGStringList.appendItem */
  String appendItem(String item);

  /** @domName SVGStringList.clear */
  void clear();

  /** @domName SVGStringList.getItem */
  String getItem(int index);

  /** @domName SVGStringList.initialize */
  String initialize(String item);

  /** @domName SVGStringList.insertItemBefore */
  String insertItemBefore(String item, int index);

  /** @domName SVGStringList.removeItem */
  String removeItem(int index);

  /** @domName SVGStringList.replaceItem */
  String replaceItem(String item, int index);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGStylable
interface SVGStylable {

  /** @domName SVGStylable.className */
  final SVGAnimatedString $dom_svgClassName;

  /** @domName SVGStylable.style */
  final CSSStyleDeclaration style;

  /** @domName SVGStylable.getPresentationAttribute */
  CSSValue getPresentationAttribute(String name);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGStyleElement
interface SVGStyleElement extends SVGElement, SVGLangSpace {

  /** @domName SVGStyleElement.disabled */
  bool disabled;

  /** @domName SVGStyleElement.media */
  String media;

  /** @domName SVGStyleElement.title */
  String title;

  /** @domName SVGStyleElement.type */
  String type;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGSwitchElement
interface SVGSwitchElement extends SVGElement, SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable, SVGTransformable {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGSymbolElement
interface SVGSymbolElement extends SVGElement, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable, SVGFitToViewBox {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGTRefElement
interface SVGTRefElement extends SVGTextPositioningElement, SVGURIReference {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGTSpanElement
interface SVGTSpanElement extends SVGTextPositioningElement {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGTests
interface SVGTests {

  /** @domName SVGTests.requiredExtensions */
  final SVGStringList requiredExtensions;

  /** @domName SVGTests.requiredFeatures */
  final SVGStringList requiredFeatures;

  /** @domName SVGTests.systemLanguage */
  final SVGStringList systemLanguage;

  /** @domName SVGTests.hasExtension */
  bool hasExtension(String extension);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGTextContentElement
interface SVGTextContentElement extends SVGElement, SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable {

  static final int LENGTHADJUST_SPACING = 1;

  static final int LENGTHADJUST_SPACINGANDGLYPHS = 2;

  static final int LENGTHADJUST_UNKNOWN = 0;

  /** @domName SVGTextContentElement.lengthAdjust */
  final SVGAnimatedEnumeration lengthAdjust;

  /** @domName SVGTextContentElement.textLength */
  final SVGAnimatedLength textLength;

  /** @domName SVGTextContentElement.getCharNumAtPosition */
  int getCharNumAtPosition(SVGPoint point);

  /** @domName SVGTextContentElement.getComputedTextLength */
  num getComputedTextLength();

  /** @domName SVGTextContentElement.getEndPositionOfChar */
  SVGPoint getEndPositionOfChar(int offset);

  /** @domName SVGTextContentElement.getExtentOfChar */
  SVGRect getExtentOfChar(int offset);

  /** @domName SVGTextContentElement.getNumberOfChars */
  int getNumberOfChars();

  /** @domName SVGTextContentElement.getRotationOfChar */
  num getRotationOfChar(int offset);

  /** @domName SVGTextContentElement.getStartPositionOfChar */
  SVGPoint getStartPositionOfChar(int offset);

  /** @domName SVGTextContentElement.getSubStringLength */
  num getSubStringLength(int offset, int length);

  /** @domName SVGTextContentElement.selectSubString */
  void selectSubString(int offset, int length);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGTextElement
interface SVGTextElement extends SVGTextPositioningElement, SVGTransformable {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGTextPathElement
interface SVGTextPathElement extends SVGTextContentElement, SVGURIReference {

  static final int TEXTPATH_METHODTYPE_ALIGN = 1;

  static final int TEXTPATH_METHODTYPE_STRETCH = 2;

  static final int TEXTPATH_METHODTYPE_UNKNOWN = 0;

  static final int TEXTPATH_SPACINGTYPE_AUTO = 1;

  static final int TEXTPATH_SPACINGTYPE_EXACT = 2;

  static final int TEXTPATH_SPACINGTYPE_UNKNOWN = 0;

  /** @domName SVGTextPathElement.method */
  final SVGAnimatedEnumeration method;

  /** @domName SVGTextPathElement.spacing */
  final SVGAnimatedEnumeration spacing;

  /** @domName SVGTextPathElement.startOffset */
  final SVGAnimatedLength startOffset;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGTextPositioningElement
interface SVGTextPositioningElement extends SVGTextContentElement {

  /** @domName SVGTextPositioningElement.dx */
  final SVGAnimatedLengthList dx;

  /** @domName SVGTextPositioningElement.dy */
  final SVGAnimatedLengthList dy;

  /** @domName SVGTextPositioningElement.rotate */
  final SVGAnimatedNumberList rotate;

  /** @domName SVGTextPositioningElement.x */
  final SVGAnimatedLengthList x;

  /** @domName SVGTextPositioningElement.y */
  final SVGAnimatedLengthList y;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGTitleElement
interface SVGTitleElement extends SVGElement, SVGLangSpace, SVGStylable {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGTransform
interface SVGTransform {

  static final int SVG_TRANSFORM_MATRIX = 1;

  static final int SVG_TRANSFORM_ROTATE = 4;

  static final int SVG_TRANSFORM_SCALE = 3;

  static final int SVG_TRANSFORM_SKEWX = 5;

  static final int SVG_TRANSFORM_SKEWY = 6;

  static final int SVG_TRANSFORM_TRANSLATE = 2;

  static final int SVG_TRANSFORM_UNKNOWN = 0;

  /** @domName SVGTransform.angle */
  final num angle;

  /** @domName SVGTransform.matrix */
  final SVGMatrix matrix;

  /** @domName SVGTransform.type */
  final int type;

  /** @domName SVGTransform.setMatrix */
  void setMatrix(SVGMatrix matrix);

  /** @domName SVGTransform.setRotate */
  void setRotate(num angle, num cx, num cy);

  /** @domName SVGTransform.setScale */
  void setScale(num sx, num sy);

  /** @domName SVGTransform.setSkewX */
  void setSkewX(num angle);

  /** @domName SVGTransform.setSkewY */
  void setSkewY(num angle);

  /** @domName SVGTransform.setTranslate */
  void setTranslate(num tx, num ty);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGTransformList
interface SVGTransformList {

  /** @domName SVGTransformList.numberOfItems */
  final int numberOfItems;

  /** @domName SVGTransformList.appendItem */
  SVGTransform appendItem(SVGTransform item);

  /** @domName SVGTransformList.clear */
  void clear();

  /** @domName SVGTransformList.consolidate */
  SVGTransform consolidate();

  /** @domName SVGTransformList.createSVGTransformFromMatrix */
  SVGTransform createSVGTransformFromMatrix(SVGMatrix matrix);

  /** @domName SVGTransformList.getItem */
  SVGTransform getItem(int index);

  /** @domName SVGTransformList.initialize */
  SVGTransform initialize(SVGTransform item);

  /** @domName SVGTransformList.insertItemBefore */
  SVGTransform insertItemBefore(SVGTransform item, int index);

  /** @domName SVGTransformList.removeItem */
  SVGTransform removeItem(int index);

  /** @domName SVGTransformList.replaceItem */
  SVGTransform replaceItem(SVGTransform item, int index);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGTransformable
interface SVGTransformable extends SVGLocatable {

  /** @domName SVGTransformable.transform */
  final SVGAnimatedTransformList transform;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGURIReference
interface SVGURIReference {

  /** @domName SVGURIReference.href */
  final SVGAnimatedString href;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGUnitTypes
interface SVGUnitTypes {

  static final int SVG_UNIT_TYPE_OBJECTBOUNDINGBOX = 2;

  static final int SVG_UNIT_TYPE_UNKNOWN = 0;

  static final int SVG_UNIT_TYPE_USERSPACEONUSE = 1;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGUseElement
interface SVGUseElement extends SVGElement, SVGURIReference, SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable, SVGTransformable {

  /** @domName SVGUseElement.animatedInstanceRoot */
  final SVGElementInstance animatedInstanceRoot;

  /** @domName SVGUseElement.height */
  final SVGAnimatedLength height;

  /** @domName SVGUseElement.instanceRoot */
  final SVGElementInstance instanceRoot;

  /** @domName SVGUseElement.width */
  final SVGAnimatedLength width;

  /** @domName SVGUseElement.x */
  final SVGAnimatedLength x;

  /** @domName SVGUseElement.y */
  final SVGAnimatedLength y;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGVKernElement
interface SVGVKernElement extends SVGElement {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGViewElement
interface SVGViewElement extends SVGElement, SVGExternalResourcesRequired, SVGFitToViewBox, SVGZoomAndPan {

  /** @domName SVGViewElement.viewTarget */
  final SVGStringList viewTarget;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGViewSpec
interface SVGViewSpec extends SVGZoomAndPan, SVGFitToViewBox {

  /** @domName SVGViewSpec.preserveAspectRatioString */
  final String preserveAspectRatioString;

  /** @domName SVGViewSpec.transform */
  final SVGTransformList transform;

  /** @domName SVGViewSpec.transformString */
  final String transformString;

  /** @domName SVGViewSpec.viewBoxString */
  final String viewBoxString;

  /** @domName SVGViewSpec.viewTarget */
  final SVGElement viewTarget;

  /** @domName SVGViewSpec.viewTargetString */
  final String viewTargetString;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGZoomAndPan
interface SVGZoomAndPan {

  static final int SVG_ZOOMANDPAN_DISABLE = 1;

  static final int SVG_ZOOMANDPAN_MAGNIFY = 2;

  static final int SVG_ZOOMANDPAN_UNKNOWN = 0;

  /** @domName SVGZoomAndPan.zoomAndPan */
  int zoomAndPan;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SVGZoomEvent
interface SVGZoomEvent extends UIEvent {

  /** @domName SVGZoomEvent.newScale */
  final num newScale;

  /** @domName SVGZoomEvent.newTranslate */
  final SVGPoint newTranslate;

  /** @domName SVGZoomEvent.previousScale */
  final num previousScale;

  /** @domName SVGZoomEvent.previousTranslate */
  final SVGPoint previousTranslate;

  /** @domName SVGZoomEvent.zoomRectScreen */
  final SVGRect zoomRectScreen;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName Screen
interface Screen {

  /** @domName Screen.availHeight */
  final int availHeight;

  /** @domName Screen.availLeft */
  final int availLeft;

  /** @domName Screen.availTop */
  final int availTop;

  /** @domName Screen.availWidth */
  final int availWidth;

  /** @domName Screen.colorDepth */
  final int colorDepth;

  /** @domName Screen.height */
  final int height;

  /** @domName Screen.pixelDepth */
  final int pixelDepth;

  /** @domName Screen.width */
  final int width;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLScriptElement
interface ScriptElement extends Element {

  /** @domName HTMLScriptElement.async */
  bool async;

  /** @domName HTMLScriptElement.charset */
  String charset;

  /** @domName HTMLScriptElement.crossOrigin */
  String crossOrigin;

  /** @domName HTMLScriptElement.defer */
  bool defer;

  /** @domName HTMLScriptElement.event */
  String event;

  /** @domName HTMLScriptElement.htmlFor */
  String htmlFor;

  /** @domName HTMLScriptElement.src */
  String src;

  /** @domName HTMLScriptElement.type */
  String type;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName ScriptProfile
interface ScriptProfile {

  /** @domName ScriptProfile.head */
  final ScriptProfileNode head;

  /** @domName ScriptProfile.title */
  final String title;

  /** @domName ScriptProfile.uid */
  final int uid;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName ScriptProfileNode
interface ScriptProfileNode {

  /** @domName ScriptProfileNode.callUID */
  final int callUID;

  /** @domName ScriptProfileNode.children */
  final List<ScriptProfileNode> children;

  /** @domName ScriptProfileNode.functionName */
  final String functionName;

  /** @domName ScriptProfileNode.lineNumber */
  final int lineNumber;

  /** @domName ScriptProfileNode.numberOfCalls */
  final int numberOfCalls;

  /** @domName ScriptProfileNode.selfTime */
  final num selfTime;

  /** @domName ScriptProfileNode.totalTime */
  final num totalTime;

  /** @domName ScriptProfileNode.url */
  final String url;

  /** @domName ScriptProfileNode.visible */
  final bool visible;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLSelectElement
interface SelectElement extends Element {

  /** @domName HTMLSelectElement.autofocus */
  bool autofocus;

  /** @domName HTMLSelectElement.disabled */
  bool disabled;

  /** @domName HTMLSelectElement.form */
  final FormElement form;

  /** @domName HTMLSelectElement.labels */
  final NodeList labels;

  /** @domName HTMLSelectElement.length */
  int length;

  /** @domName HTMLSelectElement.multiple */
  bool multiple;

  /** @domName HTMLSelectElement.name */
  String name;

  /** @domName HTMLSelectElement.options */
  final HTMLOptionsCollection options;

  /** @domName HTMLSelectElement.required */
  bool required;

  /** @domName HTMLSelectElement.selectedIndex */
  int selectedIndex;

  /** @domName HTMLSelectElement.selectedOptions */
  final HTMLCollection selectedOptions;

  /** @domName HTMLSelectElement.size */
  int size;

  /** @domName HTMLSelectElement.type */
  final String type;

  /** @domName HTMLSelectElement.validationMessage */
  final String validationMessage;

  /** @domName HTMLSelectElement.validity */
  final ValidityState validity;

  /** @domName HTMLSelectElement.value */
  String value;

  /** @domName HTMLSelectElement.willValidate */
  final bool willValidate;

  /** @domName HTMLSelectElement.add */
  void add(Element element, Element before);

  /** @domName HTMLSelectElement.checkValidity */
  bool checkValidity();

  /** @domName HTMLSelectElement.item */
  Node item(int index);

  /** @domName HTMLSelectElement.namedItem */
  Node namedItem(String name);

  /** @domName HTMLSelectElement.setCustomValidity */
  void setCustomValidity(String error);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SessionDescription
interface SessionDescription default _SessionDescriptionFactoryProvider {

  SessionDescription(String sdp);

  /** @domName SessionDescription.addCandidate */
  void addCandidate(IceCandidate candidate);

  /** @domName SessionDescription.toSdp */
  String toSdp();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLShadowElement
interface ShadowElement extends Element {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName ShadowRoot
interface ShadowRoot extends DocumentFragment default _ShadowRootFactoryProvider {

  ShadowRoot(Element host);

  /** @domName ShadowRoot.activeElement */
  final Element activeElement;

  /** @domName ShadowRoot.host */
  final Element host;

  /** @domName ShadowRoot.innerHTML */
  String innerHTML;

  /** @domName ShadowRoot.selection */
  final DOMSelection selection;

  /** @domName ShadowRoot.getElementById */
  Element getElementById(String elementId);

  /** @domName ShadowRoot.getElementsByClassName */
  NodeList getElementsByClassName(String className);

  /** @domName ShadowRoot.getElementsByTagName */
  NodeList getElementsByTagName(String tagName);

  /** @domName ShadowRoot.getElementsByTagNameNS */
  NodeList getElementsByTagNameNS(String namespaceURI, String localName);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SharedWorker
interface SharedWorker extends AbstractWorker default _SharedWorkerFactoryProvider {

  SharedWorker(String scriptURL, [String name]);

  /** @domName SharedWorker.port */
  final MessagePort port;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SharedWorkerContext
interface SharedWorkerContext extends WorkerContext {

  /**
   * @domName EventTarget.addEventListener, EventTarget.removeEventListener, EventTarget.dispatchEvent
   */
  SharedWorkerContextEvents get on();

  /** @domName SharedWorkerContext.name */
  final String name;
}

interface SharedWorkerContextEvents extends WorkerContextEvents {

  EventListenerList get connect();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool SignalingCallback(String message, DeprecatedPeerConnection source);
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLSourceElement
interface SourceElement extends Element {

  /** @domName HTMLSourceElement.media */
  String media;

  /** @domName HTMLSourceElement.src */
  String src;

  /** @domName HTMLSourceElement.type */
  String type;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLSpanElement
interface SpanElement extends Element {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SpeechGrammar
interface SpeechGrammar default _SpeechGrammarFactoryProvider {

  SpeechGrammar();

  /** @domName SpeechGrammar.src */
  String src;

  /** @domName SpeechGrammar.weight */
  num weight;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SpeechGrammarList
interface SpeechGrammarList default _SpeechGrammarListFactoryProvider {

  SpeechGrammarList();

  /** @domName SpeechGrammarList.length */
  final int length;

  /** @domName SpeechGrammarList.addFromString */
  void addFromString(String string, [num weight]);

  /** @domName SpeechGrammarList.addFromUri */
  void addFromUri(String src, [num weight]);

  /** @domName SpeechGrammarList.item */
  SpeechGrammar item(int index);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SpeechInputEvent
interface SpeechInputEvent extends Event {

  /** @domName SpeechInputEvent.results */
  final SpeechInputResultList results;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SpeechInputResult
interface SpeechInputResult {

  /** @domName SpeechInputResult.confidence */
  final num confidence;

  /** @domName SpeechInputResult.utterance */
  final String utterance;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SpeechInputResultList
interface SpeechInputResultList {

  /** @domName SpeechInputResultList.length */
  final int length;

  /** @domName SpeechInputResultList.item */
  SpeechInputResult item(int index);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SpeechRecognition
interface SpeechRecognition extends EventTarget default _SpeechRecognitionFactoryProvider {

  SpeechRecognition();

  /**
   * @domName EventTarget.addEventListener, EventTarget.removeEventListener, EventTarget.dispatchEvent
   */
  SpeechRecognitionEvents get on();

  /** @domName SpeechRecognition.continuous */
  bool continuous;

  /** @domName SpeechRecognition.grammars */
  SpeechGrammarList grammars;

  /** @domName SpeechRecognition.lang */
  String lang;

  /** @domName SpeechRecognition.abort */
  void abort();

  /** @domName SpeechRecognition.addEventListener */
  void $dom_addEventListener(String type, EventListener listener, [bool useCapture]);

  /** @domName SpeechRecognition.dispatchEvent */
  bool $dom_dispatchEvent(Event evt);

  /** @domName SpeechRecognition.removeEventListener */
  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture]);

  /** @domName SpeechRecognition.start */
  void start();

  /** @domName SpeechRecognition.stop */
  void stop();
}

interface SpeechRecognitionEvents extends Events {

  EventListenerList get audioEnd();

  EventListenerList get audioStart();

  EventListenerList get end();

  EventListenerList get error();

  EventListenerList get noMatch();

  EventListenerList get result();

  EventListenerList get resultDeleted();

  EventListenerList get soundEnd();

  EventListenerList get soundStart();

  EventListenerList get speechEnd();

  EventListenerList get speechStart();

  EventListenerList get start();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SpeechRecognitionAlternative
interface SpeechRecognitionAlternative {

  /** @domName SpeechRecognitionAlternative.confidence */
  final num confidence;

  /** @domName SpeechRecognitionAlternative.transcript */
  final String transcript;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SpeechRecognitionError
interface SpeechRecognitionError {

  static final int ABORTED = 2;

  static final int AUDIO_CAPTURE = 3;

  static final int BAD_GRAMMAR = 7;

  static final int LANGUAGE_NOT_SUPPORTED = 8;

  static final int NETWORK = 4;

  static final int NOT_ALLOWED = 5;

  static final int NO_SPEECH = 1;

  static final int OTHER = 0;

  static final int SERVICE_NOT_ALLOWED = 6;

  /** @domName SpeechRecognitionError.code */
  final int code;

  /** @domName SpeechRecognitionError.message */
  final String message;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SpeechRecognitionEvent
interface SpeechRecognitionEvent extends Event {

  /** @domName SpeechRecognitionEvent.error */
  final SpeechRecognitionError error;

  /** @domName SpeechRecognitionEvent.result */
  final SpeechRecognitionResult result;

  /** @domName SpeechRecognitionEvent.resultHistory */
  final SpeechRecognitionResultList resultHistory;

  /** @domName SpeechRecognitionEvent.resultIndex */
  final int resultIndex;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SpeechRecognitionResult
interface SpeechRecognitionResult {

  /** @domName SpeechRecognitionResult.finalValue */
  final bool finalValue;

  /** @domName SpeechRecognitionResult.length */
  final int length;

  /** @domName SpeechRecognitionResult.item */
  SpeechRecognitionAlternative item(int index);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName SpeechRecognitionResultList
interface SpeechRecognitionResultList {

  /** @domName SpeechRecognitionResultList.length */
  final int length;

  /** @domName SpeechRecognitionResultList.item */
  SpeechRecognitionResult item(int index);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// @domName Storage
interface Storage extends Map<String, String> {

  /** @domName Storage.length */
  final int $dom_length;

  /** @domName Storage.clear */
  void $dom_clear();

  /** @domName Storage.getItem */
  String $dom_getItem(String key);

  /** @domName Storage.key */
  String $dom_key(int index);

  /** @domName Storage.removeItem */
  void $dom_removeItem(String key);

  /** @domName Storage.setItem */
  void $dom_setItem(String key, String data);

}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName StorageEvent
interface StorageEvent extends Event {

  /** @domName StorageEvent.key */
  final String key;

  /** @domName StorageEvent.newValue */
  final String newValue;

  /** @domName StorageEvent.oldValue */
  final String oldValue;

  /** @domName StorageEvent.storageArea */
  final Storage storageArea;

  /** @domName StorageEvent.url */
  final String url;

  /** @domName StorageEvent.initStorageEvent */
  void initStorageEvent(String typeArg, bool canBubbleArg, bool cancelableArg, String keyArg, String oldValueArg, String newValueArg, String urlArg, Storage storageAreaArg);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName StorageInfo
interface StorageInfo {

  static final int PERSISTENT = 1;

  static final int TEMPORARY = 0;

  /** @domName StorageInfo.queryUsageAndQuota */
  void queryUsageAndQuota(int storageType, [StorageInfoUsageCallback usageCallback, StorageInfoErrorCallback errorCallback]);

  /** @domName StorageInfo.requestQuota */
  void requestQuota(int storageType, int newQuotaInBytes, [StorageInfoQuotaCallback quotaCallback, StorageInfoErrorCallback errorCallback]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool StorageInfoErrorCallback(DOMException error);
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool StorageInfoQuotaCallback(int grantedQuotaInBytes);
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool StorageInfoUsageCallback(int currentUsageInBytes, int currentQuotaInBytes);
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool StringCallback(String data);
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLStyleElement
interface StyleElement extends Element {

  /** @domName HTMLStyleElement.disabled */
  bool disabled;

  /** @domName HTMLStyleElement.media */
  String media;

  /** @domName HTMLStyleElement.scoped */
  bool scoped;

  /** @domName HTMLStyleElement.sheet */
  final StyleSheet sheet;

  /** @domName HTMLStyleElement.type */
  String type;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName StyleMedia
interface StyleMedia {

  /** @domName StyleMedia.type */
  final String type;

  /** @domName StyleMedia.matchMedium */
  bool matchMedium(String mediaquery);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName StyleSheet
interface StyleSheet {

  /** @domName StyleSheet.disabled */
  bool disabled;

  /** @domName StyleSheet.href */
  final String href;

  /** @domName StyleSheet.media */
  final MediaList media;

  /** @domName StyleSheet.ownerNode */
  final Node ownerNode;

  /** @domName StyleSheet.parentStyleSheet */
  final StyleSheet parentStyleSheet;

  /** @domName StyleSheet.title */
  final String title;

  /** @domName StyleSheet.type */
  final String type;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName StyleSheetList
interface StyleSheetList extends List<StyleSheet> {

  /** @domName StyleSheetList.length */
  final int length;

  /** @domName StyleSheetList.item */
  StyleSheet item(int index);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLTableCaptionElement
interface TableCaptionElement extends Element {

  /** @domName HTMLTableCaptionElement.align */
  String align;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLTableCellElement
interface TableCellElement extends Element {

  /** @domName HTMLTableCellElement.abbr */
  String abbr;

  /** @domName HTMLTableCellElement.align */
  String align;

  /** @domName HTMLTableCellElement.axis */
  String axis;

  /** @domName HTMLTableCellElement.bgColor */
  String bgColor;

  /** @domName HTMLTableCellElement.cellIndex */
  final int cellIndex;

  /** @domName HTMLTableCellElement.ch */
  String ch;

  /** @domName HTMLTableCellElement.chOff */
  String chOff;

  /** @domName HTMLTableCellElement.colSpan */
  int colSpan;

  /** @domName HTMLTableCellElement.headers */
  String headers;

  /** @domName HTMLTableCellElement.height */
  String height;

  /** @domName HTMLTableCellElement.noWrap */
  bool noWrap;

  /** @domName HTMLTableCellElement.rowSpan */
  int rowSpan;

  /** @domName HTMLTableCellElement.scope */
  String scope;

  /** @domName HTMLTableCellElement.vAlign */
  String vAlign;

  /** @domName HTMLTableCellElement.width */
  String width;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLTableColElement
interface TableColElement extends Element {

  /** @domName HTMLTableColElement.align */
  String align;

  /** @domName HTMLTableColElement.ch */
  String ch;

  /** @domName HTMLTableColElement.chOff */
  String chOff;

  /** @domName HTMLTableColElement.span */
  int span;

  /** @domName HTMLTableColElement.vAlign */
  String vAlign;

  /** @domName HTMLTableColElement.width */
  String width;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLTableElement
interface TableElement extends Element {

  /** @domName HTMLTableElement.align */
  String align;

  /** @domName HTMLTableElement.bgColor */
  String bgColor;

  /** @domName HTMLTableElement.border */
  String border;

  /** @domName HTMLTableElement.caption */
  TableCaptionElement caption;

  /** @domName HTMLTableElement.cellPadding */
  String cellPadding;

  /** @domName HTMLTableElement.cellSpacing */
  String cellSpacing;

  /** @domName HTMLTableElement.frame */
  String frame;

  /** @domName HTMLTableElement.rows */
  final HTMLCollection rows;

  /** @domName HTMLTableElement.rules */
  String rules;

  /** @domName HTMLTableElement.summary */
  String summary;

  /** @domName HTMLTableElement.tBodies */
  final HTMLCollection tBodies;

  /** @domName HTMLTableElement.tFoot */
  TableSectionElement tFoot;

  /** @domName HTMLTableElement.tHead */
  TableSectionElement tHead;

  /** @domName HTMLTableElement.width */
  String width;

  /** @domName HTMLTableElement.createCaption */
  Element createCaption();

  /** @domName HTMLTableElement.createTFoot */
  Element createTFoot();

  /** @domName HTMLTableElement.createTHead */
  Element createTHead();

  /** @domName HTMLTableElement.deleteCaption */
  void deleteCaption();

  /** @domName HTMLTableElement.deleteRow */
  void deleteRow(int index);

  /** @domName HTMLTableElement.deleteTFoot */
  void deleteTFoot();

  /** @domName HTMLTableElement.deleteTHead */
  void deleteTHead();

  /** @domName HTMLTableElement.insertRow */
  Element insertRow(int index);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLTableRowElement
interface TableRowElement extends Element {

  /** @domName HTMLTableRowElement.align */
  String align;

  /** @domName HTMLTableRowElement.bgColor */
  String bgColor;

  /** @domName HTMLTableRowElement.cells */
  final HTMLCollection cells;

  /** @domName HTMLTableRowElement.ch */
  String ch;

  /** @domName HTMLTableRowElement.chOff */
  String chOff;

  /** @domName HTMLTableRowElement.rowIndex */
  final int rowIndex;

  /** @domName HTMLTableRowElement.sectionRowIndex */
  final int sectionRowIndex;

  /** @domName HTMLTableRowElement.vAlign */
  String vAlign;

  /** @domName HTMLTableRowElement.deleteCell */
  void deleteCell(int index);

  /** @domName HTMLTableRowElement.insertCell */
  Element insertCell(int index);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLTableSectionElement
interface TableSectionElement extends Element {

  /** @domName HTMLTableSectionElement.align */
  String align;

  /** @domName HTMLTableSectionElement.ch */
  String ch;

  /** @domName HTMLTableSectionElement.chOff */
  String chOff;

  /** @domName HTMLTableSectionElement.rows */
  final HTMLCollection rows;

  /** @domName HTMLTableSectionElement.vAlign */
  String vAlign;

  /** @domName HTMLTableSectionElement.deleteRow */
  void deleteRow(int index);

  /** @domName HTMLTableSectionElement.insertRow */
  Element insertRow(int index);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName Text
interface Text extends CharacterData default _TextFactoryProvider {

  Text(String data);

  /** @domName Text.wholeText */
  final String wholeText;

  /** @domName Text.replaceWholeText */
  Text replaceWholeText(String content);

  /** @domName Text.splitText */
  Text splitText(int offset);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLTextAreaElement
interface TextAreaElement extends Element {

  /** @domName HTMLTextAreaElement.autofocus */
  bool autofocus;

  /** @domName HTMLTextAreaElement.cols */
  int cols;

  /** @domName HTMLTextAreaElement.defaultValue */
  String defaultValue;

  /** @domName HTMLTextAreaElement.disabled */
  bool disabled;

  /** @domName HTMLTextAreaElement.form */
  final FormElement form;

  /** @domName HTMLTextAreaElement.labels */
  final NodeList labels;

  /** @domName HTMLTextAreaElement.maxLength */
  int maxLength;

  /** @domName HTMLTextAreaElement.name */
  String name;

  /** @domName HTMLTextAreaElement.placeholder */
  String placeholder;

  /** @domName HTMLTextAreaElement.readOnly */
  bool readOnly;

  /** @domName HTMLTextAreaElement.required */
  bool required;

  /** @domName HTMLTextAreaElement.rows */
  int rows;

  /** @domName HTMLTextAreaElement.selectionDirection */
  String selectionDirection;

  /** @domName HTMLTextAreaElement.selectionEnd */
  int selectionEnd;

  /** @domName HTMLTextAreaElement.selectionStart */
  int selectionStart;

  /** @domName HTMLTextAreaElement.textLength */
  final int textLength;

  /** @domName HTMLTextAreaElement.type */
  final String type;

  /** @domName HTMLTextAreaElement.validationMessage */
  final String validationMessage;

  /** @domName HTMLTextAreaElement.validity */
  final ValidityState validity;

  /** @domName HTMLTextAreaElement.value */
  String value;

  /** @domName HTMLTextAreaElement.willValidate */
  final bool willValidate;

  /** @domName HTMLTextAreaElement.wrap */
  String wrap;

  /** @domName HTMLTextAreaElement.checkValidity */
  bool checkValidity();

  /** @domName HTMLTextAreaElement.select */
  void select();

  /** @domName HTMLTextAreaElement.setCustomValidity */
  void setCustomValidity(String error);

  /** @domName HTMLTextAreaElement.setSelectionRange */
  void setSelectionRange(int start, int end, [String direction]);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName TextEvent
interface TextEvent extends UIEvent {

  /** @domName TextEvent.data */
  final String data;

  /** @domName TextEvent.initTextEvent */
  void initTextEvent(String typeArg, bool canBubbleArg, bool cancelableArg, Window viewArg, String dataArg);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName TextMetrics
interface TextMetrics {

  /** @domName TextMetrics.width */
  final num width;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName TextTrack
interface TextTrack extends EventTarget {

  /**
   * @domName EventTarget.addEventListener, EventTarget.removeEventListener, EventTarget.dispatchEvent
   */
  TextTrackEvents get on();

  static final int DISABLED = 0;

  static final int HIDDEN = 1;

  static final int SHOWING = 2;

  /** @domName TextTrack.activeCues */
  final TextTrackCueList activeCues;

  /** @domName TextTrack.cues */
  final TextTrackCueList cues;

  /** @domName TextTrack.kind */
  final String kind;

  /** @domName TextTrack.label */
  final String label;

  /** @domName TextTrack.language */
  final String language;

  /** @domName TextTrack.mode */
  int mode;

  /** @domName TextTrack.addCue */
  void addCue(TextTrackCue cue);

  /** @domName TextTrack.addEventListener */
  void $dom_addEventListener(String type, EventListener listener, [bool useCapture]);

  /** @domName TextTrack.dispatchEvent */
  bool $dom_dispatchEvent(Event evt);

  /** @domName TextTrack.removeCue */
  void removeCue(TextTrackCue cue);

  /** @domName TextTrack.removeEventListener */
  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture]);
}

interface TextTrackEvents extends Events {

  EventListenerList get cueChange();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName TextTrackCue
interface TextTrackCue extends EventTarget default _TextTrackCueFactoryProvider {

  TextTrackCue(String id, num startTime, num endTime, String text, [String settings, bool pauseOnExit]);

  /**
   * @domName EventTarget.addEventListener, EventTarget.removeEventListener, EventTarget.dispatchEvent
   */
  TextTrackCueEvents get on();

  /** @domName TextTrackCue.align */
  String align;

  /** @domName TextTrackCue.endTime */
  num endTime;

  /** @domName TextTrackCue.id */
  String id;

  /** @domName TextTrackCue.line */
  int line;

  /** @domName TextTrackCue.pauseOnExit */
  bool pauseOnExit;

  /** @domName TextTrackCue.position */
  int position;

  /** @domName TextTrackCue.size */
  int size;

  /** @domName TextTrackCue.snapToLines */
  bool snapToLines;

  /** @domName TextTrackCue.startTime */
  num startTime;

  /** @domName TextTrackCue.text */
  String text;

  /** @domName TextTrackCue.track */
  final TextTrack track;

  /** @domName TextTrackCue.vertical */
  String vertical;

  /** @domName TextTrackCue.addEventListener */
  void $dom_addEventListener(String type, EventListener listener, [bool useCapture]);

  /** @domName TextTrackCue.dispatchEvent */
  bool $dom_dispatchEvent(Event evt);

  /** @domName TextTrackCue.getCueAsHTML */
  DocumentFragment getCueAsHTML();

  /** @domName TextTrackCue.removeEventListener */
  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture]);
}

interface TextTrackCueEvents extends Events {

  EventListenerList get enter();

  EventListenerList get exit();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName TextTrackCueList
interface TextTrackCueList {

  /** @domName TextTrackCueList.length */
  final int length;

  /** @domName TextTrackCueList.getCueById */
  TextTrackCue getCueById(String id);

  /** @domName TextTrackCueList.item */
  TextTrackCue item(int index);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName TextTrackList
interface TextTrackList extends EventTarget {

  /**
   * @domName EventTarget.addEventListener, EventTarget.removeEventListener, EventTarget.dispatchEvent
   */
  TextTrackListEvents get on();

  /** @domName TextTrackList.length */
  final int length;

  /** @domName TextTrackList.addEventListener */
  void $dom_addEventListener(String type, EventListener listener, [bool useCapture]);

  /** @domName TextTrackList.dispatchEvent */
  bool $dom_dispatchEvent(Event evt);

  /** @domName TextTrackList.item */
  TextTrack item(int index);

  /** @domName TextTrackList.removeEventListener */
  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture]);
}

interface TextTrackListEvents extends Events {

  EventListenerList get addTrack();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName TimeRanges
interface TimeRanges {

  /** @domName TimeRanges.length */
  final int length;

  /** @domName TimeRanges.end */
  num end(int index);

  /** @domName TimeRanges.start */
  num start(int index);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef void TimeoutHandler();
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLTitleElement
interface TitleElement extends Element {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName Touch
interface Touch {

  /** @domName Touch.clientX */
  final int clientX;

  /** @domName Touch.clientY */
  final int clientY;

  /** @domName Touch.identifier */
  final int identifier;

  /** @domName Touch.pageX */
  final int pageX;

  /** @domName Touch.pageY */
  final int pageY;

  /** @domName Touch.screenX */
  final int screenX;

  /** @domName Touch.screenY */
  final int screenY;

  /** @domName Touch.target */
  final EventTarget target;

  /** @domName Touch.webkitForce */
  final num webkitForce;

  /** @domName Touch.webkitRadiusX */
  final int webkitRadiusX;

  /** @domName Touch.webkitRadiusY */
  final int webkitRadiusY;

  /** @domName Touch.webkitRotationAngle */
  final num webkitRotationAngle;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName TouchEvent
interface TouchEvent extends UIEvent {

  /** @domName TouchEvent.altKey */
  final bool altKey;

  /** @domName TouchEvent.changedTouches */
  final TouchList changedTouches;

  /** @domName TouchEvent.ctrlKey */
  final bool ctrlKey;

  /** @domName TouchEvent.metaKey */
  final bool metaKey;

  /** @domName TouchEvent.shiftKey */
  final bool shiftKey;

  /** @domName TouchEvent.targetTouches */
  final TouchList targetTouches;

  /** @domName TouchEvent.touches */
  final TouchList touches;

  /** @domName TouchEvent.initTouchEvent */
  void initTouchEvent(TouchList touches, TouchList targetTouches, TouchList changedTouches, String type, Window view, int screenX, int screenY, int clientX, int clientY, bool ctrlKey, bool altKey, bool shiftKey, bool metaKey);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName TouchList
interface TouchList extends List<Touch> {

  /** @domName TouchList.length */
  final int length;

  /** @domName TouchList.item */
  Touch item(int index);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLTrackElement
interface TrackElement extends Element {

  static final int ERROR = 3;

  static final int LOADED = 2;

  static final int LOADING = 1;

  static final int NONE = 0;

  /** @domName HTMLTrackElement.defaultValue */
  bool defaultValue;

  /** @domName HTMLTrackElement.kind */
  String kind;

  /** @domName HTMLTrackElement.label */
  String label;

  /** @domName HTMLTrackElement.readyState */
  final int readyState;

  /** @domName HTMLTrackElement.src */
  String src;

  /** @domName HTMLTrackElement.srclang */
  String srclang;

  /** @domName HTMLTrackElement.track */
  final TextTrack track;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName TrackEvent
interface TrackEvent extends Event {

  /** @domName TrackEvent.track */
  final Object track;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName WebKitTransitionEvent
interface TransitionEvent extends Event {

  /** @domName WebKitTransitionEvent.elapsedTime */
  final num elapsedTime;

  /** @domName WebKitTransitionEvent.propertyName */
  final String propertyName;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName TreeWalker
interface TreeWalker {

  /** @domName TreeWalker.currentNode */
  Node currentNode;

  /** @domName TreeWalker.expandEntityReferences */
  final bool expandEntityReferences;

  /** @domName TreeWalker.filter */
  final NodeFilter filter;

  /** @domName TreeWalker.root */
  final Node root;

  /** @domName TreeWalker.whatToShow */
  final int whatToShow;

  /** @domName TreeWalker.firstChild */
  Node firstChild();

  /** @domName TreeWalker.lastChild */
  Node lastChild();

  /** @domName TreeWalker.nextNode */
  Node nextNode();

  /** @domName TreeWalker.nextSibling */
  Node nextSibling();

  /** @domName TreeWalker.parentNode */
  Node parentNode();

  /** @domName TreeWalker.previousNode */
  Node previousNode();

  /** @domName TreeWalker.previousSibling */
  Node previousSibling();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName UIEvent
interface UIEvent extends Event {

  /** @domName UIEvent.charCode */
  final int charCode;

  /** @domName UIEvent.detail */
  final int detail;

  /** @domName UIEvent.keyCode */
  final int keyCode;

  /** @domName UIEvent.layerX */
  final int layerX;

  /** @domName UIEvent.layerY */
  final int layerY;

  /** @domName UIEvent.pageX */
  final int pageX;

  /** @domName UIEvent.pageY */
  final int pageY;

  /** @domName UIEvent.view */
  final Window view;

  /** @domName UIEvent.which */
  final int which;

  /** @domName UIEvent.initUIEvent */
  void initUIEvent(String type, bool canBubble, bool cancelable, Window view, int detail);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLUListElement
interface UListElement extends Element {

  /** @domName HTMLUListElement.compact */
  bool compact;

  /** @domName HTMLUListElement.type */
  String type;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName Uint16Array
interface Uint16Array extends ArrayBufferView, List<int> default _TypedArrayFactoryProvider {

  Uint16Array(int length);

  Uint16Array.fromList(List<int> list);

  Uint16Array.fromBuffer(ArrayBuffer buffer, [int byteOffset, int length]);

  static final int BYTES_PER_ELEMENT = 2;

  /** @domName Uint16Array.length */
  final int length;

  /** @domName Uint16Array.setElements */
  void setElements(Object array, [int offset]);

  /** @domName Uint16Array.subarray */
  Uint16Array subarray(int start, [int end]);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName Uint32Array
interface Uint32Array extends ArrayBufferView, List<int> default _TypedArrayFactoryProvider {

  Uint32Array(int length);

  Uint32Array.fromList(List<int> list);

  Uint32Array.fromBuffer(ArrayBuffer buffer, [int byteOffset, int length]);

  static final int BYTES_PER_ELEMENT = 4;

  /** @domName Uint32Array.length */
  final int length;

  /** @domName Uint32Array.setElements */
  void setElements(Object array, [int offset]);

  /** @domName Uint32Array.subarray */
  Uint32Array subarray(int start, [int end]);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName Uint8Array
interface Uint8Array extends ArrayBufferView, List<int> default _TypedArrayFactoryProvider {

  Uint8Array(int length);

  Uint8Array.fromList(List<int> list);

  Uint8Array.fromBuffer(ArrayBuffer buffer, [int byteOffset, int length]);

  static final int BYTES_PER_ELEMENT = 1;

  /** @domName Uint8Array.length */
  final int length;

  /** @domName Uint8Array.setElements */
  void setElements(Object array, [int offset]);

  /** @domName Uint8Array.subarray */
  Uint8Array subarray(int start, [int end]);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName Uint8ClampedArray
interface Uint8ClampedArray extends Uint8Array default _TypedArrayFactoryProvider {

  Uint8ClampedArray(int length);

  Uint8ClampedArray.fromList(List<int> list);

  Uint8ClampedArray.fromBuffer(ArrayBuffer buffer, [int byteOffset, int length]);

  /** @domName Uint8ClampedArray.length */
  final int length;

  /** @domName Uint8ClampedArray.setElements */
  void setElements(Object array, [int offset]);

  /** @domName Uint8ClampedArray.subarray */
  Uint8ClampedArray subarray(int start, [int end]);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLUnknownElement
interface UnknownElement extends Element {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName ValidityState
interface ValidityState {

  /** @domName ValidityState.customError */
  final bool customError;

  /** @domName ValidityState.patternMismatch */
  final bool patternMismatch;

  /** @domName ValidityState.rangeOverflow */
  final bool rangeOverflow;

  /** @domName ValidityState.rangeUnderflow */
  final bool rangeUnderflow;

  /** @domName ValidityState.stepMismatch */
  final bool stepMismatch;

  /** @domName ValidityState.tooLong */
  final bool tooLong;

  /** @domName ValidityState.typeMismatch */
  final bool typeMismatch;

  /** @domName ValidityState.valid */
  final bool valid;

  /** @domName ValidityState.valueMissing */
  final bool valueMissing;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName HTMLVideoElement
interface VideoElement extends MediaElement {

  /** @domName HTMLVideoElement.height */
  int height;

  /** @domName HTMLVideoElement.poster */
  String poster;

  /** @domName HTMLVideoElement.videoHeight */
  final int videoHeight;

  /** @domName HTMLVideoElement.videoWidth */
  final int videoWidth;

  /** @domName HTMLVideoElement.webkitDecodedFrameCount */
  final int webkitDecodedFrameCount;

  /** @domName HTMLVideoElement.webkitDisplayingFullscreen */
  final bool webkitDisplayingFullscreen;

  /** @domName HTMLVideoElement.webkitDroppedFrameCount */
  final int webkitDroppedFrameCount;

  /** @domName HTMLVideoElement.webkitSupportsFullscreen */
  final bool webkitSupportsFullscreen;

  /** @domName HTMLVideoElement.width */
  int width;

  /** @domName HTMLVideoElement.webkitEnterFullScreen */
  void webkitEnterFullScreen();

  /** @domName HTMLVideoElement.webkitEnterFullscreen */
  void webkitEnterFullscreen();

  /** @domName HTMLVideoElement.webkitExitFullScreen */
  void webkitExitFullScreen();

  /** @domName HTMLVideoElement.webkitExitFullscreen */
  void webkitExitFullscreen();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef void VoidCallback();
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName WaveShaperNode
interface WaveShaperNode extends AudioNode {

  /** @domName WaveShaperNode.curve */
  Float32Array curve;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName WaveTable
interface WaveTable {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName WebGLActiveInfo
interface WebGLActiveInfo {

  /** @domName WebGLActiveInfo.name */
  final String name;

  /** @domName WebGLActiveInfo.size */
  final int size;

  /** @domName WebGLActiveInfo.type */
  final int type;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName WebGLBuffer
interface WebGLBuffer {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName WebGLCompressedTextureS3TC
interface WebGLCompressedTextureS3TC {

  static final int COMPRESSED_RGBA_S3TC_DXT1_EXT = 0x83F1;

  static final int COMPRESSED_RGBA_S3TC_DXT3_EXT = 0x83F2;

  static final int COMPRESSED_RGBA_S3TC_DXT5_EXT = 0x83F3;

  static final int COMPRESSED_RGB_S3TC_DXT1_EXT = 0x83F0;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName WebGLContextAttributes
interface WebGLContextAttributes {

  /** @domName WebGLContextAttributes.alpha */
  bool alpha;

  /** @domName WebGLContextAttributes.antialias */
  bool antialias;

  /** @domName WebGLContextAttributes.depth */
  bool depth;

  /** @domName WebGLContextAttributes.premultipliedAlpha */
  bool premultipliedAlpha;

  /** @domName WebGLContextAttributes.preserveDrawingBuffer */
  bool preserveDrawingBuffer;

  /** @domName WebGLContextAttributes.stencil */
  bool stencil;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName WebGLContextEvent
interface WebGLContextEvent extends Event {

  /** @domName WebGLContextEvent.statusMessage */
  final String statusMessage;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName WebGLDebugRendererInfo
interface WebGLDebugRendererInfo {

  static final int UNMASKED_RENDERER_WEBGL = 0x9246;

  static final int UNMASKED_VENDOR_WEBGL = 0x9245;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName WebGLDebugShaders
interface WebGLDebugShaders {

  /** @domName WebGLDebugShaders.getTranslatedShaderSource */
  String getTranslatedShaderSource(WebGLShader shader);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName WebGLFramebuffer
interface WebGLFramebuffer {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName WebGLLoseContext
interface WebGLLoseContext {

  /** @domName WebGLLoseContext.loseContext */
  void loseContext();

  /** @domName WebGLLoseContext.restoreContext */
  void restoreContext();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName WebGLProgram
interface WebGLProgram {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName WebGLRenderbuffer
interface WebGLRenderbuffer {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName WebGLRenderingContext
interface WebGLRenderingContext extends CanvasRenderingContext {

  static final int ACTIVE_ATTRIBUTES = 0x8B89;

  static final int ACTIVE_TEXTURE = 0x84E0;

  static final int ACTIVE_UNIFORMS = 0x8B86;

  static final int ALIASED_LINE_WIDTH_RANGE = 0x846E;

  static final int ALIASED_POINT_SIZE_RANGE = 0x846D;

  static final int ALPHA = 0x1906;

  static final int ALPHA_BITS = 0x0D55;

  static final int ALWAYS = 0x0207;

  static final int ARRAY_BUFFER = 0x8892;

  static final int ARRAY_BUFFER_BINDING = 0x8894;

  static final int ATTACHED_SHADERS = 0x8B85;

  static final int BACK = 0x0405;

  static final int BLEND = 0x0BE2;

  static final int BLEND_COLOR = 0x8005;

  static final int BLEND_DST_ALPHA = 0x80CA;

  static final int BLEND_DST_RGB = 0x80C8;

  static final int BLEND_EQUATION = 0x8009;

  static final int BLEND_EQUATION_ALPHA = 0x883D;

  static final int BLEND_EQUATION_RGB = 0x8009;

  static final int BLEND_SRC_ALPHA = 0x80CB;

  static final int BLEND_SRC_RGB = 0x80C9;

  static final int BLUE_BITS = 0x0D54;

  static final int BOOL = 0x8B56;

  static final int BOOL_VEC2 = 0x8B57;

  static final int BOOL_VEC3 = 0x8B58;

  static final int BOOL_VEC4 = 0x8B59;

  static final int BROWSER_DEFAULT_WEBGL = 0x9244;

  static final int BUFFER_SIZE = 0x8764;

  static final int BUFFER_USAGE = 0x8765;

  static final int BYTE = 0x1400;

  static final int CCW = 0x0901;

  static final int CLAMP_TO_EDGE = 0x812F;

  static final int COLOR_ATTACHMENT0 = 0x8CE0;

  static final int COLOR_BUFFER_BIT = 0x00004000;

  static final int COLOR_CLEAR_VALUE = 0x0C22;

  static final int COLOR_WRITEMASK = 0x0C23;

  static final int COMPILE_STATUS = 0x8B81;

  static final int COMPRESSED_TEXTURE_FORMATS = 0x86A3;

  static final int CONSTANT_ALPHA = 0x8003;

  static final int CONSTANT_COLOR = 0x8001;

  static final int CONTEXT_LOST_WEBGL = 0x9242;

  static final int CULL_FACE = 0x0B44;

  static final int CULL_FACE_MODE = 0x0B45;

  static final int CURRENT_PROGRAM = 0x8B8D;

  static final int CURRENT_VERTEX_ATTRIB = 0x8626;

  static final int CW = 0x0900;

  static final int DECR = 0x1E03;

  static final int DECR_WRAP = 0x8508;

  static final int DELETE_STATUS = 0x8B80;

  static final int DEPTH_ATTACHMENT = 0x8D00;

  static final int DEPTH_BITS = 0x0D56;

  static final int DEPTH_BUFFER_BIT = 0x00000100;

  static final int DEPTH_CLEAR_VALUE = 0x0B73;

  static final int DEPTH_COMPONENT = 0x1902;

  static final int DEPTH_COMPONENT16 = 0x81A5;

  static final int DEPTH_FUNC = 0x0B74;

  static final int DEPTH_RANGE = 0x0B70;

  static final int DEPTH_STENCIL = 0x84F9;

  static final int DEPTH_STENCIL_ATTACHMENT = 0x821A;

  static final int DEPTH_TEST = 0x0B71;

  static final int DEPTH_WRITEMASK = 0x0B72;

  static final int DITHER = 0x0BD0;

  static final int DONT_CARE = 0x1100;

  static final int DST_ALPHA = 0x0304;

  static final int DST_COLOR = 0x0306;

  static final int DYNAMIC_DRAW = 0x88E8;

  static final int ELEMENT_ARRAY_BUFFER = 0x8893;

  static final int ELEMENT_ARRAY_BUFFER_BINDING = 0x8895;

  static final int EQUAL = 0x0202;

  static final int FASTEST = 0x1101;

  static final int FLOAT = 0x1406;

  static final int FLOAT_MAT2 = 0x8B5A;

  static final int FLOAT_MAT3 = 0x8B5B;

  static final int FLOAT_MAT4 = 0x8B5C;

  static final int FLOAT_VEC2 = 0x8B50;

  static final int FLOAT_VEC3 = 0x8B51;

  static final int FLOAT_VEC4 = 0x8B52;

  static final int FRAGMENT_SHADER = 0x8B30;

  static final int FRAMEBUFFER = 0x8D40;

  static final int FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = 0x8CD1;

  static final int FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 0x8CD0;

  static final int FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = 0x8CD3;

  static final int FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = 0x8CD2;

  static final int FRAMEBUFFER_BINDING = 0x8CA6;

  static final int FRAMEBUFFER_COMPLETE = 0x8CD5;

  static final int FRAMEBUFFER_INCOMPLETE_ATTACHMENT = 0x8CD6;

  static final int FRAMEBUFFER_INCOMPLETE_DIMENSIONS = 0x8CD9;

  static final int FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = 0x8CD7;

  static final int FRAMEBUFFER_UNSUPPORTED = 0x8CDD;

  static final int FRONT = 0x0404;

  static final int FRONT_AND_BACK = 0x0408;

  static final int FRONT_FACE = 0x0B46;

  static final int FUNC_ADD = 0x8006;

  static final int FUNC_REVERSE_SUBTRACT = 0x800B;

  static final int FUNC_SUBTRACT = 0x800A;

  static final int GENERATE_MIPMAP_HINT = 0x8192;

  static final int GEQUAL = 0x0206;

  static final int GREATER = 0x0204;

  static final int GREEN_BITS = 0x0D53;

  static final int HIGH_FLOAT = 0x8DF2;

  static final int HIGH_INT = 0x8DF5;

  static final int INCR = 0x1E02;

  static final int INCR_WRAP = 0x8507;

  static final int INT = 0x1404;

  static final int INT_VEC2 = 0x8B53;

  static final int INT_VEC3 = 0x8B54;

  static final int INT_VEC4 = 0x8B55;

  static final int INVALID_ENUM = 0x0500;

  static final int INVALID_FRAMEBUFFER_OPERATION = 0x0506;

  static final int INVALID_OPERATION = 0x0502;

  static final int INVALID_VALUE = 0x0501;

  static final int INVERT = 0x150A;

  static final int KEEP = 0x1E00;

  static final int LEQUAL = 0x0203;

  static final int LESS = 0x0201;

  static final int LINEAR = 0x2601;

  static final int LINEAR_MIPMAP_LINEAR = 0x2703;

  static final int LINEAR_MIPMAP_NEAREST = 0x2701;

  static final int LINES = 0x0001;

  static final int LINE_LOOP = 0x0002;

  static final int LINE_STRIP = 0x0003;

  static final int LINE_WIDTH = 0x0B21;

  static final int LINK_STATUS = 0x8B82;

  static final int LOW_FLOAT = 0x8DF0;

  static final int LOW_INT = 0x8DF3;

  static final int LUMINANCE = 0x1909;

  static final int LUMINANCE_ALPHA = 0x190A;

  static final int MAX_COMBINED_TEXTURE_IMAGE_UNITS = 0x8B4D;

  static final int MAX_CUBE_MAP_TEXTURE_SIZE = 0x851C;

  static final int MAX_FRAGMENT_UNIFORM_VECTORS = 0x8DFD;

  static final int MAX_RENDERBUFFER_SIZE = 0x84E8;

  static final int MAX_TEXTURE_IMAGE_UNITS = 0x8872;

  static final int MAX_TEXTURE_SIZE = 0x0D33;

  static final int MAX_VARYING_VECTORS = 0x8DFC;

  static final int MAX_VERTEX_ATTRIBS = 0x8869;

  static final int MAX_VERTEX_TEXTURE_IMAGE_UNITS = 0x8B4C;

  static final int MAX_VERTEX_UNIFORM_VECTORS = 0x8DFB;

  static final int MAX_VIEWPORT_DIMS = 0x0D3A;

  static final int MEDIUM_FLOAT = 0x8DF1;

  static final int MEDIUM_INT = 0x8DF4;

  static final int MIRRORED_REPEAT = 0x8370;

  static final int NEAREST = 0x2600;

  static final int NEAREST_MIPMAP_LINEAR = 0x2702;

  static final int NEAREST_MIPMAP_NEAREST = 0x2700;

  static final int NEVER = 0x0200;

  static final int NICEST = 0x1102;

  static final int NONE = 0;

  static final int NOTEQUAL = 0x0205;

  static final int NO_ERROR = 0;

  static final int ONE = 1;

  static final int ONE_MINUS_CONSTANT_ALPHA = 0x8004;

  static final int ONE_MINUS_CONSTANT_COLOR = 0x8002;

  static final int ONE_MINUS_DST_ALPHA = 0x0305;

  static final int ONE_MINUS_DST_COLOR = 0x0307;

  static final int ONE_MINUS_SRC_ALPHA = 0x0303;

  static final int ONE_MINUS_SRC_COLOR = 0x0301;

  static final int OUT_OF_MEMORY = 0x0505;

  static final int PACK_ALIGNMENT = 0x0D05;

  static final int POINTS = 0x0000;

  static final int POLYGON_OFFSET_FACTOR = 0x8038;

  static final int POLYGON_OFFSET_FILL = 0x8037;

  static final int POLYGON_OFFSET_UNITS = 0x2A00;

  static final int RED_BITS = 0x0D52;

  static final int RENDERBUFFER = 0x8D41;

  static final int RENDERBUFFER_ALPHA_SIZE = 0x8D53;

  static final int RENDERBUFFER_BINDING = 0x8CA7;

  static final int RENDERBUFFER_BLUE_SIZE = 0x8D52;

  static final int RENDERBUFFER_DEPTH_SIZE = 0x8D54;

  static final int RENDERBUFFER_GREEN_SIZE = 0x8D51;

  static final int RENDERBUFFER_HEIGHT = 0x8D43;

  static final int RENDERBUFFER_INTERNAL_FORMAT = 0x8D44;

  static final int RENDERBUFFER_RED_SIZE = 0x8D50;

  static final int RENDERBUFFER_STENCIL_SIZE = 0x8D55;

  static final int RENDERBUFFER_WIDTH = 0x8D42;

  static final int RENDERER = 0x1F01;

  static final int REPEAT = 0x2901;

  static final int REPLACE = 0x1E01;

  static final int RGB = 0x1907;

  static final int RGB565 = 0x8D62;

  static final int RGB5_A1 = 0x8057;

  static final int RGBA = 0x1908;

  static final int RGBA4 = 0x8056;

  static final int SAMPLER_2D = 0x8B5E;

  static final int SAMPLER_CUBE = 0x8B60;

  static final int SAMPLES = 0x80A9;

  static final int SAMPLE_ALPHA_TO_COVERAGE = 0x809E;

  static final int SAMPLE_BUFFERS = 0x80A8;

  static final int SAMPLE_COVERAGE = 0x80A0;

  static final int SAMPLE_COVERAGE_INVERT = 0x80AB;

  static final int SAMPLE_COVERAGE_VALUE = 0x80AA;

  static final int SCISSOR_BOX = 0x0C10;

  static final int SCISSOR_TEST = 0x0C11;

  static final int SHADER_COMPILER = 0x8DFA;

  static final int SHADER_TYPE = 0x8B4F;

  static final int SHADING_LANGUAGE_VERSION = 0x8B8C;

  static final int SHORT = 0x1402;

  static final int SRC_ALPHA = 0x0302;

  static final int SRC_ALPHA_SATURATE = 0x0308;

  static final int SRC_COLOR = 0x0300;

  static final int STATIC_DRAW = 0x88E4;

  static final int STENCIL_ATTACHMENT = 0x8D20;

  static final int STENCIL_BACK_FAIL = 0x8801;

  static final int STENCIL_BACK_FUNC = 0x8800;

  static final int STENCIL_BACK_PASS_DEPTH_FAIL = 0x8802;

  static final int STENCIL_BACK_PASS_DEPTH_PASS = 0x8803;

  static final int STENCIL_BACK_REF = 0x8CA3;

  static final int STENCIL_BACK_VALUE_MASK = 0x8CA4;

  static final int STENCIL_BACK_WRITEMASK = 0x8CA5;

  static final int STENCIL_BITS = 0x0D57;

  static final int STENCIL_BUFFER_BIT = 0x00000400;

  static final int STENCIL_CLEAR_VALUE = 0x0B91;

  static final int STENCIL_FAIL = 0x0B94;

  static final int STENCIL_FUNC = 0x0B92;

  static final int STENCIL_INDEX = 0x1901;

  static final int STENCIL_INDEX8 = 0x8D48;

  static final int STENCIL_PASS_DEPTH_FAIL = 0x0B95;

  static final int STENCIL_PASS_DEPTH_PASS = 0x0B96;

  static final int STENCIL_REF = 0x0B97;

  static final int STENCIL_TEST = 0x0B90;

  static final int STENCIL_VALUE_MASK = 0x0B93;

  static final int STENCIL_WRITEMASK = 0x0B98;

  static final int STREAM_DRAW = 0x88E0;

  static final int SUBPIXEL_BITS = 0x0D50;

  static final int TEXTURE = 0x1702;

  static final int TEXTURE0 = 0x84C0;

  static final int TEXTURE1 = 0x84C1;

  static final int TEXTURE10 = 0x84CA;

  static final int TEXTURE11 = 0x84CB;

  static final int TEXTURE12 = 0x84CC;

  static final int TEXTURE13 = 0x84CD;

  static final int TEXTURE14 = 0x84CE;

  static final int TEXTURE15 = 0x84CF;

  static final int TEXTURE16 = 0x84D0;

  static final int TEXTURE17 = 0x84D1;

  static final int TEXTURE18 = 0x84D2;

  static final int TEXTURE19 = 0x84D3;

  static final int TEXTURE2 = 0x84C2;

  static final int TEXTURE20 = 0x84D4;

  static final int TEXTURE21 = 0x84D5;

  static final int TEXTURE22 = 0x84D6;

  static final int TEXTURE23 = 0x84D7;

  static final int TEXTURE24 = 0x84D8;

  static final int TEXTURE25 = 0x84D9;

  static final int TEXTURE26 = 0x84DA;

  static final int TEXTURE27 = 0x84DB;

  static final int TEXTURE28 = 0x84DC;

  static final int TEXTURE29 = 0x84DD;

  static final int TEXTURE3 = 0x84C3;

  static final int TEXTURE30 = 0x84DE;

  static final int TEXTURE31 = 0x84DF;

  static final int TEXTURE4 = 0x84C4;

  static final int TEXTURE5 = 0x84C5;

  static final int TEXTURE6 = 0x84C6;

  static final int TEXTURE7 = 0x84C7;

  static final int TEXTURE8 = 0x84C8;

  static final int TEXTURE9 = 0x84C9;

  static final int TEXTURE_2D = 0x0DE1;

  static final int TEXTURE_BINDING_2D = 0x8069;

  static final int TEXTURE_BINDING_CUBE_MAP = 0x8514;

  static final int TEXTURE_CUBE_MAP = 0x8513;

  static final int TEXTURE_CUBE_MAP_NEGATIVE_X = 0x8516;

  static final int TEXTURE_CUBE_MAP_NEGATIVE_Y = 0x8518;

  static final int TEXTURE_CUBE_MAP_NEGATIVE_Z = 0x851A;

  static final int TEXTURE_CUBE_MAP_POSITIVE_X = 0x8515;

  static final int TEXTURE_CUBE_MAP_POSITIVE_Y = 0x8517;

  static final int TEXTURE_CUBE_MAP_POSITIVE_Z = 0x8519;

  static final int TEXTURE_MAG_FILTER = 0x2800;

  static final int TEXTURE_MIN_FILTER = 0x2801;

  static final int TEXTURE_WRAP_S = 0x2802;

  static final int TEXTURE_WRAP_T = 0x2803;

  static final int TRIANGLES = 0x0004;

  static final int TRIANGLE_FAN = 0x0006;

  static final int TRIANGLE_STRIP = 0x0005;

  static final int UNPACK_ALIGNMENT = 0x0CF5;

  static final int UNPACK_COLORSPACE_CONVERSION_WEBGL = 0x9243;

  static final int UNPACK_FLIP_Y_WEBGL = 0x9240;

  static final int UNPACK_PREMULTIPLY_ALPHA_WEBGL = 0x9241;

  static final int UNSIGNED_BYTE = 0x1401;

  static final int UNSIGNED_INT = 0x1405;

  static final int UNSIGNED_SHORT = 0x1403;

  static final int UNSIGNED_SHORT_4_4_4_4 = 0x8033;

  static final int UNSIGNED_SHORT_5_5_5_1 = 0x8034;

  static final int UNSIGNED_SHORT_5_6_5 = 0x8363;

  static final int VALIDATE_STATUS = 0x8B83;

  static final int VENDOR = 0x1F00;

  static final int VERSION = 0x1F02;

  static final int VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 0x889F;

  static final int VERTEX_ATTRIB_ARRAY_ENABLED = 0x8622;

  static final int VERTEX_ATTRIB_ARRAY_NORMALIZED = 0x886A;

  static final int VERTEX_ATTRIB_ARRAY_POINTER = 0x8645;

  static final int VERTEX_ATTRIB_ARRAY_SIZE = 0x8623;

  static final int VERTEX_ATTRIB_ARRAY_STRIDE = 0x8624;

  static final int VERTEX_ATTRIB_ARRAY_TYPE = 0x8625;

  static final int VERTEX_SHADER = 0x8B31;

  static final int VIEWPORT = 0x0BA2;

  static final int ZERO = 0;

  /** @domName WebGLRenderingContext.drawingBufferHeight */
  final int drawingBufferHeight;

  /** @domName WebGLRenderingContext.drawingBufferWidth */
  final int drawingBufferWidth;

  /** @domName WebGLRenderingContext.activeTexture */
  void activeTexture(int texture);

  /** @domName WebGLRenderingContext.attachShader */
  void attachShader(WebGLProgram program, WebGLShader shader);

  /** @domName WebGLRenderingContext.bindAttribLocation */
  void bindAttribLocation(WebGLProgram program, int index, String name);

  /** @domName WebGLRenderingContext.bindBuffer */
  void bindBuffer(int target, WebGLBuffer buffer);

  /** @domName WebGLRenderingContext.bindFramebuffer */
  void bindFramebuffer(int target, WebGLFramebuffer framebuffer);

  /** @domName WebGLRenderingContext.bindRenderbuffer */
  void bindRenderbuffer(int target, WebGLRenderbuffer renderbuffer);

  /** @domName WebGLRenderingContext.bindTexture */
  void bindTexture(int target, WebGLTexture texture);

  /** @domName WebGLRenderingContext.blendColor */
  void blendColor(num red, num green, num blue, num alpha);

  /** @domName WebGLRenderingContext.blendEquation */
  void blendEquation(int mode);

  /** @domName WebGLRenderingContext.blendEquationSeparate */
  void blendEquationSeparate(int modeRGB, int modeAlpha);

  /** @domName WebGLRenderingContext.blendFunc */
  void blendFunc(int sfactor, int dfactor);

  /** @domName WebGLRenderingContext.blendFuncSeparate */
  void blendFuncSeparate(int srcRGB, int dstRGB, int srcAlpha, int dstAlpha);

  /** @domName WebGLRenderingContext.bufferData */
  void bufferData(int target, data_OR_size, int usage);

  /** @domName WebGLRenderingContext.bufferSubData */
  void bufferSubData(int target, int offset, data);

  /** @domName WebGLRenderingContext.checkFramebufferStatus */
  int checkFramebufferStatus(int target);

  /** @domName WebGLRenderingContext.clear */
  void clear(int mask);

  /** @domName WebGLRenderingContext.clearColor */
  void clearColor(num red, num green, num blue, num alpha);

  /** @domName WebGLRenderingContext.clearDepth */
  void clearDepth(num depth);

  /** @domName WebGLRenderingContext.clearStencil */
  void clearStencil(int s);

  /** @domName WebGLRenderingContext.colorMask */
  void colorMask(bool red, bool green, bool blue, bool alpha);

  /** @domName WebGLRenderingContext.compileShader */
  void compileShader(WebGLShader shader);

  /** @domName WebGLRenderingContext.compressedTexImage2D */
  void compressedTexImage2D(int target, int level, int internalformat, int width, int height, int border, ArrayBufferView data);

  /** @domName WebGLRenderingContext.compressedTexSubImage2D */
  void compressedTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, ArrayBufferView data);

  /** @domName WebGLRenderingContext.copyTexImage2D */
  void copyTexImage2D(int target, int level, int internalformat, int x, int y, int width, int height, int border);

  /** @domName WebGLRenderingContext.copyTexSubImage2D */
  void copyTexSubImage2D(int target, int level, int xoffset, int yoffset, int x, int y, int width, int height);

  /** @domName WebGLRenderingContext.createBuffer */
  WebGLBuffer createBuffer();

  /** @domName WebGLRenderingContext.createFramebuffer */
  WebGLFramebuffer createFramebuffer();

  /** @domName WebGLRenderingContext.createProgram */
  WebGLProgram createProgram();

  /** @domName WebGLRenderingContext.createRenderbuffer */
  WebGLRenderbuffer createRenderbuffer();

  /** @domName WebGLRenderingContext.createShader */
  WebGLShader createShader(int type);

  /** @domName WebGLRenderingContext.createTexture */
  WebGLTexture createTexture();

  /** @domName WebGLRenderingContext.cullFace */
  void cullFace(int mode);

  /** @domName WebGLRenderingContext.deleteBuffer */
  void deleteBuffer(WebGLBuffer buffer);

  /** @domName WebGLRenderingContext.deleteFramebuffer */
  void deleteFramebuffer(WebGLFramebuffer framebuffer);

  /** @domName WebGLRenderingContext.deleteProgram */
  void deleteProgram(WebGLProgram program);

  /** @domName WebGLRenderingContext.deleteRenderbuffer */
  void deleteRenderbuffer(WebGLRenderbuffer renderbuffer);

  /** @domName WebGLRenderingContext.deleteShader */
  void deleteShader(WebGLShader shader);

  /** @domName WebGLRenderingContext.deleteTexture */
  void deleteTexture(WebGLTexture texture);

  /** @domName WebGLRenderingContext.depthFunc */
  void depthFunc(int func);

  /** @domName WebGLRenderingContext.depthMask */
  void depthMask(bool flag);

  /** @domName WebGLRenderingContext.depthRange */
  void depthRange(num zNear, num zFar);

  /** @domName WebGLRenderingContext.detachShader */
  void detachShader(WebGLProgram program, WebGLShader shader);

  /** @domName WebGLRenderingContext.disable */
  void disable(int cap);

  /** @domName WebGLRenderingContext.disableVertexAttribArray */
  void disableVertexAttribArray(int index);

  /** @domName WebGLRenderingContext.drawArrays */
  void drawArrays(int mode, int first, int count);

  /** @domName WebGLRenderingContext.drawElements */
  void drawElements(int mode, int count, int type, int offset);

  /** @domName WebGLRenderingContext.enable */
  void enable(int cap);

  /** @domName WebGLRenderingContext.enableVertexAttribArray */
  void enableVertexAttribArray(int index);

  /** @domName WebGLRenderingContext.finish */
  void finish();

  /** @domName WebGLRenderingContext.flush */
  void flush();

  /** @domName WebGLRenderingContext.framebufferRenderbuffer */
  void framebufferRenderbuffer(int target, int attachment, int renderbuffertarget, WebGLRenderbuffer renderbuffer);

  /** @domName WebGLRenderingContext.framebufferTexture2D */
  void framebufferTexture2D(int target, int attachment, int textarget, WebGLTexture texture, int level);

  /** @domName WebGLRenderingContext.frontFace */
  void frontFace(int mode);

  /** @domName WebGLRenderingContext.generateMipmap */
  void generateMipmap(int target);

  /** @domName WebGLRenderingContext.getActiveAttrib */
  WebGLActiveInfo getActiveAttrib(WebGLProgram program, int index);

  /** @domName WebGLRenderingContext.getActiveUniform */
  WebGLActiveInfo getActiveUniform(WebGLProgram program, int index);

  /** @domName WebGLRenderingContext.getAttachedShaders */
  List getAttachedShaders(WebGLProgram program);

  /** @domName WebGLRenderingContext.getAttribLocation */
  int getAttribLocation(WebGLProgram program, String name);

  /** @domName WebGLRenderingContext.getBufferParameter */
  Object getBufferParameter(int target, int pname);

  /** @domName WebGLRenderingContext.getContextAttributes */
  WebGLContextAttributes getContextAttributes();

  /** @domName WebGLRenderingContext.getError */
  int getError();

  /** @domName WebGLRenderingContext.getExtension */
  Object getExtension(String name);

  /** @domName WebGLRenderingContext.getFramebufferAttachmentParameter */
  Object getFramebufferAttachmentParameter(int target, int attachment, int pname);

  /** @domName WebGLRenderingContext.getParameter */
  Object getParameter(int pname);

  /** @domName WebGLRenderingContext.getProgramInfoLog */
  String getProgramInfoLog(WebGLProgram program);

  /** @domName WebGLRenderingContext.getProgramParameter */
  Object getProgramParameter(WebGLProgram program, int pname);

  /** @domName WebGLRenderingContext.getRenderbufferParameter */
  Object getRenderbufferParameter(int target, int pname);

  /** @domName WebGLRenderingContext.getShaderInfoLog */
  String getShaderInfoLog(WebGLShader shader);

  /** @domName WebGLRenderingContext.getShaderParameter */
  Object getShaderParameter(WebGLShader shader, int pname);

  /** @domName WebGLRenderingContext.getShaderPrecisionFormat */
  WebGLShaderPrecisionFormat getShaderPrecisionFormat(int shadertype, int precisiontype);

  /** @domName WebGLRenderingContext.getShaderSource */
  String getShaderSource(WebGLShader shader);

  /** @domName WebGLRenderingContext.getTexParameter */
  Object getTexParameter(int target, int pname);

  /** @domName WebGLRenderingContext.getUniform */
  Object getUniform(WebGLProgram program, WebGLUniformLocation location);

  /** @domName WebGLRenderingContext.getUniformLocation */
  WebGLUniformLocation getUniformLocation(WebGLProgram program, String name);

  /** @domName WebGLRenderingContext.getVertexAttrib */
  Object getVertexAttrib(int index, int pname);

  /** @domName WebGLRenderingContext.getVertexAttribOffset */
  int getVertexAttribOffset(int index, int pname);

  /** @domName WebGLRenderingContext.hint */
  void hint(int target, int mode);

  /** @domName WebGLRenderingContext.isBuffer */
  bool isBuffer(WebGLBuffer buffer);

  /** @domName WebGLRenderingContext.isContextLost */
  bool isContextLost();

  /** @domName WebGLRenderingContext.isEnabled */
  bool isEnabled(int cap);

  /** @domName WebGLRenderingContext.isFramebuffer */
  bool isFramebuffer(WebGLFramebuffer framebuffer);

  /** @domName WebGLRenderingContext.isProgram */
  bool isProgram(WebGLProgram program);

  /** @domName WebGLRenderingContext.isRenderbuffer */
  bool isRenderbuffer(WebGLRenderbuffer renderbuffer);

  /** @domName WebGLRenderingContext.isShader */
  bool isShader(WebGLShader shader);

  /** @domName WebGLRenderingContext.isTexture */
  bool isTexture(WebGLTexture texture);

  /** @domName WebGLRenderingContext.lineWidth */
  void lineWidth(num width);

  /** @domName WebGLRenderingContext.linkProgram */
  void linkProgram(WebGLProgram program);

  /** @domName WebGLRenderingContext.pixelStorei */
  void pixelStorei(int pname, int param);

  /** @domName WebGLRenderingContext.polygonOffset */
  void polygonOffset(num factor, num units);

  /** @domName WebGLRenderingContext.readPixels */
  void readPixels(int x, int y, int width, int height, int format, int type, ArrayBufferView pixels);

  /** @domName WebGLRenderingContext.releaseShaderCompiler */
  void releaseShaderCompiler();

  /** @domName WebGLRenderingContext.renderbufferStorage */
  void renderbufferStorage(int target, int internalformat, int width, int height);

  /** @domName WebGLRenderingContext.sampleCoverage */
  void sampleCoverage(num value, bool invert);

  /** @domName WebGLRenderingContext.scissor */
  void scissor(int x, int y, int width, int height);

  /** @domName WebGLRenderingContext.shaderSource */
  void shaderSource(WebGLShader shader, String string);

  /** @domName WebGLRenderingContext.stencilFunc */
  void stencilFunc(int func, int ref, int mask);

  /** @domName WebGLRenderingContext.stencilFuncSeparate */
  void stencilFuncSeparate(int face, int func, int ref, int mask);

  /** @domName WebGLRenderingContext.stencilMask */
  void stencilMask(int mask);

  /** @domName WebGLRenderingContext.stencilMaskSeparate */
  void stencilMaskSeparate(int face, int mask);

  /** @domName WebGLRenderingContext.stencilOp */
  void stencilOp(int fail, int zfail, int zpass);

  /** @domName WebGLRenderingContext.stencilOpSeparate */
  void stencilOpSeparate(int face, int fail, int zfail, int zpass);

  /** @domName WebGLRenderingContext.texImage2D */
  void texImage2D(int target, int level, int internalformat, int format_OR_width, int height_OR_type, border_OR_canvas_OR_image_OR_pixels_OR_video, [int format, int type, ArrayBufferView pixels]);

  /** @domName WebGLRenderingContext.texParameterf */
  void texParameterf(int target, int pname, num param);

  /** @domName WebGLRenderingContext.texParameteri */
  void texParameteri(int target, int pname, int param);

  /** @domName WebGLRenderingContext.texSubImage2D */
  void texSubImage2D(int target, int level, int xoffset, int yoffset, int format_OR_width, int height_OR_type, canvas_OR_format_OR_image_OR_pixels_OR_video, [int type, ArrayBufferView pixels]);

  /** @domName WebGLRenderingContext.uniform1f */
  void uniform1f(WebGLUniformLocation location, num x);

  /** @domName WebGLRenderingContext.uniform1fv */
  void uniform1fv(WebGLUniformLocation location, Float32Array v);

  /** @domName WebGLRenderingContext.uniform1i */
  void uniform1i(WebGLUniformLocation location, int x);

  /** @domName WebGLRenderingContext.uniform1iv */
  void uniform1iv(WebGLUniformLocation location, Int32Array v);

  /** @domName WebGLRenderingContext.uniform2f */
  void uniform2f(WebGLUniformLocation location, num x, num y);

  /** @domName WebGLRenderingContext.uniform2fv */
  void uniform2fv(WebGLUniformLocation location, Float32Array v);

  /** @domName WebGLRenderingContext.uniform2i */
  void uniform2i(WebGLUniformLocation location, int x, int y);

  /** @domName WebGLRenderingContext.uniform2iv */
  void uniform2iv(WebGLUniformLocation location, Int32Array v);

  /** @domName WebGLRenderingContext.uniform3f */
  void uniform3f(WebGLUniformLocation location, num x, num y, num z);

  /** @domName WebGLRenderingContext.uniform3fv */
  void uniform3fv(WebGLUniformLocation location, Float32Array v);

  /** @domName WebGLRenderingContext.uniform3i */
  void uniform3i(WebGLUniformLocation location, int x, int y, int z);

  /** @domName WebGLRenderingContext.uniform3iv */
  void uniform3iv(WebGLUniformLocation location, Int32Array v);

  /** @domName WebGLRenderingContext.uniform4f */
  void uniform4f(WebGLUniformLocation location, num x, num y, num z, num w);

  /** @domName WebGLRenderingContext.uniform4fv */
  void uniform4fv(WebGLUniformLocation location, Float32Array v);

  /** @domName WebGLRenderingContext.uniform4i */
  void uniform4i(WebGLUniformLocation location, int x, int y, int z, int w);

  /** @domName WebGLRenderingContext.uniform4iv */
  void uniform4iv(WebGLUniformLocation location, Int32Array v);

  /** @domName WebGLRenderingContext.uniformMatrix2fv */
  void uniformMatrix2fv(WebGLUniformLocation location, bool transpose, Float32Array array);

  /** @domName WebGLRenderingContext.uniformMatrix3fv */
  void uniformMatrix3fv(WebGLUniformLocation location, bool transpose, Float32Array array);

  /** @domName WebGLRenderingContext.uniformMatrix4fv */
  void uniformMatrix4fv(WebGLUniformLocation location, bool transpose, Float32Array array);

  /** @domName WebGLRenderingContext.useProgram */
  void useProgram(WebGLProgram program);

  /** @domName WebGLRenderingContext.validateProgram */
  void validateProgram(WebGLProgram program);

  /** @domName WebGLRenderingContext.vertexAttrib1f */
  void vertexAttrib1f(int indx, num x);

  /** @domName WebGLRenderingContext.vertexAttrib1fv */
  void vertexAttrib1fv(int indx, Float32Array values);

  /** @domName WebGLRenderingContext.vertexAttrib2f */
  void vertexAttrib2f(int indx, num x, num y);

  /** @domName WebGLRenderingContext.vertexAttrib2fv */
  void vertexAttrib2fv(int indx, Float32Array values);

  /** @domName WebGLRenderingContext.vertexAttrib3f */
  void vertexAttrib3f(int indx, num x, num y, num z);

  /** @domName WebGLRenderingContext.vertexAttrib3fv */
  void vertexAttrib3fv(int indx, Float32Array values);

  /** @domName WebGLRenderingContext.vertexAttrib4f */
  void vertexAttrib4f(int indx, num x, num y, num z, num w);

  /** @domName WebGLRenderingContext.vertexAttrib4fv */
  void vertexAttrib4fv(int indx, Float32Array values);

  /** @domName WebGLRenderingContext.vertexAttribPointer */
  void vertexAttribPointer(int indx, int size, int type, bool normalized, int stride, int offset);

  /** @domName WebGLRenderingContext.viewport */
  void viewport(int x, int y, int width, int height);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName WebGLShader
interface WebGLShader {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName WebGLShaderPrecisionFormat
interface WebGLShaderPrecisionFormat {

  /** @domName WebGLShaderPrecisionFormat.precision */
  final int precision;

  /** @domName WebGLShaderPrecisionFormat.rangeMax */
  final int rangeMax;

  /** @domName WebGLShaderPrecisionFormat.rangeMin */
  final int rangeMin;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName WebGLTexture
interface WebGLTexture {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName WebGLUniformLocation
interface WebGLUniformLocation {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName WebGLVertexArrayObjectOES
interface WebGLVertexArrayObjectOES {
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName WebKitCSSFilterValue
interface WebKitCSSFilterValue extends CSSValueList {

  static final int CSS_FILTER_BLUR = 10;

  static final int CSS_FILTER_BRIGHTNESS = 8;

  static final int CSS_FILTER_CONTRAST = 9;

  static final int CSS_FILTER_CUSTOM = 12;

  static final int CSS_FILTER_DROP_SHADOW = 11;

  static final int CSS_FILTER_GRAYSCALE = 2;

  static final int CSS_FILTER_HUE_ROTATE = 5;

  static final int CSS_FILTER_INVERT = 6;

  static final int CSS_FILTER_OPACITY = 7;

  static final int CSS_FILTER_REFERENCE = 1;

  static final int CSS_FILTER_SATURATE = 4;

  static final int CSS_FILTER_SEPIA = 3;

  /** @domName WebKitCSSFilterValue.operationType */
  final int operationType;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName WebKitCSSRegionRule
interface WebKitCSSRegionRule extends CSSRule {

  /** @domName WebKitCSSRegionRule.cssRules */
  final CSSRuleList cssRules;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName WebKitMutationObserver
interface WebKitMutationObserver {

  /** @domName WebKitMutationObserver.disconnect */
  void disconnect();

  /** @domName WebKitMutationObserver.takeRecords */
  List<MutationRecord> takeRecords();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName WebKitNamedFlow
interface WebKitNamedFlow {

  /** @domName WebKitNamedFlow.contentNodes */
  final NodeList contentNodes;

  /** @domName WebKitNamedFlow.overflow */
  final bool overflow;

  /** @domName WebKitNamedFlow.getRegionsByContentNode */
  NodeList getRegionsByContentNode(Node contentNode);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName WebSocket
interface WebSocket extends EventTarget default _WebSocketFactoryProvider {

  WebSocket(String url);

  /**
   * @domName EventTarget.addEventListener, EventTarget.removeEventListener, EventTarget.dispatchEvent
   */
  WebSocketEvents get on();

  static final int CLOSED = 3;

  static final int CLOSING = 2;

  static final int CONNECTING = 0;

  static final int OPEN = 1;

  /** @domName WebSocket.URL */
  final String URL;

  /** @domName WebSocket.binaryType */
  String binaryType;

  /** @domName WebSocket.bufferedAmount */
  final int bufferedAmount;

  /** @domName WebSocket.extensions */
  final String extensions;

  /** @domName WebSocket.protocol */
  final String protocol;

  /** @domName WebSocket.readyState */
  final int readyState;

  /** @domName WebSocket.url */
  final String url;

  /** @domName WebSocket.addEventListener */
  void $dom_addEventListener(String type, EventListener listener, [bool useCapture]);

  /** @domName WebSocket.close */
  void close([int code, String reason]);

  /** @domName WebSocket.dispatchEvent */
  bool $dom_dispatchEvent(Event evt);

  /** @domName WebSocket.removeEventListener */
  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture]);

  /** @domName WebSocket.send */
  bool send(String data);
}

interface WebSocketEvents extends Events {

  EventListenerList get close();

  EventListenerList get error();

  EventListenerList get message();

  EventListenerList get open();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName WheelEvent
interface WheelEvent extends UIEvent {

  /** @domName WheelEvent.altKey */
  final bool altKey;

  /** @domName WheelEvent.clientX */
  final int clientX;

  /** @domName WheelEvent.clientY */
  final int clientY;

  /** @domName WheelEvent.ctrlKey */
  final bool ctrlKey;

  /** @domName WheelEvent.metaKey */
  final bool metaKey;

  /** @domName WheelEvent.offsetX */
  final int offsetX;

  /** @domName WheelEvent.offsetY */
  final int offsetY;

  /** @domName WheelEvent.screenX */
  final int screenX;

  /** @domName WheelEvent.screenY */
  final int screenY;

  /** @domName WheelEvent.shiftKey */
  final bool shiftKey;

  /** @domName WheelEvent.webkitDirectionInvertedFromDevice */
  final bool webkitDirectionInvertedFromDevice;

  /** @domName WheelEvent.wheelDelta */
  final int wheelDelta;

  /** @domName WheelEvent.wheelDeltaX */
  final int wheelDeltaX;

  /** @domName WheelEvent.wheelDeltaY */
  final int wheelDeltaY;

  /** @domName WheelEvent.x */
  final int x;

  /** @domName WheelEvent.y */
  final int y;

  /** @domName WheelEvent.initWebKitWheelEvent */
  void initWebKitWheelEvent(int wheelDeltaX, int wheelDeltaY, Window view, int screenX, int screenY, int clientX, int clientY, bool ctrlKey, bool altKey, bool shiftKey, bool metaKey);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName DOMWindow
interface Window extends EventTarget {

  /**
   * Executes a [callback] after the next batch of browser layout measurements
   * has completed or would have completed if any browser layout measurements
   * had been scheduled.
   */
  void requestLayoutFrame(TimeoutHandler callback);


  /** @domName DOMWindow.webkitRequestAnimationFrame */
  int requestAnimationFrame(RequestAnimationFrameCallback callback);


  /**
   * @domName EventTarget.addEventListener, EventTarget.removeEventListener, EventTarget.dispatchEvent
   */
  WindowEvents get on();

  static final int PERSISTENT = 1;

  static final int TEMPORARY = 0;

  /** @domName DOMWindow.applicationCache */
  final DOMApplicationCache applicationCache;

  /** @domName DOMWindow.clientInformation */
  final Navigator clientInformation;

  /** @domName DOMWindow.closed */
  final bool closed;

  /** @domName DOMWindow.console */
  final Console console;

  /** @domName DOMWindow.crypto */
  final Crypto crypto;

  /** @domName DOMWindow.defaultStatus */
  String defaultStatus;

  /** @domName DOMWindow.defaultstatus */
  String defaultstatus;

  /** @domName DOMWindow.devicePixelRatio */
  final num devicePixelRatio;

  /** @domName DOMWindow.event */
  final Event event;

  /** @domName DOMWindow.frameElement */
  final Element frameElement;

  /** @domName DOMWindow.frames */
  final Window frames;

  /** @domName DOMWindow.history */
  final History history;

  /** @domName DOMWindow.innerHeight */
  final int innerHeight;

  /** @domName DOMWindow.innerWidth */
  final int innerWidth;

  /** @domName DOMWindow.length */
  final int length;

  /** @domName DOMWindow.localStorage */
  final Storage localStorage;

  /** @domName DOMWindow.location */
  Location location;

  /** @domName DOMWindow.locationbar */
  final BarInfo locationbar;

  /** @domName DOMWindow.menubar */
  final BarInfo menubar;

  /** @domName DOMWindow.name */
  String name;

  /** @domName DOMWindow.navigator */
  final Navigator navigator;

  /** @domName DOMWindow.offscreenBuffering */
  final bool offscreenBuffering;

  /** @domName DOMWindow.opener */
  final Window opener;

  /** @domName DOMWindow.outerHeight */
  final int outerHeight;

  /** @domName DOMWindow.outerWidth */
  final int outerWidth;

  /** @domName DOMWindow.pageXOffset */
  final int pageXOffset;

  /** @domName DOMWindow.pageYOffset */
  final int pageYOffset;

  /** @domName DOMWindow.parent */
  final Window parent;

  /** @domName DOMWindow.performance */
  final Performance performance;

  /** @domName DOMWindow.personalbar */
  final BarInfo personalbar;

  /** @domName DOMWindow.screen */
  final Screen screen;

  /** @domName DOMWindow.screenLeft */
  final int screenLeft;

  /** @domName DOMWindow.screenTop */
  final int screenTop;

  /** @domName DOMWindow.screenX */
  final int screenX;

  /** @domName DOMWindow.screenY */
  final int screenY;

  /** @domName DOMWindow.scrollX */
  final int scrollX;

  /** @domName DOMWindow.scrollY */
  final int scrollY;

  /** @domName DOMWindow.scrollbars */
  final BarInfo scrollbars;

  /** @domName DOMWindow.self */
  final Window self;

  /** @domName DOMWindow.sessionStorage */
  final Storage sessionStorage;

  /** @domName DOMWindow.status */
  String status;

  /** @domName DOMWindow.statusbar */
  final BarInfo statusbar;

  /** @domName DOMWindow.styleMedia */
  final StyleMedia styleMedia;

  /** @domName DOMWindow.toolbar */
  final BarInfo toolbar;

  /** @domName DOMWindow.top */
  final Window top;

  /** @domName DOMWindow.webkitIndexedDB */
  final IDBFactory webkitIndexedDB;

  /** @domName DOMWindow.webkitNotifications */
  final NotificationCenter webkitNotifications;

  /** @domName DOMWindow.webkitStorageInfo */
  final StorageInfo webkitStorageInfo;

  /** @domName DOMWindow.window */
  final Window window;

  /** @domName DOMWindow.addEventListener */
  void $dom_addEventListener(String type, EventListener listener, [bool useCapture]);

  /** @domName DOMWindow.alert */
  void alert(String message);

  /** @domName DOMWindow.atob */
  String atob(String string);

  /** @domName DOMWindow.blur */
  void blur();

  /** @domName DOMWindow.btoa */
  String btoa(String string);

  /** @domName DOMWindow.captureEvents */
  void captureEvents();

  /** @domName DOMWindow.clearInterval */
  void clearInterval(int handle);

  /** @domName DOMWindow.clearTimeout */
  void clearTimeout(int handle);

  /** @domName DOMWindow.close */
  void close();

  /** @domName DOMWindow.confirm */
  bool confirm(String message);

  /** @domName DOMWindow.dispatchEvent */
  bool $dom_dispatchEvent(Event evt);

  /** @domName DOMWindow.find */
  bool find(String string, bool caseSensitive, bool backwards, bool wrap, bool wholeWord, bool searchInFrames, bool showDialog);

  /** @domName DOMWindow.focus */
  void focus();

  /** @domName DOMWindow.getComputedStyle */
  CSSStyleDeclaration $dom_getComputedStyle(Element element, String pseudoElement);

  /** @domName DOMWindow.getMatchedCSSRules */
  CSSRuleList getMatchedCSSRules(Element element, String pseudoElement);

  /** @domName DOMWindow.getSelection */
  DOMSelection getSelection();

  /** @domName DOMWindow.matchMedia */
  MediaQueryList matchMedia(String query);

  /** @domName DOMWindow.moveBy */
  void moveBy(num x, num y);

  /** @domName DOMWindow.moveTo */
  void moveTo(num x, num y);

  /** @domName DOMWindow.open */
  Window open(String url, String name, [String options]);

  /** @domName DOMWindow.openDatabase */
  Database openDatabase(String name, String version, String displayName, int estimatedSize, [DatabaseCallback creationCallback]);

  /** @domName DOMWindow.postMessage */
  void postMessage(/*SerializedScriptValue*/ message, String targetOrigin, [List messagePorts]);

  /** @domName DOMWindow.print */
  void print();

  /** @domName DOMWindow.prompt */
  String prompt(String message, String defaultValue);

  /** @domName DOMWindow.releaseEvents */
  void releaseEvents();

  /** @domName DOMWindow.removeEventListener */
  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture]);

  /** @domName DOMWindow.resizeBy */
  void resizeBy(num x, num y);

  /** @domName DOMWindow.resizeTo */
  void resizeTo(num width, num height);

  /** @domName DOMWindow.scroll */
  void scroll(int x, int y);

  /** @domName DOMWindow.scrollBy */
  void scrollBy(int x, int y);

  /** @domName DOMWindow.scrollTo */
  void scrollTo(int x, int y);

  /** @domName DOMWindow.setInterval */
  int setInterval(TimeoutHandler handler, int timeout);

  /** @domName DOMWindow.setTimeout */
  int setTimeout(TimeoutHandler handler, int timeout);

  /** @domName DOMWindow.showModalDialog */
  Object showModalDialog(String url, [Object dialogArgs, String featureArgs]);

  /** @domName DOMWindow.stop */
  void stop();

  /** @domName DOMWindow.webkitCancelAnimationFrame */
  void webkitCancelAnimationFrame(int id);

  /** @domName DOMWindow.webkitCancelRequestAnimationFrame */
  void webkitCancelRequestAnimationFrame(int id);

  /** @domName DOMWindow.webkitConvertPointFromNodeToPage */
  Point webkitConvertPointFromNodeToPage(Node node, Point p);

  /** @domName DOMWindow.webkitConvertPointFromPageToNode */
  Point webkitConvertPointFromPageToNode(Node node, Point p);

  /** @domName DOMWindow.webkitPostMessage */
  void webkitPostMessage(/*SerializedScriptValue*/ message, String targetOrigin, [List transferList]);

  /** @domName DOMWindow.webkitRequestAnimationFrame */
  int webkitRequestAnimationFrame(RequestAnimationFrameCallback callback);

  /** @domName DOMWindow.webkitRequestFileSystem */
  void webkitRequestFileSystem(int type, int size, FileSystemCallback successCallback, [ErrorCallback errorCallback]);

  /** @domName DOMWindow.webkitResolveLocalFileSystemURL */
  void webkitResolveLocalFileSystemURL(String url, [EntryCallback successCallback, ErrorCallback errorCallback]);

}

interface WindowEvents extends Events {

  EventListenerList get abort();

  EventListenerList get animationEnd();

  EventListenerList get animationIteration();

  EventListenerList get animationStart();

  EventListenerList get beforeUnload();

  EventListenerList get blur();

  EventListenerList get canPlay();

  EventListenerList get canPlayThrough();

  EventListenerList get change();

  EventListenerList get click();

  EventListenerList get contentLoaded();

  EventListenerList get contextMenu();

  EventListenerList get deviceMotion();

  EventListenerList get deviceOrientation();

  EventListenerList get doubleClick();

  EventListenerList get drag();

  EventListenerList get dragEnd();

  EventListenerList get dragEnter();

  EventListenerList get dragLeave();

  EventListenerList get dragOver();

  EventListenerList get dragStart();

  EventListenerList get drop();

  EventListenerList get durationChange();

  EventListenerList get emptied();

  EventListenerList get ended();

  EventListenerList get error();

  EventListenerList get focus();

  EventListenerList get hashChange();

  EventListenerList get input();

  EventListenerList get invalid();

  EventListenerList get keyDown();

  EventListenerList get keyPress();

  EventListenerList get keyUp();

  EventListenerList get load();

  EventListenerList get loadStart();

  EventListenerList get loadedData();

  EventListenerList get loadedMetadata();

  EventListenerList get message();

  EventListenerList get mouseDown();

  EventListenerList get mouseMove();

  EventListenerList get mouseOut();

  EventListenerList get mouseOver();

  EventListenerList get mouseUp();

  EventListenerList get mouseWheel();

  EventListenerList get offline();

  EventListenerList get online();

  EventListenerList get pageHide();

  EventListenerList get pageShow();

  EventListenerList get pause();

  EventListenerList get play();

  EventListenerList get playing();

  EventListenerList get popState();

  EventListenerList get progress();

  EventListenerList get rateChange();

  EventListenerList get reset();

  EventListenerList get resize();

  EventListenerList get scroll();

  EventListenerList get search();

  EventListenerList get seeked();

  EventListenerList get seeking();

  EventListenerList get select();

  EventListenerList get stalled();

  EventListenerList get storage();

  EventListenerList get submit();

  EventListenerList get suspend();

  EventListenerList get timeUpdate();

  EventListenerList get touchCancel();

  EventListenerList get touchEnd();

  EventListenerList get touchMove();

  EventListenerList get touchStart();

  EventListenerList get transitionEnd();

  EventListenerList get unload();

  EventListenerList get volumeChange();

  EventListenerList get waiting();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName Worker
interface Worker extends AbstractWorker default _WorkerFactoryProvider {

  Worker(String scriptUrl);

  /**
   * @domName EventTarget.addEventListener, EventTarget.removeEventListener, EventTarget.dispatchEvent
   */
  WorkerEvents get on();

  /** @domName Worker.postMessage */
  void postMessage(/*SerializedScriptValue*/ message, [List messagePorts]);

  /** @domName Worker.terminate */
  void terminate();

  /** @domName Worker.webkitPostMessage */
  void webkitPostMessage(/*SerializedScriptValue*/ message, [List messagePorts]);
}

interface WorkerEvents extends AbstractWorkerEvents {

  EventListenerList get message();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName WorkerContext
interface WorkerContext extends EventTarget {

  /**
   * @domName EventTarget.addEventListener, EventTarget.removeEventListener, EventTarget.dispatchEvent
   */
  WorkerContextEvents get on();

  static final int PERSISTENT = 1;

  static final int TEMPORARY = 0;

  /** @domName WorkerContext.location */
  final WorkerLocation location;

  /** @domName WorkerContext.navigator */
  final WorkerNavigator navigator;

  /** @domName WorkerContext.self */
  final WorkerContext self;

  /** @domName WorkerContext.webkitIndexedDB */
  final IDBFactory webkitIndexedDB;

  /** @domName WorkerContext.webkitNotifications */
  final NotificationCenter webkitNotifications;

  /** @domName WorkerContext.addEventListener */
  void $dom_addEventListener(String type, EventListener listener, [bool useCapture]);

  /** @domName WorkerContext.clearInterval */
  void clearInterval(int handle);

  /** @domName WorkerContext.clearTimeout */
  void clearTimeout(int handle);

  /** @domName WorkerContext.close */
  void close();

  /** @domName WorkerContext.dispatchEvent */
  bool $dom_dispatchEvent(Event evt);

  /** @domName WorkerContext.importScripts */
  void importScripts();

  /** @domName WorkerContext.openDatabase */
  Database openDatabase(String name, String version, String displayName, int estimatedSize, [DatabaseCallback creationCallback]);

  /** @domName WorkerContext.openDatabaseSync */
  DatabaseSync openDatabaseSync(String name, String version, String displayName, int estimatedSize, [DatabaseCallback creationCallback]);

  /** @domName WorkerContext.removeEventListener */
  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture]);

  /** @domName WorkerContext.setInterval */
  int setInterval(TimeoutHandler handler, int timeout);

  /** @domName WorkerContext.setTimeout */
  int setTimeout(TimeoutHandler handler, int timeout);

  /** @domName WorkerContext.webkitRequestFileSystem */
  void webkitRequestFileSystem(int type, int size, [FileSystemCallback successCallback, ErrorCallback errorCallback]);

  /** @domName WorkerContext.webkitRequestFileSystemSync */
  DOMFileSystemSync webkitRequestFileSystemSync(int type, int size);

  /** @domName WorkerContext.webkitResolveLocalFileSystemSyncURL */
  EntrySync webkitResolveLocalFileSystemSyncURL(String url);

  /** @domName WorkerContext.webkitResolveLocalFileSystemURL */
  void webkitResolveLocalFileSystemURL(String url, [EntryCallback successCallback, ErrorCallback errorCallback]);
}

interface WorkerContextEvents extends Events {

  EventListenerList get error();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName WorkerLocation
interface WorkerLocation {

  /** @domName WorkerLocation.hash */
  final String hash;

  /** @domName WorkerLocation.host */
  final String host;

  /** @domName WorkerLocation.hostname */
  final String hostname;

  /** @domName WorkerLocation.href */
  final String href;

  /** @domName WorkerLocation.pathname */
  final String pathname;

  /** @domName WorkerLocation.port */
  final String port;

  /** @domName WorkerLocation.protocol */
  final String protocol;

  /** @domName WorkerLocation.search */
  final String search;

  /** @domName WorkerLocation.toString */
  String toString();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName WorkerNavigator
interface WorkerNavigator {

  /** @domName WorkerNavigator.appName */
  final String appName;

  /** @domName WorkerNavigator.appVersion */
  final String appVersion;

  /** @domName WorkerNavigator.onLine */
  final bool onLine;

  /** @domName WorkerNavigator.platform */
  final String platform;

  /** @domName WorkerNavigator.userAgent */
  final String userAgent;
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName XMLHttpRequest
interface XMLHttpRequest extends EventTarget default _XMLHttpRequestFactoryProvider {
  // TODO(rnystrom): This name should just be "get" which is valid in Dart, but
  // not correctly implemented yet. (b/4970173)
  XMLHttpRequest.get(String url, onSuccess(XMLHttpRequest request));

  XMLHttpRequest();

  /**
   * @domName EventTarget.addEventListener, EventTarget.removeEventListener, EventTarget.dispatchEvent
   */
  XMLHttpRequestEvents get on();

  static final int DONE = 4;

  static final int HEADERS_RECEIVED = 2;

  static final int LOADING = 3;

  static final int OPENED = 1;

  static final int UNSENT = 0;

  /** @domName XMLHttpRequest.asBlob */
  bool asBlob;

  /** @domName XMLHttpRequest.readyState */
  final int readyState;

  /** @domName XMLHttpRequest.response */
  final Object response;

  /** @domName XMLHttpRequest.responseBlob */
  final Blob responseBlob;

  /** @domName XMLHttpRequest.responseText */
  final String responseText;

  /** @domName XMLHttpRequest.responseType */
  String responseType;

  /** @domName XMLHttpRequest.responseXML */
  final Document responseXML;

  /** @domName XMLHttpRequest.status */
  final int status;

  /** @domName XMLHttpRequest.statusText */
  final String statusText;

  /** @domName XMLHttpRequest.upload */
  final XMLHttpRequestUpload upload;

  /** @domName XMLHttpRequest.withCredentials */
  bool withCredentials;

  /** @domName XMLHttpRequest.abort */
  void abort();

  /** @domName XMLHttpRequest.addEventListener */
  void $dom_addEventListener(String type, EventListener listener, [bool useCapture]);

  /** @domName XMLHttpRequest.dispatchEvent */
  bool $dom_dispatchEvent(Event evt);

  /** @domName XMLHttpRequest.getAllResponseHeaders */
  String getAllResponseHeaders();

  /** @domName XMLHttpRequest.getResponseHeader */
  String getResponseHeader(String header);

  /** @domName XMLHttpRequest.open */
  void open(String method, String url, [bool async, String user, String password]);

  /** @domName XMLHttpRequest.overrideMimeType */
  void overrideMimeType(String override);

  /** @domName XMLHttpRequest.removeEventListener */
  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture]);

  /** @domName XMLHttpRequest.send */
  void send([data]);

  /** @domName XMLHttpRequest.setRequestHeader */
  void setRequestHeader(String header, String value);
}

interface XMLHttpRequestEvents extends Events {

  EventListenerList get abort();

  EventListenerList get error();

  EventListenerList get load();

  EventListenerList get loadEnd();

  EventListenerList get loadStart();

  EventListenerList get progress();

  EventListenerList get readyStateChange();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName XMLHttpRequestException
interface XMLHttpRequestException {

  static final int ABORT_ERR = 102;

  static final int NETWORK_ERR = 101;

  /** @domName XMLHttpRequestException.code */
  final int code;

  /** @domName XMLHttpRequestException.message */
  final String message;

  /** @domName XMLHttpRequestException.name */
  final String name;

  /** @domName XMLHttpRequestException.toString */
  String toString();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName XMLHttpRequestProgressEvent
interface XMLHttpRequestProgressEvent extends ProgressEvent {

  /** @domName XMLHttpRequestProgressEvent.position */
  final int position;

  /** @domName XMLHttpRequestProgressEvent.totalSize */
  final int totalSize;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName XMLHttpRequestUpload
interface XMLHttpRequestUpload extends EventTarget {

  /**
   * @domName EventTarget.addEventListener, EventTarget.removeEventListener, EventTarget.dispatchEvent
   */
  XMLHttpRequestUploadEvents get on();

  /** @domName XMLHttpRequestUpload.addEventListener */
  void $dom_addEventListener(String type, EventListener listener, [bool useCapture]);

  /** @domName XMLHttpRequestUpload.dispatchEvent */
  bool $dom_dispatchEvent(Event evt);

  /** @domName XMLHttpRequestUpload.removeEventListener */
  void $dom_removeEventListener(String type, EventListener listener, [bool useCapture]);
}

interface XMLHttpRequestUploadEvents extends Events {

  EventListenerList get abort();

  EventListenerList get error();

  EventListenerList get load();

  EventListenerList get loadEnd();

  EventListenerList get loadStart();

  EventListenerList get progress();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName XMLSerializer
interface XMLSerializer default _XMLSerializerFactoryProvider {

  XMLSerializer();

  /** @domName XMLSerializer.serializeToString */
  String serializeToString(Node node);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName XPathEvaluator
interface XPathEvaluator default _XPathEvaluatorFactoryProvider {

  XPathEvaluator();

  /** @domName XPathEvaluator.createExpression */
  XPathExpression createExpression(String expression, XPathNSResolver resolver);

  /** @domName XPathEvaluator.createNSResolver */
  XPathNSResolver createNSResolver(Node nodeResolver);

  /** @domName XPathEvaluator.evaluate */
  XPathResult evaluate(String expression, Node contextNode, XPathNSResolver resolver, int type, XPathResult inResult);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName XPathException
interface XPathException {

  static final int INVALID_EXPRESSION_ERR = 51;

  static final int TYPE_ERR = 52;

  /** @domName XPathException.code */
  final int code;

  /** @domName XPathException.message */
  final String message;

  /** @domName XPathException.name */
  final String name;

  /** @domName XPathException.toString */
  String toString();
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName XPathExpression
interface XPathExpression {

  /** @domName XPathExpression.evaluate */
  XPathResult evaluate(Node contextNode, int type, XPathResult inResult);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName XPathNSResolver
interface XPathNSResolver {

  /** @domName XPathNSResolver.lookupNamespaceURI */
  String lookupNamespaceURI(String prefix);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName XPathResult
interface XPathResult {

  static final int ANY_TYPE = 0;

  static final int ANY_UNORDERED_NODE_TYPE = 8;

  static final int BOOLEAN_TYPE = 3;

  static final int FIRST_ORDERED_NODE_TYPE = 9;

  static final int NUMBER_TYPE = 1;

  static final int ORDERED_NODE_ITERATOR_TYPE = 5;

  static final int ORDERED_NODE_SNAPSHOT_TYPE = 7;

  static final int STRING_TYPE = 2;

  static final int UNORDERED_NODE_ITERATOR_TYPE = 4;

  static final int UNORDERED_NODE_SNAPSHOT_TYPE = 6;

  /** @domName XPathResult.booleanValue */
  final bool booleanValue;

  /** @domName XPathResult.invalidIteratorState */
  final bool invalidIteratorState;

  /** @domName XPathResult.numberValue */
  final num numberValue;

  /** @domName XPathResult.resultType */
  final int resultType;

  /** @domName XPathResult.singleNodeValue */
  final Node singleNodeValue;

  /** @domName XPathResult.snapshotLength */
  final int snapshotLength;

  /** @domName XPathResult.stringValue */
  final String stringValue;

  /** @domName XPathResult.iterateNext */
  Node iterateNext();

  /** @domName XPathResult.snapshotItem */
  Node snapshotItem(int index);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

/// @domName XSLTProcessor
interface XSLTProcessor default _XSLTProcessorFactoryProvider {

  XSLTProcessor();

  /** @domName XSLTProcessor.clearParameters */
  void clearParameters();

  /** @domName XSLTProcessor.getParameter */
  String getParameter(String namespaceURI, String localName);

  /** @domName XSLTProcessor.importStylesheet */
  void importStylesheet(Node stylesheet);

  /** @domName XSLTProcessor.removeParameter */
  void removeParameter(String namespaceURI, String localName);

  /** @domName XSLTProcessor.reset */
  void reset();

  /** @domName XSLTProcessor.setParameter */
  void setParameter(String namespaceURI, String localName, String value);

  /** @domName XSLTProcessor.transformToDocument */
  Document transformToDocument(Node source);

  /** @domName XSLTProcessor.transformToFragment */
  DocumentFragment transformToFragment(Node source, Document docVal);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

typedef void EventListener(Event event);
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/**
 * Defines the standard key locations returned by
 * KeyboardEvent.getKeyLocation.
 */
interface KeyLocation {

  /**
   * The event key is not distinguished as the left or right version
   * of the key, and did not originate from the numeric keypad (or did not
   * originate with a virtual key corresponding to the numeric keypad).
   */
  static final int STANDARD = 0;

  /**
   * The event key is in the left key location.
   */
  static final int LEFT = 1;

  /**
   * The event key is in the right key location.
   */
  static final int RIGHT = 2;

  /**
   * The event key originated on the numeric keypad or with a virtual key
   * corresponding to the numeric keypad.
   */
  static final int NUMPAD = 3;

  /**
   * The event key originated on a mobile device, either on a physical
   * keypad or a virtual keyboard.
   */
  static final int MOBILE = 4;

  /**
   * The event key originated on a game controller or a joystick on a mobile
   * device.
   */
  static final int JOYSTICK = 5;
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/**
 * Defines the standard keyboard identifier names for keys that are returned
 * by KeyEvent.getKeyboardIdentifier when the key does not have a direct
 * unicode mapping.
 */
interface KeyName {

  /** The Accept (Commit, OK) key */
  static final String ACCEPT = "Accept";

  /** The Add key */
  static final String ADD = "Add";

  /** The Again key */
  static final String AGAIN = "Again";

  /** The All Candidates key */
  static final String ALL_CANDIDATES = "AllCandidates";

  /** The Alphanumeric key */
  static final String ALPHANUMERIC = "Alphanumeric";

  /** The Alt (Menu) key */
  static final String ALT = "Alt";

  /** The Alt-Graph key */
  static final String ALT_GRAPH = "AltGraph";

  /** The Application key */
  static final String APPS = "Apps";

  /** The ATTN key */
  static final String ATTN = "Attn";

  /** The Browser Back key */
  static final String BROWSER_BACK = "BrowserBack";

  /** The Browser Favorites key */
  static final String BROWSER_FAVORTIES = "BrowserFavorites";

  /** The Browser Forward key */
  static final String BROWSER_FORWARD = "BrowserForward";

  /** The Browser Home key */
  static final String BROWSER_NAME = "BrowserHome";

  /** The Browser Refresh key */
  static final String BROWSER_REFRESH = "BrowserRefresh";

  /** The Browser Search key */
  static final String BROWSER_SEARCH = "BrowserSearch";

  /** The Browser Stop key */
  static final String BROWSER_STOP = "BrowserStop";

  /** The Camera key */
  static final String CAMERA = "Camera";

  /** The Caps Lock (Capital) key */
  static final String CAPS_LOCK = "CapsLock";

  /** The Clear key */
  static final String CLEAR = "Clear";

  /** The Code Input key */
  static final String CODE_INPUT = "CodeInput";

  /** The Compose key */
  static final String COMPOSE = "Compose";

  /** The Control (Ctrl) key */
  static final String CONTROL = "Control";

  /** The Crsel key */
  static final String CRSEL = "Crsel";

  /** The Convert key */
  static final String CONVERT = "Convert";

  /** The Copy key */
  static final String COPY = "Copy";

  /** The Cut key */
  static final String CUT = "Cut";

  /** The Decimal key */
  static final String DECIMAL = "Decimal";

  /** The Divide key */
  static final String DIVIDE = "Divide";

  /** The Down Arrow key */
  static final String DOWN = "Down";

  /** The diagonal Down-Left Arrow key */
  static final String DOWN_LEFT = "DownLeft";

  /** The diagonal Down-Right Arrow key */
  static final String DOWN_RIGHT = "DownRight";

  /** The Eject key */
  static final String EJECT = "Eject";

  /** The End key */
  static final String END = "End";

  /**
   * The Enter key. Note: This key value must also be used for the Return
   *  (Macintosh numpad) key
   */
  static final String ENTER = "Enter";

  /** The Erase EOF key */
  static final String ERASE_EOF= "EraseEof";

  /** The Execute key */
  static final String EXECUTE = "Execute";

  /** The Exsel key */
  static final String EXSEL = "Exsel";

  /** The Function switch key */
  static final String FN = "Fn";

  /** The F1 key */
  static final String F1 = "F1";

  /** The F2 key */
  static final String F2 = "F2";

  /** The F3 key */
  static final String F3 = "F3";

  /** The F4 key */
  static final String F4 = "F4";

  /** The F5 key */
  static final String F5 = "F5";

  /** The F6 key */
  static final String F6 = "F6";

  /** The F7 key */
  static final String F7 = "F7";

  /** The F8 key */
  static final String F8 = "F8";

  /** The F9 key */
  static final String F9 = "F9";

  /** The F10 key */
  static final String F10 = "F10";

  /** The F11 key */
  static final String F11 = "F11";

  /** The F12 key */
  static final String F12 = "F12";

  /** The F13 key */
  static final String F13 = "F13";

  /** The F14 key */
  static final String F14 = "F14";

  /** The F15 key */
  static final String F15 = "F15";

  /** The F16 key */
  static final String F16 = "F16";

  /** The F17 key */
  static final String F17 = "F17";

  /** The F18 key */
  static final String F18 = "F18";

  /** The F19 key */
  static final String F19 = "F19";

  /** The F20 key */
  static final String F20 = "F20";

  /** The F21 key */
  static final String F21 = "F21";

  /** The F22 key */
  static final String F22 = "F22";

  /** The F23 key */
  static final String F23 = "F23";

  /** The F24 key */
  static final String F24 = "F24";

  /** The Final Mode (Final) key used on some asian keyboards */
  static final String FINAL_MODE = "FinalMode";

  /** The Find key */
  static final String FIND = "Find";

  /** The Full-Width Characters key */
  static final String FULL_WIDTH = "FullWidth";

  /** The Half-Width Characters key */
  static final String HALF_WIDTH = "HalfWidth";

  /** The Hangul (Korean characters) Mode key */
  static final String HANGUL_MODE = "HangulMode";

  /** The Hanja (Korean characters) Mode key */
  static final String HANJA_MODE = "HanjaMode";

  /** The Help key */
  static final String HELP = "Help";

  /** The Hiragana (Japanese Kana characters) key */
  static final String HIRAGANA = "Hiragana";

  /** The Home key */
  static final String HOME = "Home";

  /** The Insert (Ins) key */
  static final String INSERT = "Insert";

  /** The Japanese-Hiragana key */
  static final String JAPANESE_HIRAGANA = "JapaneseHiragana";

  /** The Japanese-Katakana key */
  static final String JAPANESE_KATAKANA = "JapaneseKatakana";

  /** The Japanese-Romaji key */
  static final String JAPANESE_ROMAJI = "JapaneseRomaji";

  /** The Junja Mode key */
  static final String JUNJA_MODE = "JunjaMode";

  /** The Kana Mode (Kana Lock) key */
  static final String KANA_MODE = "KanaMode";

  /**
   * The Kanji (Japanese name for ideographic characters of Chinese origin)
   * Mode key
   */
  static final String KANJI_MODE = "KanjiMode";

  /** The Katakana (Japanese Kana characters) key */
  static final String KATAKANA = "Katakana";

  /** The Start Application One key */
  static final String LAUNCH_APPLICATION_1 = "LaunchApplication1";

  /** The Start Application Two key */
  static final String LAUNCH_APPLICATION_2 = "LaunchApplication2";

  /** The Start Mail key */
  static final String LAUNCH_MAIL = "LaunchMail";

  /** The Left Arrow key */
  static final String LEFT = "Left";

  /** The Menu key */
  static final String MENU = "Menu";

  /**
   * The Meta key. Note: This key value shall be also used for the Apple
   * Command key
   */
  static final String META = "Meta";

  /** The Media Next Track key */
  static final String MEDIA_NEXT_TRACK = "MediaNextTrack";

  /** The Media Play Pause key */
  static final String MEDIA_PAUSE_PLAY = "MediaPlayPause";

  /** The Media Previous Track key */
  static final String MEDIA_PREVIOUS_TRACK = "MediaPreviousTrack";

  /** The Media Stop key */
  static final String MEDIA_STOP = "MediaStop";

  /** The Mode Change key */
  static final String MODE_CHANGE = "ModeChange";

  /** The Next Candidate function key */
  static final String NEXT_CANDIDATE = "NextCandidate";

  /** The Nonconvert (Don't Convert) key */
  static final String NON_CONVERT = "Nonconvert";

  /** The Number Lock key */
  static final String NUM_LOCK = "NumLock";

  /** The Page Down (Next) key */
  static final String PAGE_DOWN = "PageDown";

  /** The Page Up key */
  static final String PAGE_UP = "PageUp";

  /** The Paste key */
  static final String PASTE = "Paste";

  /** The Pause key */
  static final String PAUSE = "Pause";

  /** The Play key */
  static final String PLAY = "Play";

  /**
   * The Power key. Note: Some devices may not expose this key to the
   * operating environment
   */
  static final String POWER = "Power";

  /** The Previous Candidate function key */
  static final String PREVIOUS_CANDIDATE = "PreviousCandidate";

  /** The Print Screen (PrintScrn, SnapShot) key */
  static final String PRINT_SCREEN = "PrintScreen";

  /** The Process key */
  static final String PROCESS = "Process";

  /** The Props key */
  static final String PROPS = "Props";

  /** The Right Arrow key */
  static final String RIGHT = "Right";

  /** The Roman Characters function key */
  static final String ROMAN_CHARACTERS = "RomanCharacters";

  /** The Scroll Lock key */
  static final String SCROLL = "Scroll";

  /** The Select key */
  static final String SELECT = "Select";

  /** The Select Media key */
  static final String SELECT_MEDIA = "SelectMedia";

  /** The Separator key */
  static final String SEPARATOR = "Separator";

  /** The Shift key */
  static final String SHIFT = "Shift";

  /** The Soft1 key */
  static final String SOFT_1 = "Soft1";

  /** The Soft2 key */
  static final String SOFT_2 = "Soft2";

  /** The Soft3 key */
  static final String SOFT_3 = "Soft3";

  /** The Soft4 key */
  static final String SOFT_4 = "Soft4";

  /** The Stop key */
  static final String STOP = "Stop";

  /** The Subtract key */
  static final String SUBTRACT = "Subtract";

  /** The Symbol Lock key */
  static final String SYMBOL_LOCK = "SymbolLock";

  /** The Up Arrow key */
  static final String UP = "Up";

  /** The diagonal Up-Left Arrow key */
  static final String UP_LEFT = "UpLeft";

  /** The diagonal Up-Right Arrow key */
  static final String UP_RIGHT = "UpRight";

  /** The Undo key */
  static final String UNDO = "Undo";

  /** The Volume Down key */
  static final String VOLUME_DOWN = "VolumeDown";

  /** The Volume Mute key */
  static final String VOLUMN_MUTE = "VolumeMute";

  /** The Volume Up key */
  static final String VOLUMN_UP = "VolumeUp";

  /** The Windows Logo key */
  static final String WIN = "Win";

  /** The Zoom key */
  static final String ZOOM = "Zoom";

  /**
   * The Backspace (Back) key. Note: This key value shall be also used for the
   * key labeled 'delete' MacOS keyboards when not modified by the 'Fn' key
   */
  static final String BACKSPACE = "Backspace";

  /** The Horizontal Tabulation (Tab) key */
  static final String TAB = "Tab";

  /** The Cancel key */
  static final String CANCEL = "Cancel";

  /** The Escape (Esc) key */
  static final String ESC = "Esc";

  /** The Space (Spacebar) key:   */
  static final String SPACEBAR = "Spacebar";

  /**
   * The Delete (Del) Key. Note: This key value shall be also used for the key
   * labeled 'delete' MacOS keyboards when modified by the 'Fn' key
   */
  static final String DEL = "Del";

  /** The Combining Grave Accent (Greek Varia, Dead Grave) key */
  static final String DEAD_GRAVE = "DeadGrave";

  /**
   * The Combining Acute Accent (Stress Mark, Greek Oxia, Tonos, Dead Eacute)
   * key
   */
  static final String DEAD_EACUTE = "DeadEacute";

  /** The Combining Circumflex Accent (Hat, Dead Circumflex) key */
  static final String DEAD_CIRCUMFLEX = "DeadCircumflex";

  /** The Combining Tilde (Dead Tilde) key */
  static final String DEAD_TILDE = "DeadTilde";

  /** The Combining Macron (Long, Dead Macron) key */
  static final String DEAD_MACRON = "DeadMacron";

  /** The Combining Breve (Short, Dead Breve) key */
  static final String DEAD_BREVE = "DeadBreve";

  /** The Combining Dot Above (Derivative, Dead Above Dot) key */
  static final String DEAD_ABOVE_DOT = "DeadAboveDot";

  /**
   * The Combining Diaeresis (Double Dot Abode, Umlaut, Greek Dialytika,
   * Double Derivative, Dead Diaeresis) key
   */
  static final String DEAD_UMLAUT = "DeadUmlaut";

  /** The Combining Ring Above (Dead Above Ring) key */
  static final String DEAD_ABOVE_RING = "DeadAboveRing";

  /** The Combining Double Acute Accent (Dead Doubleacute) key */
  static final String DEAD_DOUBLEACUTE = "DeadDoubleacute";

  /** The Combining Caron (Hacek, V Above, Dead Caron) key */
  static final String DEAD_CARON = "DeadCaron";

  /** The Combining Cedilla (Dead Cedilla) key */
  static final String DEAD_CEDILLA = "DeadCedilla";

  /** The Combining Ogonek (Nasal Hook, Dead Ogonek) key */
  static final String DEAD_OGONEK = "DeadOgonek";

  /**
   * The Combining Greek Ypogegrammeni (Greek Non-Spacing Iota Below, Iota
   * Subscript, Dead Iota) key
   */
  static final String DEAD_IOTA = "DeadIota";

  /**
   * The Combining Katakana-Hiragana Voiced Sound Mark (Dead Voiced Sound) key
   */
  static final String DEAD_VOICED_SOUND = "DeadVoicedSound";

  /**
   * The Combining Katakana-Hiragana Semi-Voiced Sound Mark (Dead Semivoiced
   * Sound) key
   */
  static final String DEC_SEMIVOICED_SOUND= "DeadSemivoicedSound";

  /**
   * Key value used when an implementation is unable to identify another key
   * value, due to either hardware, platform, or software constraints
   */
  static final String UNIDENTIFIED = "Unidentified";
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/**
 * Contains the set of standard values returned by HTMLDocument.getReadyState.
 */
interface ReadyState {
  /**
   * Indicates the document is still loading and parsing.
   */
  static final String LOADING = "loading";

  /**
   * Indicates the document is finished parsing but is still loading
   * subresources.
   */
  static final String INTERACTIVE = "interactive";

  /**
   * Indicates the document and all subresources have been loaded.
   */
  static final String COMPLETE = "complete";
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/**
 * The [Collections] class implements static methods useful when
 * writing a class that implements [Collection] and the [iterator]
 * method.
 */
class _Collections {
  static void forEach(Iterable<Object> iterable, void f(Object o)) {
    for (final e in iterable) {
      f(e);
    }
  }

  static List map(Iterable<Object> source,
                  List<Object> destination,
                  f(o)) {
    for (final e in source) {
      destination.add(f(e));
    }
    return destination;
  }

  static bool some(Iterable<Object> iterable, bool f(Object o)) {
    for (final e in iterable) {
      if (f(e)) return true;
    }
    return false;
  }

  static bool every(Iterable<Object> iterable, bool f(Object o)) {
    for (final e in iterable) {
      if (!f(e)) return false;
    }
    return true;
  }

  static List filter(Iterable<Object> source,
                     List<Object> destination,
                     bool f(o)) {
    for (final e in source) {
      if (f(e)) destination.add(e);
    }
    return destination;
  }

  static bool isEmpty(Iterable<Object> iterable) {
    return !iterable.iterator().hasNext();
  }
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _XMLHttpRequestUtils {

  // Helper for factory XMLHttpRequest.get
  static XMLHttpRequest get(String url,
                            onSuccess(XMLHttpRequest request)) {
    final request = new XMLHttpRequest();
    request.open('GET', url, true);

    // TODO(terry): Validate after client login added if necessary to forward
    //              cookies to server.
    request.withCredentials = true;

    // Status 0 is for local XHR request.
    request.on.readyStateChange.add((e) {
      if (request.readyState == XMLHttpRequest.DONE &&
          (request.status == 200 || request.status == 0)) {
        onSuccess(request);
      }
    });

    request.send();

    return request;
  }
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

typedef Object ComputeValue();

class _MeasurementRequest<T> {
  final ComputeValue computeValue;
  final Completer<T> completer;
  Object value;
  bool exception = false;
  _MeasurementRequest(this.computeValue, this.completer);
}

final _MEASUREMENT_MESSAGE = "DART-MEASURE";
List<_MeasurementRequest> _pendingRequests;
List<TimeoutHandler> _pendingMeasurementFrameCallbacks;
bool _nextMeasurementFrameScheduled = false;
bool _firstMeasurementRequest = true;

void _maybeScheduleMeasurementFrame() {
  if (_nextMeasurementFrameScheduled) return;

  _nextMeasurementFrameScheduled = true;
  // postMessage gives us a way to receive a callback after the current
  // event listener has unwound but before the browser has repainted.
  if (_firstMeasurementRequest) {
    // Messages from other windows do not cause a security risk as
    // all we care about is that _onCompleteMeasurementRequests is called
    // after the current event loop is unwound and calling the function is
    // a noop when zero requests are pending.
    window.on.message.add((e) => _completeMeasurementFutures());
    _firstMeasurementRequest = false;
  }

  // TODO(jacobr): other mechanisms such as setImmediate and
  // requestAnimationFrame may work better of platforms that support them.
  // The key is we need a way to execute code immediately after the current
  // event listener queue unwinds.
  window.postMessage(_MEASUREMENT_MESSAGE, "*");
}

/**
 * Registers a [callback] which is called after the next batch of measurements
 * completes. Even if no measurements completed, the callback is triggered
 * when they would have completed to avoid confusing bugs if it happened that
 * no measurements were actually requested.
 */
void _addMeasurementFrameCallback(TimeoutHandler callback) {
  if (_pendingMeasurementFrameCallbacks === null) {
    _pendingMeasurementFrameCallbacks = <TimeoutHandler>[];
    _maybeScheduleMeasurementFrame();
  }
  _pendingMeasurementFrameCallbacks.add(callback);
}

/**
 * Returns a [Future] whose value will be the result of evaluating
 * [computeValue] during the next safe measurement interval.
 * The next safe measurement interval is after the current event loop has
 * unwound but before the browser has rendered the page.
 * It is important that the [computeValue] function only queries the html
 * layout and html in any way.
 */
Future _createMeasurementFuture(ComputeValue computeValue,
                                Completer completer) {
  if (_pendingRequests === null) {
    _pendingRequests = <_MeasurementRequest>[];
    _maybeScheduleMeasurementFrame();
  }
  _pendingRequests.add(new _MeasurementRequest(computeValue, completer));
  return completer.future;
}

/**
 * Complete all pending measurement futures evaluating them in a single batch
 * so that the the browser is guaranteed to avoid multiple layouts.
 */
void _completeMeasurementFutures() {
  if (_nextMeasurementFrameScheduled == false) {
    // Ignore spurious call to this function.
    return;
  }

  _nextMeasurementFrameScheduled = false;
  // We must compute all new values before fulfilling the futures as
  // the onComplete callbacks for the futures could modify the DOM making
  // subsequent measurement calculations expensive to compute.
  if (_pendingRequests !== null) {
    for (_MeasurementRequest request in _pendingRequests) {
      try {
        request.value = request.computeValue();
      } catch(var e) {
        request.value = e;
        request.exception = true;
      }
    }
  }

  final completedRequests = _pendingRequests;
  final readyMeasurementFrameCallbacks = _pendingMeasurementFrameCallbacks;
  _pendingRequests = null;
  _pendingMeasurementFrameCallbacks = null;
  if (completedRequests !== null) {
    for (_MeasurementRequest request in completedRequests) {
      if (request.exception) {
        request.completer.completeException(request.value);
      } else {
        request.completer.complete(request.value);
      }
    }
  }

  if (readyMeasurementFrameCallbacks !== null) {
    for (TimeoutHandler handler in readyMeasurementFrameCallbacks) {
      // TODO(jacobr): wrap each call to a handler in a try-catch block.
      handler();
    }
  }
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _EventFactoryProvider {
  factory Event(String type, [bool canBubble = true,
      bool cancelable = true]) {
    final _EventImpl e = _document.$dom_createEvent("Event");
    e.$dom_initEvent(type, canBubble, cancelable);
    return e;
  }
}

class _MouseEventFactoryProvider {
  factory MouseEvent(String type, Window view, int detail,
      int screenX, int screenY, int clientX, int clientY, int button,
      [bool canBubble = true, bool cancelable = true, bool ctrlKey = false,
      bool altKey = false, bool shiftKey = false, bool metaKey = false,
      EventTarget relatedTarget = null]) {
    final e = _document.$dom_createEvent("MouseEvent");
    e.$dom_initMouseEvent(type, canBubble, cancelable, view, detail,
        screenX, screenY, clientX, clientY, ctrlKey, altKey, shiftKey, metaKey,
        button, relatedTarget);
    return e;
  }
}

class _CSSStyleDeclarationFactoryProvider {
  factory CSSStyleDeclaration.css(String css) {
    final style = new Element.tag('div').style;
    style.cssText = css;
    return style;
  } 

  factory CSSStyleDeclaration() {
    return new CSSStyleDeclaration.css('');
  }
}

class _DocumentFragmentFactoryProvider {
  /** @domName Document.createDocumentFragment */
  factory DocumentFragment() => document.createDocumentFragment();

  factory DocumentFragment.html(String html) {
    final fragment = new DocumentFragment();
    fragment.innerHTML = html;
    return fragment;
  }

  // TODO(nweiz): enable this when XML is ported.
  // factory DocumentFragment.xml(String xml) {
  //   final fragment = new DocumentFragment();
  //   final e = new XMLElement.tag("xml");
  //   e.innerHTML = xml;
  //
  //   // Copy list first since we don't want liveness during iteration.
  //   final List nodes = new List.from(e.nodes);
  //   fragment.nodes.addAll(nodes);
  //   return fragment;
  // }

  factory DocumentFragment.svg(String svg) {
    final fragment = new DocumentFragment();
    final e = new SVGSVGElement();
    e.innerHTML = svg;

    // Copy list first since we don't want liveness during iteration.
    final List nodes = new List.from(e.nodes);
    fragment.nodes.addAll(nodes);
    return fragment;
  }
}

class _SVGElementFactoryProvider {
  factory SVGElement.tag(String tag) {
    final Element temp =
      _document.$dom_createElementNS("http://www.w3.org/2000/svg", tag);
    return temp;
  }

  factory SVGElement.svg(String svg) {
    Element parentTag;
    final match = _START_TAG_REGEXP.firstMatch(svg);
    if (match != null && match.group(1).toLowerCase() == 'svg') {
      parentTag = new Element.tag('div');
    } else {
      parentTag = new SVGSVGElement();
    }

    parentTag.innerHTML = svg;
    if (parentTag.elements.length == 1) return parentTag.nodes.removeLast();

    throw new IllegalArgumentException('SVG had ${parentTag.elements.length} ' +
        'top-level elements but 1 expected');
  }
}

class _SVGSVGElementFactoryProvider {
  factory SVGSVGElement() {
    final el = new SVGElement.tag("svg");
    // The SVG spec requires the version attribute to match the spec version
    el.attributes['version'] = "1.1";
    return el;
  }
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _AudioContextFactoryProvider {

  factory AudioContext() native '''
    var constructor = window.AudioContext || window.webkitAudioContext;
    return new constructor();
''';
}

class _PointFactoryProvider {

  factory Point(num x, num y) native 'return new WebKitPoint(x, y);';
}

class _WebSocketFactoryProvider {

  factory WebSocket(String url) native '''return new WebSocket(url);''';
}

class _TextFactoryProvider {
  factory Text(String data) native "return document.createTextNode(data);";
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _TypedArrayFactoryProvider {

  factory Float32Array(int length) => _F32(length);
  factory Float32Array.fromList(List<num> list) => _F32(ensureNative(list));
  factory Float32Array.fromBuffer(ArrayBuffer buffer,
                                  [int byteOffset = 0, int length]) {
    if (length == null) return _F32_2(buffer, byteOffset);
    return _F32_3(buffer, byteOffset, length);
  }

  factory Float64Array(int length) => _F64(length);
  factory Float64Array.fromList(List<num> list) => _F64(ensureNative(list));
  factory Float64Array.fromBuffer(ArrayBuffer buffer,
                                  [int byteOffset = 0, int length]) {
    if (length == null) return _F64_2(buffer, byteOffset);
    return _F64_3(buffer, byteOffset, length);
  }

  factory Int8Array(int length) => _I8(length);
  factory Int8Array.fromList(List<num> list) => _I8(ensureNative(list));
  factory Int8Array.fromBuffer(ArrayBuffer buffer,
                               [int byteOffset = 0, int length]) {
    if (length == null) return _I8_2(buffer, byteOffset);
    return _I8_3(buffer, byteOffset, length);
  }

  factory Int16Array(int length) => _I16(length);
  factory Int16Array.fromList(List<num> list) => _I16(ensureNative(list));
  factory Int16Array.fromBuffer(ArrayBuffer buffer,
                                [int byteOffset = 0, int length]) {
    if (length == null) return _I16_2(buffer, byteOffset);
    return _I16_3(buffer, byteOffset, length);
  }

  factory Int32Array(int length) => _I32(length);
  factory Int32Array.fromList(List<num> list) => _I32(ensureNative(list));
  factory Int32Array.fromBuffer(ArrayBuffer buffer,
                                [int byteOffset = 0, int length]) {
    if (length == null) return _I32_2(buffer, byteOffset);
    return _I32_3(buffer, byteOffset, length);
  }

  factory Uint8Array(int length) => _U8(length);
  factory Uint8Array.fromList(List<num> list) => _U8(ensureNative(list));
  factory Uint8Array.fromBuffer(ArrayBuffer buffer,
                                [int byteOffset = 0, int length]) {
    if (length == null) return _U8_2(buffer, byteOffset);
    return _U8_3(buffer, byteOffset, length);
  }

  factory Uint16Array(int length) => _U16(length);
  factory Uint16Array.fromList(List<num> list) => _U16(ensureNative(list));
  factory Uint16Array.fromBuffer(ArrayBuffer buffer,
                                 [int byteOffset = 0, int length]) {
    if (length == null) return _U16_2(buffer, byteOffset);
    return _U16_3(buffer, byteOffset, length);
  }

  factory Uint32Array(int length) => _U32(length);
  factory Uint32Array.fromList(List<num> list) => _U32(ensureNative(list));
  factory Uint32Array.fromBuffer(ArrayBuffer buffer,
                                 [int byteOffset = 0, int length]) {
    if (length == null) return _U32_2(buffer, byteOffset);
    return _U32_3(buffer, byteOffset, length);
  }

  factory Uint8ClampedArray(int length) => _U8C(length);
  factory Uint8ClampedArray.fromList(List<num> list) => _U8C(ensureNative(list));
  factory Uint8ClampedArray.fromBuffer(ArrayBuffer buffer,
                                       [int byteOffset = 0, int length]) {
    if (length == null) return _U8C_2(buffer, byteOffset);
    return _U8C_3(buffer, byteOffset, length);
  }

  static Float32Array _F32(arg) native 'return new Float32Array(arg);';
  static Float64Array _F64(arg) native 'return new Float64Array(arg);';
  static Int8Array _I8(arg) native 'return new Int8Array(arg);';
  static Int16Array _I16(arg) native 'return new Int16Array(arg);';
  static Int32Array _I32(arg) native 'return new Int32Array(arg);';
  static Uint8Array _U8(arg) native 'return new Uint8Array(arg);';
  static Uint16Array _U16(arg) native 'return new Uint16Array(arg);';
  static Uint32Array _U32(arg) native 'return new Uint32Array(arg);';
  static Uint8ClampedArray _U8C(arg) native 'return new Uint8ClampedArray(arg);';

  static Float32Array _F32_2(arg1, arg2) native 'return new Float32Array(arg1, arg2);';
  static Float64Array _F64_2(arg1, arg2) native 'return new Float64Array(arg1, arg2);';
  static Int8Array _I8_2(arg1, arg2) native 'return new Int8Array(arg1, arg2);';
  static Int16Array _I16_2(arg1, arg2) native 'return new Int16Array(arg1, arg2);';
  static Int32Array _I32_2(arg1, arg2) native 'return new Int32Array(arg1, arg2);';
  static Uint8Array _U8_2(arg1, arg2) native 'return new Uint8Array(arg1, arg2);';
  static Uint16Array _U16_2(arg1, arg2) native 'return new Uint16Array(arg1, arg2);';
  static Uint32Array _U32_2(arg1, arg2) native 'return new Uint32Array(arg1, arg2);';
  static Uint8ClampedArray _U8C_2(arg1, arg2) native 'return new Uint8ClampedArray(arg1, arg2);';

  static Float32Array _F32_3(arg1, arg2, arg3) native 'return new Float32Array(arg1, arg2, arg3);';
  static Float64Array _F64_3(arg1, arg2, arg3) native 'return new Float64Array(arg1, arg2, arg3);';
  static Int8Array _I8_3(arg1, arg2, arg3) native 'return new Int8Array(arg1, arg2, arg3);';
  static Int16Array _I16_3(arg1, arg2, arg3) native 'return new Int16Array(arg1, arg2, arg3);';
  static Int32Array _I32_3(arg1, arg2, arg3) native 'return new Int32Array(arg1, arg2, arg3);';
  static Uint8Array _U8_3(arg1, arg2, arg3) native 'return new Uint8Array(arg1, arg2, arg3);';
  static Uint16Array _U16_3(arg1, arg2, arg3) native 'return new Uint16Array(arg1, arg2, arg3);';
  static Uint32Array _U32_3(arg1, arg2, arg3) native 'return new Uint32Array(arg1, arg2, arg3);';
  static Uint8ClampedArray _U8C_3(arg1, arg2, arg3) native 'return new Uint8ClampedArray(arg1, arg2, arg3);';


  // Ensures that [list] is a JavaScript Array or a typed array.  If necessary,
  // copies the list.
  static ensureNative(List list) => list;  // TODO: make sure.
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// TODO(rnystrom): add a way to supress public classes from DartDoc output.
// TODO(jacobr): we can remove this class now that we are using the $dom_
// convention for deprecated methods rather than truly private methods.
/**
 * This class is intended for testing purposes only.
 */
class Testing {
  static void addEventListener(EventTarget target, String type, EventListener listener, bool useCapture) {
    final _EventTargetImpl targetImpl = target;
    targetImpl.$dom_addEventListener(type, listener, useCapture);
  }
  static void removeEventListener(EventTarget target, String type, EventListener listener, bool useCapture) {
    final _EventTargetImpl targetImpl = target;
    targetImpl.$dom_removeEventListener(type, listener, useCapture);
  }

}// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/**
 * Utils for device detection.
 */
class _Device {
  /**
   * Gets the browser's user agent. Using this function allows tests to inject
   * the user agent.
   * Returns the user agent.
   */
  static String get userAgent() => window.navigator.userAgent;

  /**
   * Determines if the current device is running Firefox.
   */
  static bool get isFirefox() => userAgent.contains("Firefox", 0);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Iterator for arrays with fixed size.
class _FixedSizeListIterator<T> extends _VariableSizeListIterator<T> {
  _FixedSizeListIterator(List<T> array)
      : super(array),
        _length = array.length;

  bool hasNext() => _length > _pos;

  final int _length;  // Cache array length for faster access.
}

// Iterator for arrays with variable size.
class _VariableSizeListIterator<T> implements Iterator<T> {
  _VariableSizeListIterator(List<T> array)
      : _array = array,
        _pos = 0;

  bool hasNext() => _array.length > _pos;

  T next() {
    if (!hasNext()) {
      throw const NoMoreElementsException();
    }
    return _array[_pos++];
  }

  final List<T> _array;
  int _pos;
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _Lists {

  /**
   * Returns the index in the array [a] of the given [element], starting
   * the search at index [startIndex] to [endIndex] (exclusive).
   * Returns -1 if [element] is not found.
   */
  static int indexOf(List a,
                     Object element,
                     int startIndex,
                     int endIndex) {
    if (startIndex >= a.length) {
      return -1;
    }
    if (startIndex < 0) {
      startIndex = 0;
    }
    for (int i = startIndex; i < endIndex; i++) {
      if (a[i] == element) {
        return i;
      }
    }
    return -1;
  }

  /**
   * Returns the last index in the array [a] of the given [element], starting
   * the search at index [startIndex] to 0.
   * Returns -1 if [element] is not found.
   */
  static int lastIndexOf(List a, Object element, int startIndex) {
    if (startIndex < 0) {
      return -1;
    }
    if (startIndex >= a.length) {
      startIndex = a.length - 1;
    }
    for (int i = startIndex; i >= 0; i--) {
      if (a[i] == element) {
        return i;
      }
    }
    return -1;
  }

  /**
   * Returns a sub list copy of this list, from [start] to
   * [:start + length:].
   * Returns an empty list if [length] is 0.
   * Throws an [IllegalArgumentException] if [length] is negative.
   * Throws an [IndexOutOfRangeException] if [start] or
   * [:start + length:] are out of range.
   */
  static List getRange(List a, int start, int length, List accumulator) {
    if (length < 0) throw new IllegalArgumentException('length');
    if (start < 0) throw new IndexOutOfRangeException(start);
    int end = start + length;
    if (end > a.length) throw new IndexOutOfRangeException(end);
    for (int i = start; i < end; i++) {
      accumulator.add(a[i]);
    }
    return accumulator;
  }
}
