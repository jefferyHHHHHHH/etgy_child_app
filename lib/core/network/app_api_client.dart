import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/auth/auth_controller.dart';
import '../errors/app_exception.dart';
import '../errors/app_exception_mapper.dart';
import '../providers/app_providers.dart';
import 'auth_interceptor.dart';

final dioProvider = Provider<Dio>((Ref ref) {
  final config = ref.watch(appConfigProvider);

  final dio = Dio(
    BaseOptions(
      baseUrl: config.apiBaseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 15),
      sendTimeout: const Duration(seconds: 10),
      headers: const <String, String>{
        'Content-Type': 'application/json',
      },
    ),
  );

  dio.interceptors.add(
    AuthInterceptor(tokenReader: () => ref.read(authControllerProvider).token),
  );

  dio.interceptors.add(
    InterceptorsWrapper(
      onError: (DioException error, ErrorInterceptorHandler handler) {
        if (error.response?.statusCode == 401) {
          unawaited(ref.read(authControllerProvider.notifier).signOut());
        }
        handler.next(error);
      },
    ),
  );

  if (config.enableNetworkLog) {
    dio.interceptors.add(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
      ),
    );
  }

  return dio;
});

final apiClientProvider = Provider<AppApiClient>((Ref ref) {
  return AppApiClient(ref.watch(dioProvider));
});

class AppApiClient {
  AppApiClient(this._dio);

  final Dio _dio;

  Future<T> get<T>({
    required String path,
    required T Function(dynamic data) parser,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio.get<dynamic>(
        path,
        queryParameters: queryParameters,
      );
      return parser(response.data);
    } catch (error) {
      throw AppExceptionMapper.from(error);
    }
  }

  Future<T> post<T>({
    required String path,
    required T Function(dynamic data) parser,
    dynamic body,
  }) async {
    try {
      final response = await _dio.post<dynamic>(path, data: body);
      return parser(response.data);
    } catch (error) {
      throw AppExceptionMapper.from(error);
    }
  }

  AppException mapError(Object error) {
    return AppExceptionMapper.from(error);
  }
}
