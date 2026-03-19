// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ErrorResponseCWProxy {
  ErrorResponse code(int code);

  ErrorResponse message(String message);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ErrorResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ErrorResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  ErrorResponse call({int code, String message});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfErrorResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfErrorResponse.copyWith.fieldName(...)`
class _$ErrorResponseCWProxyImpl implements _$ErrorResponseCWProxy {
  const _$ErrorResponseCWProxyImpl(this._value);

  final ErrorResponse _value;

  @override
  ErrorResponse code(int code) => this(code: code);

  @override
  ErrorResponse message(String message) => this(message: message);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ErrorResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ErrorResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  ErrorResponse call({
    Object? code = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
  }) {
    return ErrorResponse(
      code: code == const $CopyWithPlaceholder()
          ? _value.code
          // ignore: cast_nullable_to_non_nullable
          : code as int,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String,
    );
  }
}

extension $ErrorResponseCopyWith on ErrorResponse {
  /// Returns a callable class that can be used as follows: `instanceOfErrorResponse.copyWith(...)` or like so:`instanceOfErrorResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ErrorResponseCWProxy get copyWith => _$ErrorResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorResponse _$ErrorResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ErrorResponse', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['code', 'message']);
      final val = ErrorResponse(
        code: $checkedConvert('code', (v) => (v as num).toInt()),
        message: $checkedConvert('message', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$ErrorResponseToJson(ErrorResponse instance) =>
    <String, dynamic>{'code': instance.code, 'message': instance.message};
