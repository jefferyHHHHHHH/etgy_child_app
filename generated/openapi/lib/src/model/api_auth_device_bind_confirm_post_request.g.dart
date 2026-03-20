// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_auth_device_bind_confirm_post_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiAuthDeviceBindConfirmPostRequestCWProxy {
  ApiAuthDeviceBindConfirmPostRequest bindToken(String bindToken);

  ApiAuthDeviceBindConfirmPostRequest deviceInfo(
    ApiAuthDeviceBindConfirmPostRequestDeviceInfo? deviceInfo,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAuthDeviceBindConfirmPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAuthDeviceBindConfirmPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAuthDeviceBindConfirmPostRequest call({
    String bindToken,
    ApiAuthDeviceBindConfirmPostRequestDeviceInfo? deviceInfo,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiAuthDeviceBindConfirmPostRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiAuthDeviceBindConfirmPostRequest.copyWith.fieldName(...)`
class _$ApiAuthDeviceBindConfirmPostRequestCWProxyImpl
    implements _$ApiAuthDeviceBindConfirmPostRequestCWProxy {
  const _$ApiAuthDeviceBindConfirmPostRequestCWProxyImpl(this._value);

  final ApiAuthDeviceBindConfirmPostRequest _value;

  @override
  ApiAuthDeviceBindConfirmPostRequest bindToken(String bindToken) =>
      this(bindToken: bindToken);

  @override
  ApiAuthDeviceBindConfirmPostRequest deviceInfo(
    ApiAuthDeviceBindConfirmPostRequestDeviceInfo? deviceInfo,
  ) => this(deviceInfo: deviceInfo);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAuthDeviceBindConfirmPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAuthDeviceBindConfirmPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAuthDeviceBindConfirmPostRequest call({
    Object? bindToken = const $CopyWithPlaceholder(),
    Object? deviceInfo = const $CopyWithPlaceholder(),
  }) {
    return ApiAuthDeviceBindConfirmPostRequest(
      bindToken: bindToken == const $CopyWithPlaceholder()
          ? _value.bindToken
          // ignore: cast_nullable_to_non_nullable
          : bindToken as String,
      deviceInfo: deviceInfo == const $CopyWithPlaceholder()
          ? _value.deviceInfo
          // ignore: cast_nullable_to_non_nullable
          : deviceInfo as ApiAuthDeviceBindConfirmPostRequestDeviceInfo?,
    );
  }
}

extension $ApiAuthDeviceBindConfirmPostRequestCopyWith
    on ApiAuthDeviceBindConfirmPostRequest {
  /// Returns a callable class that can be used as follows: `instanceOfApiAuthDeviceBindConfirmPostRequest.copyWith(...)` or like so:`instanceOfApiAuthDeviceBindConfirmPostRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiAuthDeviceBindConfirmPostRequestCWProxy get copyWith =>
      _$ApiAuthDeviceBindConfirmPostRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAuthDeviceBindConfirmPostRequest
_$ApiAuthDeviceBindConfirmPostRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ApiAuthDeviceBindConfirmPostRequest', json, (
      $checkedConvert,
    ) {
      $checkKeys(json, requiredKeys: const ['bindToken']);
      final val = ApiAuthDeviceBindConfirmPostRequest(
        bindToken: $checkedConvert('bindToken', (v) => v as String),
        deviceInfo: $checkedConvert(
          'deviceInfo',
          (v) => v == null
              ? null
              : ApiAuthDeviceBindConfirmPostRequestDeviceInfo.fromJson(
                  v as Map<String, dynamic>,
                ),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ApiAuthDeviceBindConfirmPostRequestToJson(
  ApiAuthDeviceBindConfirmPostRequest instance,
) => <String, dynamic>{
  'bindToken': instance.bindToken,
  'deviceInfo': ?instance.deviceInfo?.toJson(),
};
