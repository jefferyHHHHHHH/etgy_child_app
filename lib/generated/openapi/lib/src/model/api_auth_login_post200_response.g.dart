// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_auth_login_post200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiAuthLoginPost200ResponseCWProxy {
  ApiAuthLoginPost200Response code(int code);

  ApiAuthLoginPost200Response message(String message);

  ApiAuthLoginPost200Response data(ApiAuthLoginPost200ResponseAllOfData data);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAuthLoginPost200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAuthLoginPost200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAuthLoginPost200Response call({
    int code,
    String message,
    ApiAuthLoginPost200ResponseAllOfData data,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiAuthLoginPost200Response.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiAuthLoginPost200Response.copyWith.fieldName(...)`
class _$ApiAuthLoginPost200ResponseCWProxyImpl
    implements _$ApiAuthLoginPost200ResponseCWProxy {
  const _$ApiAuthLoginPost200ResponseCWProxyImpl(this._value);

  final ApiAuthLoginPost200Response _value;

  @override
  ApiAuthLoginPost200Response code(int code) => this(code: code);

  @override
  ApiAuthLoginPost200Response message(String message) => this(message: message);

  @override
  ApiAuthLoginPost200Response data(ApiAuthLoginPost200ResponseAllOfData data) =>
      this(data: data);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAuthLoginPost200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAuthLoginPost200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAuthLoginPost200Response call({
    Object? code = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return ApiAuthLoginPost200Response(
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
          : data as ApiAuthLoginPost200ResponseAllOfData,
    );
  }
}

extension $ApiAuthLoginPost200ResponseCopyWith on ApiAuthLoginPost200Response {
  /// Returns a callable class that can be used as follows: `instanceOfApiAuthLoginPost200Response.copyWith(...)` or like so:`instanceOfApiAuthLoginPost200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiAuthLoginPost200ResponseCWProxy get copyWith =>
      _$ApiAuthLoginPost200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAuthLoginPost200Response _$ApiAuthLoginPost200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiAuthLoginPost200Response', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['code', 'message', 'data']);
  final val = ApiAuthLoginPost200Response(
    code: $checkedConvert('code', (v) => (v as num).toInt()),
    message: $checkedConvert('message', (v) => v as String),
    data: $checkedConvert(
      'data',
      (v) => ApiAuthLoginPost200ResponseAllOfData.fromJson(
        v as Map<String, dynamic>,
      ),
    ),
  );
  return val;
});

Map<String, dynamic> _$ApiAuthLoginPost200ResponseToJson(
  ApiAuthLoginPost200Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.toJson(),
};
