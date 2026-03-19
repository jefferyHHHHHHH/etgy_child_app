// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_live_id_agora_rtc_token_post200_response_all_of_data.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiLiveIdAgoraRtcTokenPost200ResponseAllOfDataCWProxy {
  ApiLiveIdAgoraRtcTokenPost200ResponseAllOfData appId(String appId);

  ApiLiveIdAgoraRtcTokenPost200ResponseAllOfData channelName(
    String channelName,
  );

  ApiLiveIdAgoraRtcTokenPost200ResponseAllOfData uid(int uid);

  ApiLiveIdAgoraRtcTokenPost200ResponseAllOfData role(
    ApiLiveIdAgoraRtcTokenPost200ResponseAllOfDataRoleEnum role,
  );

  ApiLiveIdAgoraRtcTokenPost200ResponseAllOfData token(String token);

  ApiLiveIdAgoraRtcTokenPost200ResponseAllOfData expireAt(int expireAt);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiLiveIdAgoraRtcTokenPost200ResponseAllOfData(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiLiveIdAgoraRtcTokenPost200ResponseAllOfData(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiLiveIdAgoraRtcTokenPost200ResponseAllOfData call({
    String appId,
    String channelName,
    int uid,
    ApiLiveIdAgoraRtcTokenPost200ResponseAllOfDataRoleEnum role,
    String token,
    int expireAt,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiLiveIdAgoraRtcTokenPost200ResponseAllOfData.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiLiveIdAgoraRtcTokenPost200ResponseAllOfData.copyWith.fieldName(...)`
class _$ApiLiveIdAgoraRtcTokenPost200ResponseAllOfDataCWProxyImpl
    implements _$ApiLiveIdAgoraRtcTokenPost200ResponseAllOfDataCWProxy {
  const _$ApiLiveIdAgoraRtcTokenPost200ResponseAllOfDataCWProxyImpl(
    this._value,
  );

  final ApiLiveIdAgoraRtcTokenPost200ResponseAllOfData _value;

  @override
  ApiLiveIdAgoraRtcTokenPost200ResponseAllOfData appId(String appId) =>
      this(appId: appId);

  @override
  ApiLiveIdAgoraRtcTokenPost200ResponseAllOfData channelName(
    String channelName,
  ) => this(channelName: channelName);

  @override
  ApiLiveIdAgoraRtcTokenPost200ResponseAllOfData uid(int uid) => this(uid: uid);

  @override
  ApiLiveIdAgoraRtcTokenPost200ResponseAllOfData role(
    ApiLiveIdAgoraRtcTokenPost200ResponseAllOfDataRoleEnum role,
  ) => this(role: role);

  @override
  ApiLiveIdAgoraRtcTokenPost200ResponseAllOfData token(String token) =>
      this(token: token);

  @override
  ApiLiveIdAgoraRtcTokenPost200ResponseAllOfData expireAt(int expireAt) =>
      this(expireAt: expireAt);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiLiveIdAgoraRtcTokenPost200ResponseAllOfData(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiLiveIdAgoraRtcTokenPost200ResponseAllOfData(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiLiveIdAgoraRtcTokenPost200ResponseAllOfData call({
    Object? appId = const $CopyWithPlaceholder(),
    Object? channelName = const $CopyWithPlaceholder(),
    Object? uid = const $CopyWithPlaceholder(),
    Object? role = const $CopyWithPlaceholder(),
    Object? token = const $CopyWithPlaceholder(),
    Object? expireAt = const $CopyWithPlaceholder(),
  }) {
    return ApiLiveIdAgoraRtcTokenPost200ResponseAllOfData(
      appId: appId == const $CopyWithPlaceholder()
          ? _value.appId
          // ignore: cast_nullable_to_non_nullable
          : appId as String,
      channelName: channelName == const $CopyWithPlaceholder()
          ? _value.channelName
          // ignore: cast_nullable_to_non_nullable
          : channelName as String,
      uid: uid == const $CopyWithPlaceholder()
          ? _value.uid
          // ignore: cast_nullable_to_non_nullable
          : uid as int,
      role: role == const $CopyWithPlaceholder()
          ? _value.role
          // ignore: cast_nullable_to_non_nullable
          : role as ApiLiveIdAgoraRtcTokenPost200ResponseAllOfDataRoleEnum,
      token: token == const $CopyWithPlaceholder()
          ? _value.token
          // ignore: cast_nullable_to_non_nullable
          : token as String,
      expireAt: expireAt == const $CopyWithPlaceholder()
          ? _value.expireAt
          // ignore: cast_nullable_to_non_nullable
          : expireAt as int,
    );
  }
}

extension $ApiLiveIdAgoraRtcTokenPost200ResponseAllOfDataCopyWith
    on ApiLiveIdAgoraRtcTokenPost200ResponseAllOfData {
  /// Returns a callable class that can be used as follows: `instanceOfApiLiveIdAgoraRtcTokenPost200ResponseAllOfData.copyWith(...)` or like so:`instanceOfApiLiveIdAgoraRtcTokenPost200ResponseAllOfData.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiLiveIdAgoraRtcTokenPost200ResponseAllOfDataCWProxy get copyWith =>
      _$ApiLiveIdAgoraRtcTokenPost200ResponseAllOfDataCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiLiveIdAgoraRtcTokenPost200ResponseAllOfData
_$ApiLiveIdAgoraRtcTokenPost200ResponseAllOfDataFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiLiveIdAgoraRtcTokenPost200ResponseAllOfData', json, (
  $checkedConvert,
) {
  $checkKeys(
    json,
    requiredKeys: const [
      'appId',
      'channelName',
      'uid',
      'role',
      'token',
      'expireAt',
    ],
  );
  final val = ApiLiveIdAgoraRtcTokenPost200ResponseAllOfData(
    appId: $checkedConvert('appId', (v) => v as String),
    channelName: $checkedConvert('channelName', (v) => v as String),
    uid: $checkedConvert('uid', (v) => (v as num).toInt()),
    role: $checkedConvert(
      'role',
      (v) => $enumDecode(
        _$ApiLiveIdAgoraRtcTokenPost200ResponseAllOfDataRoleEnumEnumMap,
        v,
      ),
    ),
    token: $checkedConvert('token', (v) => v as String),
    expireAt: $checkedConvert('expireAt', (v) => (v as num).toInt()),
  );
  return val;
});

Map<String, dynamic> _$ApiLiveIdAgoraRtcTokenPost200ResponseAllOfDataToJson(
  ApiLiveIdAgoraRtcTokenPost200ResponseAllOfData instance,
) => <String, dynamic>{
  'appId': instance.appId,
  'channelName': instance.channelName,
  'uid': instance.uid,
  'role':
      _$ApiLiveIdAgoraRtcTokenPost200ResponseAllOfDataRoleEnumEnumMap[instance
          .role]!,
  'token': instance.token,
  'expireAt': instance.expireAt,
};

const _$ApiLiveIdAgoraRtcTokenPost200ResponseAllOfDataRoleEnumEnumMap = {
  ApiLiveIdAgoraRtcTokenPost200ResponseAllOfDataRoleEnum.publisher: 'publisher',
  ApiLiveIdAgoraRtcTokenPost200ResponseAllOfDataRoleEnum.subscriber:
      'subscriber',
};
