// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_auth_login_post_request_device_info.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiAuthLoginPostRequestDeviceInfoCWProxy {
  ApiAuthLoginPostRequestDeviceInfo platform(String? platform);

  ApiAuthLoginPostRequestDeviceInfo model(String? model);

  ApiAuthLoginPostRequestDeviceInfo osVersion(String? osVersion);

  ApiAuthLoginPostRequestDeviceInfo appVersion(String? appVersion);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAuthLoginPostRequestDeviceInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAuthLoginPostRequestDeviceInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAuthLoginPostRequestDeviceInfo call({
    String? platform,
    String? model,
    String? osVersion,
    String? appVersion,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiAuthLoginPostRequestDeviceInfo.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiAuthLoginPostRequestDeviceInfo.copyWith.fieldName(...)`
class _$ApiAuthLoginPostRequestDeviceInfoCWProxyImpl
    implements _$ApiAuthLoginPostRequestDeviceInfoCWProxy {
  const _$ApiAuthLoginPostRequestDeviceInfoCWProxyImpl(this._value);

  final ApiAuthLoginPostRequestDeviceInfo _value;

  @override
  ApiAuthLoginPostRequestDeviceInfo platform(String? platform) =>
      this(platform: platform);

  @override
  ApiAuthLoginPostRequestDeviceInfo model(String? model) => this(model: model);

  @override
  ApiAuthLoginPostRequestDeviceInfo osVersion(String? osVersion) =>
      this(osVersion: osVersion);

  @override
  ApiAuthLoginPostRequestDeviceInfo appVersion(String? appVersion) =>
      this(appVersion: appVersion);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAuthLoginPostRequestDeviceInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAuthLoginPostRequestDeviceInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAuthLoginPostRequestDeviceInfo call({
    Object? platform = const $CopyWithPlaceholder(),
    Object? model = const $CopyWithPlaceholder(),
    Object? osVersion = const $CopyWithPlaceholder(),
    Object? appVersion = const $CopyWithPlaceholder(),
  }) {
    return ApiAuthLoginPostRequestDeviceInfo(
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

extension $ApiAuthLoginPostRequestDeviceInfoCopyWith
    on ApiAuthLoginPostRequestDeviceInfo {
  /// Returns a callable class that can be used as follows: `instanceOfApiAuthLoginPostRequestDeviceInfo.copyWith(...)` or like so:`instanceOfApiAuthLoginPostRequestDeviceInfo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiAuthLoginPostRequestDeviceInfoCWProxy get copyWith =>
      _$ApiAuthLoginPostRequestDeviceInfoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAuthLoginPostRequestDeviceInfo _$ApiAuthLoginPostRequestDeviceInfoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiAuthLoginPostRequestDeviceInfo', json, (
  $checkedConvert,
) {
  final val = ApiAuthLoginPostRequestDeviceInfo(
    platform: $checkedConvert('platform', (v) => v as String?),
    model: $checkedConvert('model', (v) => v as String?),
    osVersion: $checkedConvert('osVersion', (v) => v as String?),
    appVersion: $checkedConvert('appVersion', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$ApiAuthLoginPostRequestDeviceInfoToJson(
  ApiAuthLoginPostRequestDeviceInfo instance,
) => <String, dynamic>{
  'platform': ?instance.platform,
  'model': ?instance.model,
  'osVersion': ?instance.osVersion,
  'appVersion': ?instance.appVersion,
};
