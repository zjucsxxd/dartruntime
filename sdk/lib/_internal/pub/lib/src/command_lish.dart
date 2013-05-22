// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library command_lish;

import 'dart:async';
import 'dart:io';
import 'dart:json';
import 'dart:uri';

import 'package:args/args.dart';
import 'package:http/http.dart' as http;
import 'package:pathos/path.dart' as path;

import 'command.dart';
import 'directory_tree.dart';
import 'exit_codes.dart' as exit_codes;
import 'git.dart' as git;
import 'hosted_source.dart';
import 'http.dart';
import 'io.dart';
import 'log.dart' as log;
import 'oauth2.dart' as oauth2;
import 'utils.dart';
import 'validator.dart';

/// Handles the `lish` and `publish` pub commands.
class LishCommand extends PubCommand {
  final description = "Publish the current package to pub.dartlang.org.";
  final usage = "pub publish [options]";
  final aliases = const ["lish", "lush"];

  /// The URL of the server to which to upload the package.
  Uri get server => Uri.parse(commandOptions['server']);

  /// Whether the publish is just a preview.
  bool get dryRun => commandOptions['dry-run'];

  /// Whether the publish requires confirmation.
  bool get force => commandOptions['force'];

  LishCommand() {
    commandParser.addFlag('dry-run', abbr: 'n', negatable: false,
        help: 'Validate but do not publish the package.');
    commandParser.addFlag('force', abbr: 'f', negatable: false,
        help: 'Publish without confirmation if there are no errors.');
    commandParser.addOption('server', defaultsTo: HostedSource.DEFAULT_URL,
        help: 'The package server to which to upload this package.');
  }

  Future _publish(packageBytes) {
    var cloudStorageUrl;
    return oauth2.withClient(cache, (client) {
      // TODO(nweiz): Cloud Storage can provide an XML-formatted error. We
      // should report that error and exit.
      var newUri = server.resolve("/packages/versions/new.json");
      return client.get(newUri).then((response) {
        var parameters = parseJsonResponse(response);

        var url = _expectField(parameters, 'url', response);
        if (url is! String) invalidServerResponse(response);
        cloudStorageUrl = Uri.parse(url);
        var request = new http.MultipartRequest('POST', cloudStorageUrl);

        var fields = _expectField(parameters, 'fields', response);
        if (fields is! Map) invalidServerResponse(response);
        fields.forEach((key, value) {
          if (value is! String) invalidServerResponse(response);
          request.fields[key] = value;
        });

        request.followRedirects = false;
        request.files.add(new http.MultipartFile.fromBytes(
            'file', packageBytes, filename: 'package.tar.gz'));
        return client.send(request);
      }).then(http.Response.fromStream).then((response) {
        var location = response.headers['location'];
        if (location == null) throw new PubHttpException(response);
        return location;
      }).then((location) => client.get(location))
        .then(handleJsonSuccess);
    }).catchError((error) {
      if (error is! PubHttpException) throw error;
      var url = error.response.request.url;
      if (urisEqual(url, cloudStorageUrl)) {
        // TODO(nweiz): the response may have XML-formatted information about
        // the error. Try to parse that out once we have an easily-accessible
        // XML parser.
        throw new Exception('Failed to upload the package.');
      } else if (urisEqual(Uri.parse(url.origin), Uri.parse(server.origin))) {
        handleJsonError(error.response);
      } else {
        throw error;
      }
    });
  }

  Future onRun() {
    if (force && dryRun) {
      log.error('Cannot use both --force and --dry-run.');
      this.printUsage();
      exit(exit_codes.USAGE);
    }

    var packageBytesFuture = entrypoint.packageFiles().then((files) {
      log.fine('Archiving and publishing ${entrypoint.root}.');

      // Show the package contents so the user can verify they look OK.
      var package = entrypoint.root;
      log.message(
          'Publishing "${package.name}" ${package.version}:\n'
          '${generateTree(files, baseDir: entrypoint.root.dir)}');

      return createTarGz(files, baseDir: entrypoint.root.dir);
    }).then((stream) => stream.toBytes());

    // Validate the package.
    return _validate(packageBytesFuture.then((bytes) => bytes.length))
        .then((isValid) {
       if (isValid) return packageBytesFuture.then(_publish);
    });
  }

  /// Returns the value associated with [key] in [map]. Throws a user-friendly
  /// error if [map] doens't contain [key].
  _expectField(Map map, String key, http.Response response) {
    if (map.containsKey(key)) return map[key];
    invalidServerResponse(response);
  }

  /// Validates the package. Completes to false if the upload should not
  /// proceed.
  Future<bool> _validate(Future<int> packageSize) {
    return Validator.runAll(entrypoint, packageSize).then((pair) {
      var errors = pair.first;
      var warnings = pair.last;

      if (!errors.isEmpty) {
        log.error("Sorry, your package is missing "
            "${(errors.length > 1) ? 'some requirements' : 'a requirement'} "
            "and can't be published yet.\nFor more information, see: "
            "http://pub.dartlang.org/doc/pub-lish.html.\n");
        return false;
      }

      if (force) return true;

      if (dryRun) {
        var s = warnings.length == 1 ? '' : 's';
        log.warning("Package has ${warnings.length} warning$s.");
        return false;
      }

      var message = 'Looks great! Are you ready to upload your package';

      if (!warnings.isEmpty) {
        var s = warnings.length == 1 ? '' : 's';
        message = "Package has ${warnings.length} warning$s. Upload anyway";
      }

      return confirm(message).then((confirmed) {
        if (!confirmed) {
          log.error("Package upload canceled.");
          return false;
        }
        return true;
      });
    });
  }
}
