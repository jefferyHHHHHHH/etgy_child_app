import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class DebugNetworkInterceptor extends Interceptor {
  DebugNetworkInterceptor({this.maxBodyLength = 1200});

  final int maxBodyLength;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (!kDebugMode) {
      handler.next(options);
      return;
    }

    final redactedHeaders = <String, dynamic>{...options.headers};
    if (redactedHeaders.containsKey('Authorization')) {
      redactedHeaders['Authorization'] = '***';
    }

    final dynamic body = _redactBody(options.data);

    debugPrint(
      '[HTTP] --> ${options.method} ${options.baseUrl}${options.path}\n'
      'headers=${_truncate(_pretty(redactedHeaders))}\n'
      'query=${_truncate(_pretty(options.queryParameters))}\n'
      'body=${_truncate(_pretty(body))}',
    );

    handler.next(options);
  }

  @override
  void onResponse(Response<dynamic> response, ResponseInterceptorHandler handler) {
    if (kDebugMode) {
      debugPrint(
        '[HTTP] <-- ${response.statusCode} ${response.requestOptions.method} '
        '${response.requestOptions.baseUrl}${response.requestOptions.path}\n'
        'dataType=${response.data.runtimeType}\n'
        'data=${_truncate(_pretty(response.data))}',
      );
    }
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (kDebugMode) {
      debugPrint(
        '[HTTP] xx  ${err.response?.statusCode} ${err.requestOptions.method} '
        '${err.requestOptions.baseUrl}${err.requestOptions.path}\n'
        'type=${err.type}\n'
        'message=${err.message}\n'
        'response=${_truncate(_pretty(err.response?.data))}',
      );
    }
    handler.next(err);
  }

  dynamic _redactBody(dynamic data) {
    if (data is Map) {
      final map = data.map((key, value) => MapEntry(key.toString(), value));
      final redacted = <String, dynamic>{...map};
      for (final key in ['password', 'token', 'bindToken']) {
        if (redacted.containsKey(key)) {
          redacted[key] = '***';
        }
      }
      return redacted;
    }
    return data;
  }

  String _truncate(String value) {
    if (value.length <= maxBodyLength) return value;
    return '${value.substring(0, maxBodyLength)}...(truncated)';
  }

  String _pretty(dynamic value) {
    if (value == null) return 'null';
    if (value is String) return value;
    try {
      return const JsonEncoder.withIndent('  ').convert(value);
    } catch (_) {
      return value.toString();
    }
  }
}
