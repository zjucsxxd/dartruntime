// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dart.io;

/**
 * Web socket status codes used when closing a web socket connection.
 */
abstract class WebSocketStatus {
  static const int NORMAL_CLOSURE = 1000;
  static const int GOING_AWAY = 1001;
  static const int PROTOCOL_ERROR = 1002;
  static const int UNSUPPORTED_DATA = 1003;
  static const int RESERVED_1004  = 1004;
  static const int NO_STATUS_RECEIVED = 1005;
  static const int ABNORMAL_CLOSURE = 1006;
  static const int INVALID_FRAME_PAYLOAD_DATA = 1007;
  static const int POLICY_VIOLATION = 1008;
  static const int MESSAGE_TOO_BIG = 1009;
  static const int MISSING_MANDATORY_EXTENSION = 1010;
  static const int INTERNAL_SERVER_ERROR = 1011;
  static const int RESERVED_1015 = 1015;
}

/**
 * The [WebSocketTransformer] is implemented as a stream transformer that
 * transforms a stream of HttpRequest into a stream of WebSockets by upgrading
 * each HttpRequest from the HTTP or HTTPS server, to the WebSocket protocol.
 *
 * Example of usage:
 *
 *     server.transform(new WebSocketTransformer()).listen((webSocket) => ...);
 *
 * or
 *
 *     server
 *         .where((request) => request.uri.scheme == "ws")
 *         .transform(new WebSocketTransformer()).listen((webSocket) => ...);
 *
 * This transformer strives to implement web sockets as specified by RFC6455.
 */
abstract class WebSocketTransformer
    implements StreamTransformer<HttpRequest, WebSocket> {
  factory WebSocketTransformer() => new _WebSocketTransformerImpl();
}


/**
 * Base class for the events generated by the W3C complient browser
 * API for web sockets.
 */
abstract class Event { }

/**
 * Event delivered when there is data on a web socket connection.
 */
abstract class MessageEvent extends Event {
  /**
   * The type of [message] is either [:String:] or [:List<int>:]
   * depending on whether it is a text or binary message. If the
   * message is empty [message] will be [:null:]
   * If the message is a [:List<int>:] then it will contain byte values
   * from 0 to 255.
   */
  get data;
}


/**
 * Event delivered when a web socket connection is closed.
 */
abstract class CloseEvent extends Event {
  /**
   * Returns whether the connection was closed cleanly or not.
   */
  bool get wasClean;

  /**
   * Returns the web socket connection close code provided by the
   * server.
   */
  int get code;

  /**
   * Returns the web socket connection close reason provided by the
   * server.
   */
  String get reason;
}


/**
 * Alternative web socket client interface. This interface is compliant
 * with the W3C browser API for web sockets specified in
 * http://dev.w3.org/html5/websockets/.
 */
abstract class WebSocket implements Stream<Event> {
  /**
   * Possible states of the connection.
   */
  static const int CONNECTING = 0;
  static const int OPEN = 1;
  static const int CLOSING = 2;
  static const int CLOSED = 3;

  /**
   * Create a new web socket connection. The URL supplied in [url]
   * must use the scheme [:ws:] or [:wss:]. The [protocols] argument is either
   * a [:String:] or [:List<String>:] specifying the subprotocols the
   * client is willing to speak.
   */
  static Future<WebSocket> connect(String url, [protocols]) =>
      _WebSocketImpl.connect(url, protocols);

  /**
   * Returns the current state of the connection.
   */
  int get readyState;

  /**
   * Returns the number of bytes currently buffered for transmission.
   */
  int get bufferedAmount;

  /**
   * The extensions property is initially the empty string. After the
   * web socket connection is established this string reflects the
   * extensions used by the server.
   */
  String get extensions;

  /**
   * The protocol property is initially the empty string. After the
   * web socket connection is established the value is the subprotocol
   * selected by the server. If no subprotocol is negotiated the
   * value will remain [:null:].
   */
  String get protocol;

  /**
   * Closes the web socket connection.
   */
  void close([int code, String reason]);

  /**
   * Sends data on the web socket connection. The data in [data] must
   * be either a [:String:], or a [:List<int>:] holding bytes.
   */
  void send(data);
}


class WebSocketException implements Exception {
  const WebSocketException([String this.message = ""]);
  String toString() => "WebSocketException: $message";
  final String message;
}
