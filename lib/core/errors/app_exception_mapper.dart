import 'package:dio/dio.dart';

import 'app_exception.dart';

class AppExceptionMapper {
  static AppException from(Object error) {
    if (error is AppException) {
      return error;
    }

    if (error is DioException) {
      final statusCode = error.response?.statusCode;

      if (error.type == DioExceptionType.connectionTimeout ||
          error.type == DioExceptionType.sendTimeout ||
          error.type == DioExceptionType.receiveTimeout) {
        return AppException(
          type: AppExceptionType.timeout,
          statusCode: statusCode,
          message: '请求超时，请稍后重试',
        );
      }

      if (error.type == DioExceptionType.connectionError) {
        return AppException(
          type: AppExceptionType.network,
          statusCode: statusCode,
          message: '网络连接失败，请检查网络',
        );
      }

      if (statusCode == 401) {
        return AppException(
          type: AppExceptionType.unauthorized,
          statusCode: statusCode,
          message: '登录状态已失效，请重新登录',
        );
      }

      if (statusCode == 403) {
        return AppException(
          type: AppExceptionType.forbidden,
          statusCode: statusCode,
          message: '无权限访问该资源',
        );
      }

      if (statusCode == 404) {
        return AppException(
          type: AppExceptionType.notFound,
          statusCode: statusCode,
          message: '请求资源不存在',
        );
      }

      if (statusCode != null && statusCode >= 500) {
        return AppException(
          type: AppExceptionType.server,
          statusCode: statusCode,
          message: '服务暂时不可用，请稍后重试',
        );
      }

      return AppException(
        type: AppExceptionType.unknown,
        statusCode: statusCode,
        message: error.message ?? '请求失败，请稍后重试',
      );
    }

    return const AppException(type: AppExceptionType.unknown, message: '发生未知错误');
  }
}
