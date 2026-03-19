// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_auth_register_post201_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiAuthRegisterPost201ResponseCWProxy {
  ApiAuthRegisterPost201Response code(int code);

  ApiAuthRegisterPost201Response message(String message);

  ApiAuthRegisterPost201Response data(Object? data);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAuthRegisterPost201Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAuthRegisterPost201Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAuthRegisterPost201Response call({int code, String message, Object? data});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiAuthRegisterPost201Response.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiAuthRegisterPost201Response.copyWith.fieldName(...)`
class _$ApiAuthRegisterPost201ResponseCWProxyImpl
    implements _$ApiAuthRegisterPost201ResponseCWProxy {
  const _$ApiAuthRegisterPost201ResponseCWProxyImpl(this._value);

  final ApiAuthRegisterPost201Response _value;

  @override
  ApiAuthRegisterPost201Response code(int code) => this(code: code);

  @override
  ApiAuthRegisterPost201Response message(String message) =>
      this(message: message);

  @override
  ApiAuthRegisterPost201Response data(Object? data) => this(data: data);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAuthRegisterPost201Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAuthRegisterPost201Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAuthRegisterPost201Response call({
    Object? code = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return ApiAuthRegisterPost201Response(
      code: code == const $CopyWithPlaceholder()
          ? _value.code
          // ignore: cast_nullable_to_non_nullable
          : code as int,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String,
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as Object?,
    );
  }
}

extension $ApiAuthRegisterPost201ResponseCopyWith
    on ApiAuthRegisterPost201Response {
  /// Returns a callable class that can be used as follows: `instanceOfApiAuthRegisterPost201Response.copyWith(...)` or like so:`instanceOfApiAuthRegisterPost201Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiAuthRegisterPost201ResponseCWProxy get copyWith =>
      _$ApiAuthRegisterPost201ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAuthRegisterPost201Response _$ApiAuthRegisterPost201ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiAuthRegisterPost201Response', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['code', 'message']);
  final val = ApiAuthRegisterPost201Response(
    code: $checkedConvert('code', (v) => (v as num).toInt()),
    message: $checkedConvert('message', (v) => v as String),
    data: $checkedConvert('data', (v) => v),
  );
  return val;
});

Map<String, dynamic> _$ApiAuthRegisterPost201ResponseToJson(
  ApiAuthRegisterPost201Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': ?instance.data,
};
