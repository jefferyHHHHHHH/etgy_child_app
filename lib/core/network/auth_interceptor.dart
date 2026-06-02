import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  AuthInterceptor({required this.tokenReader});

  final String? Function() tokenReader;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final security = options.extra['secure'];
    if (security is List && security.isEmpty) {
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
