import 'dart:convert';

import 'package:dio/dio.dart';

import 'app_exception.dart';

class AppExceptionMapper {
  static String? _extractBackendMessage(dynamic data) {
    if (data == null) return null;

    if (data is Map) {
      final map = data.map((key, value) => MapEntry(key.toString(), value));
      final message = map['message'] ?? map['msg'] ?? map['error'];
      if (message is String && message.trim().isNotEmpty) {
        return message.trim();
      }
      return null;
    }

    if (data is String) {
      final trimmed = data.trim();
      if (trimmed.isEmpty) return null;
      // If the backend returns JSON as a string, try extracting message.
      if ((trimmed.startsWith('{') && trimmed.endsWith('}')) ||
          (trimmed.startsWith('[') && trimmed.endsWith(']'))) {
        try {
          final decoded = jsonDecode(trimmed);
          return _extractBackendMessage(decoded) ?? trimmed;
        } catch (_) {
          // fallthrough
        }
      }
      // Some backends return plain text; prefer showing it.
      return trimmed;
    }

    return null;
  }

  static AppException from(Object error) {
    if (error is AppException) {
      return error;
    }

    if (error is DioException) {
      final statusCode = error.response?.statusCode;
      final backendMessage = _extractBackendMessage(error.response?.data);

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
          message: backendMessage ?? '登录状态已失效，请重新登录',
        );
      }

      if (statusCode == 403) {
        return AppException(
          type: AppExceptionType.forbidden,
          statusCode: statusCode,
          message: backendMessage ?? '无权限访问该资源',
        );
      }

      if (statusCode == 404) {
        return AppException(
          type: AppExceptionType.notFound,
          statusCode: statusCode,
          message: backendMessage ?? '请求资源不存在',
        );
      }

      if (statusCode != null && statusCode >= 500) {
        return AppException(
          type: AppExceptionType.server,
          statusCode: statusCode,
          message: backendMessage ?? '服务暂时不可用，请稍后重试',
        );
      }

      return AppException(
        type: AppExceptionType.unknown,
        statusCode: statusCode,
        message: backendMessage ?? error.message ?? '请求失败，请稍后重试',
      );
    }

    return const AppException(type: AppExceptionType.unknown, message: '发生未知错误');
  }
}
