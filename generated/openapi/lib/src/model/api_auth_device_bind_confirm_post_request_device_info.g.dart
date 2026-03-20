// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_auth_device_bind_confirm_post_request_device_info.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiAuthDeviceBindConfirmPostRequestDeviceInfoCWProxy {
  ApiAuthDeviceBindConfirmPostRequestDeviceInfo platform(String? platform);

  ApiAuthDeviceBindConfirmPostRequestDeviceInfo model(String? model);

  ApiAuthDeviceBindConfirmPostRequestDeviceInfo osVersion(String? osVersion);

  ApiAuthDeviceBindConfirmPostRequestDeviceInfo appVersion(String? appVersion);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAuthDeviceBindConfirmPostRequestDeviceInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAuthDeviceBindConfirmPostRequestDeviceInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAuthDeviceBindConfirmPostRequestDeviceInfo call({
    String? platform,
    String? model,
    String? osVersion,
    String? appVersion,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiAuthDeviceBindConfirmPostRequestDeviceInfo.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiAuthDeviceBindConfirmPostRequestDeviceInfo.copyWith.fieldName(...)`
class _$ApiAuthDeviceBindConfirmPostRequestDeviceInfoCWProxyImpl
    implements _$ApiAuthDeviceBindConfirmPostRequestDeviceInfoCWProxy {
  const _$ApiAuthDeviceBindConfirmPostRequestDeviceInfoCWProxyImpl(this._value);

  final ApiAuthDeviceBindConfirmPostRequestDeviceInfo _value;

  @override
  ApiAuthDeviceBindConfirmPostRequestDeviceInfo platform(String? platform) =>
      this(platform: platform);

  @override
  ApiAuthDeviceBindConfirmPostRequestDeviceInfo model(String? model) =>
      this(model: model);

  @override
  ApiAuthDeviceBindConfirmPostRequestDeviceInfo osVersion(String? osVersion) =>
      this(osVersion: osVersion);

  @override
  ApiAuthDeviceBindConfirmPostRequestDeviceInfo appVersion(
    String? appVersion,
  ) => this(appVersion: appVersion);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAuthDeviceBindConfirmPostRequestDeviceInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAuthDeviceBindConfirmPostRequestDeviceInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAuthDeviceBindConfirmPostRequestDeviceInfo call({
    Object? platform = const $CopyWithPlaceholder(),
    Object? model = const $CopyWithPlaceholder(),
    Object? osVersion = const $CopyWithPlaceholder(),
    Object? appVersion = const $CopyWithPlaceholder(),
  }) {
    return ApiAuthDeviceBindConfirmPostRequestDeviceInfo(
      platform: platform == const $CopyWithPlaceholder()
          ? _value.platform
          // ignore: cast_nullable_to_non_nullable
          : platform as String?,
      model: model == const $CopyWithPlaceholder()
          ? _value.model
          // ignore: cast_nullable_to_non_nullable
          : model as String?,
      osVersion: osVersion == const $CopyWithPlaceholder()
          ? _value.osVersion
          // ignore: cast_nullable_to_non_nullable
          : osVersion as String?,
      appVersion: appVersion == const $CopyWithPlaceholder()
          ? _value.appVersion
          // ignore: cast_nullable_to_non_nullable
          : appVersion as String?,
    );
  }
}

extension $ApiAuthDeviceBindConfirmPostRequestDeviceInfoCopyWith
    on ApiAuthDeviceBindConfirmPostRequestDeviceInfo {
  /// Returns a callable class that can be used as follows: `instanceOfApiAuthDeviceBindConfirmPostRequestDeviceInfo.copyWith(...)` or like so:`instanceOfApiAuthDeviceBindConfirmPostRequestDeviceInfo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiAuthDeviceBindConfirmPostRequestDeviceInfoCWProxy get copyWith =>
      _$ApiAuthDeviceBindConfirmPostRequestDeviceInfoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAuthDeviceBindConfirmPostRequestDeviceInfo
_$ApiAuthDeviceBindConfirmPostRequestDeviceInfoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiAuthDeviceBindConfirmPostRequestDeviceInfo', json, (
  $checkedConvert,
) {
  final val = ApiAuthDeviceBindConfirmPostRequestDeviceInfo(
    platform: $checkedConvert('platform', (v) => v as String?),
    model: $checkedConvert('model', (v) => v as String?),
    osVersion: $checkedConvert('osVersion', (v) => v as String?),
    appVersion: $checkedConvert('appVersion', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$ApiAuthDeviceBindConfirmPostRequestDeviceInfoToJson(
  ApiAuthDeviceBindConfirmPostRequestDeviceInfo instance,
) => <String, dynamic>{
  'platform': ?instance.platform,
  'model': ?instance.model,
  'osVersion': ?instance.osVersion,
  'appVersion': ?instance.appVersion,
};
