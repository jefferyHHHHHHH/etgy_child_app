import 'package:dio/dio.dart';

/// Attaches the session Bearer token to outgoing API requests.
///
/// OpenAPI-generated clients mark endpoints without a declared security scheme
/// with `extra['secure'] = []`. Those routes still require auth on our backend,
/// so we always attach the token when available unless explicitly opted out.
class AuthInterceptor extends Interceptor {
  AuthInterceptor({required this.tokenReader});

  final String? Function() tokenReader;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (options.extra['skipAuth'] == true) {
      handler.next(options);
      return;
    }

    final token = tokenReader();
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    handler.next(options);
  }
}
