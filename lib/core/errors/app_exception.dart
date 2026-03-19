enum AppExceptionType {
  network,
  timeout,
  unauthorized,
  forbidden,
  notFound,
  server,
  validation,
  unknown,
}

class AppException implements Exception {
  const AppException({
    required this.type,
    required this.message,
    this.statusCode,
  });

  final AppExceptionType type;
  final String message;
  final int? statusCode;

  @override
  String toString() {
    return 'AppException(type: $type, statusCode: $statusCode, message: $message)';
  }
}
