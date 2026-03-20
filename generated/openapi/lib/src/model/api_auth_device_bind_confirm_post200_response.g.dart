// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_auth_device_bind_confirm_post200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiAuthDeviceBindConfirmPost200ResponseCWProxy {
  ApiAuthDeviceBindConfirmPost200Response code(int code);

  ApiAuthDeviceBindConfirmPost200Response message(String message);

  ApiAuthDeviceBindConfirmPost200Response data(
    ApiAuthLoginPost200ResponseAllOfDataAnyOf data,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAuthDeviceBindConfirmPost200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAuthDeviceBindConfirmPost200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAuthDeviceBindConfirmPost200Response call({
    int code,
    String message,
    ApiAuthLoginPost200ResponseAllOfDataAnyOf data,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiAuthDeviceBindConfirmPost200Response.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiAuthDeviceBindConfirmPost200Response.copyWith.fieldName(...)`
class _$ApiAuthDeviceBindConfirmPost200ResponseCWProxyImpl
    implements _$ApiAuthDeviceBindConfirmPost200ResponseCWProxy {
  const _$ApiAuthDeviceBindConfirmPost200ResponseCWProxyImpl(this._value);

  final ApiAuthDeviceBindConfirmPost200Response _value;

  @override
  ApiAuthDeviceBindConfirmPost200Response code(int code) => this(code: code);

  @override
  ApiAuthDeviceBindConfirmPost200Response message(String message) =>
      this(message: message);

  @override
  ApiAuthDeviceBindConfirmPost200Response data(
    ApiAuthLoginPost200ResponseAllOfDataAnyOf data,
  ) => this(data: data);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAuthDeviceBindConfirmPost200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAuthDeviceBindConfirmPost200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAuthDeviceBindConfirmPost200Response call({
    Object? code = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return ApiAuthDeviceBindConfirmPost200Response(
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
          : data as ApiAuthLoginPost200ResponseAllOfDataAnyOf,
    );
  }
}

extension $ApiAuthDeviceBindConfirmPost200ResponseCopyWith
    on ApiAuthDeviceBindConfirmPost200Response {
  /// Returns a callable class that can be used as follows: `instanceOfApiAuthDeviceBindConfirmPost200Response.copyWith(...)` or like so:`instanceOfApiAuthDeviceBindConfirmPost200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiAuthDeviceBindConfirmPost200ResponseCWProxy get copyWith =>
      _$ApiAuthDeviceBindConfirmPost200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAuthDeviceBindConfirmPost200Response
_$ApiAuthDeviceBindConfirmPost200ResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ApiAuthDeviceBindConfirmPost200Response', json, (
      $checkedConvert,
    ) {
      $checkKeys(json, requiredKeys: const ['code', 'message', 'data']);
      final val = ApiAuthDeviceBindConfirmPost200Response(
        code: $checkedConvert('code', (v) => (v as num).toInt()),
        message: $checkedConvert('message', (v) => v as String),
        data: $checkedConvert(
          'data',
          (v) => ApiAuthLoginPost200ResponseAllOfDataAnyOf.fromJson(
            v as Map<String, dynamic>,
          ),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ApiAuthDeviceBindConfirmPost200ResponseToJson(
  ApiAuthDeviceBindConfirmPost200Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.toJson(),
};
