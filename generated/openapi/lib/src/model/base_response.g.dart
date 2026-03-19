// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseCWProxy {
  BaseResponse code(int code);

  BaseResponse message(String message);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponse call({int code, String message});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponse.copyWith.fieldName(...)`
class _$BaseResponseCWProxyImpl implements _$BaseResponseCWProxy {
  const _$BaseResponseCWProxyImpl(this._value);

  final BaseResponse _value;

  @override
  BaseResponse code(int code) => this(code: code);

  @override
  BaseResponse message(String message) => this(message: message);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponse call({
    Object? code = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
  }) {
    return BaseResponse(
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

extension $BaseResponseCopyWith on BaseResponse {
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponse.copyWith(...)` or like so:`instanceOfBaseResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseCWProxy get copyWith => _$BaseResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponse', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['code', 'message']);
      final val = BaseResponse(
        code: $checkedConvert('code', (v) => (v as num).toInt()),
        message: $checkedConvert('message', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$BaseResponseToJson(BaseResponse instance) =>
    <String, dynamic>{'code': instance.code, 'message': instance.message};
