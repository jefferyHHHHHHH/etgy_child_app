import '../errors/app_exception.dart';

class ApiEnvelope {
  const ApiEnvelope._();

  static T parseObject<T>({
    required dynamic json,
    required T Function(Map<String, dynamic> map) fromJson,
  }) {
    final data = _readData(json);
    if (data is! Map) {
      throw const AppException(
        type: AppExceptionType.unknown,
        message: '服务返回格式异常（data 非对象）',
      );
    }

    return fromJson(_toStringKeyedMap(data));
  }

  static List<T> parseList<T>({
    required dynamic json,
    required T Function(Map<String, dynamic> map) fromJson,
  }) {
    final data = _readData(json);
    if (data is! List) {
      throw const AppException(
        type: AppExceptionType.unknown,
        message: '服务返回格式异常（data 非数组）',
      );
    }

    return data
        .where((e) => e != null)
        .map((e) {
          if (e is! Map) {
            throw const AppException(
              type: AppExceptionType.unknown,
              message: '服务返回格式异常（列表元素非对象）',
            );
          }
          return fromJson(_toStringKeyedMap(e));
        })
        .toList(growable: false);
  }

  static dynamic _readData(dynamic json) {
    if (json is Map) {
      final map = _toStringKeyedMap(json);
      if (map.containsKey('data')) {
        return map['data'];
      }
    }

    throw const AppException(
      type: AppExceptionType.unknown,
      message: '服务返回格式异常（缺少 data 字段）',
    );
  }

  static Map<String, dynamic> _toStringKeyedMap(Map<dynamic, dynamic> raw) {
    return raw.map(
      (dynamic key, dynamic value) => MapEntry(key.toString(), value),
    );
  }
}
