// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_live_id_agora_rtc_token_post200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiLiveIdAgoraRtcTokenPost200ResponseCWProxy {
  ApiLiveIdAgoraRtcTokenPost200Response code(int code);

  ApiLiveIdAgoraRtcTokenPost200Response message(String message);

  ApiLiveIdAgoraRtcTokenPost200Response data(
    ApiLiveIdAgoraRtcTokenPost200ResponseAllOfData data,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiLiveIdAgoraRtcTokenPost200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiLiveIdAgoraRtcTokenPost200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiLiveIdAgoraRtcTokenPost200Response call({
    int code,
    String message,
    ApiLiveIdAgoraRtcTokenPost200ResponseAllOfData data,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiLiveIdAgoraRtcTokenPost200Response.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiLiveIdAgoraRtcTokenPost200Response.copyWith.fieldName(...)`
class _$ApiLiveIdAgoraRtcTokenPost200ResponseCWProxyImpl
    implements _$ApiLiveIdAgoraRtcTokenPost200ResponseCWProxy {
  const _$ApiLiveIdAgoraRtcTokenPost200ResponseCWProxyImpl(this._value);

  final ApiLiveIdAgoraRtcTokenPost200Response _value;

  @override
  ApiLiveIdAgoraRtcTokenPost200Response code(int code) => this(code: code);

  @override
  ApiLiveIdAgoraRtcTokenPost200Response message(String message) =>
      this(message: message);

  @override
  ApiLiveIdAgoraRtcTokenPost200Response data(
    ApiLiveIdAgoraRtcTokenPost200ResponseAllOfData data,
  ) => this(data: data);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiLiveIdAgoraRtcTokenPost200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiLiveIdAgoraRtcTokenPost200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiLiveIdAgoraRtcTokenPost200Response call({
    Object? code = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return ApiLiveIdAgoraRtcTokenPost200Response(
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
          : data as ApiLiveIdAgoraRtcTokenPost200ResponseAllOfData,
    );
  }
}

extension $ApiLiveIdAgoraRtcTokenPost200ResponseCopyWith
    on ApiLiveIdAgoraRtcTokenPost200Response {
  /// Returns a callable class that can be used as follows: `instanceOfApiLiveIdAgoraRtcTokenPost200Response.copyWith(...)` or like so:`instanceOfApiLiveIdAgoraRtcTokenPost200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiLiveIdAgoraRtcTokenPost200ResponseCWProxy get copyWith =>
      _$ApiLiveIdAgoraRtcTokenPost200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiLiveIdAgoraRtcTokenPost200Response
_$ApiLiveIdAgoraRtcTokenPost200ResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ApiLiveIdAgoraRtcTokenPost200Response', json, (
      $checkedConvert,
    ) {
      $checkKeys(json, requiredKeys: const ['code', 'message', 'data']);
      final val = ApiLiveIdAgoraRtcTokenPost200Response(
        code: $checkedConvert('code', (v) => (v as num).toInt()),
        message: $checkedConvert('message', (v) => v as String),
        data: $checkedConvert(
          'data',
          (v) => ApiLiveIdAgoraRtcTokenPost200ResponseAllOfData.fromJson(
            v as Map<String, dynamic>,
          ),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ApiLiveIdAgoraRtcTokenPost200ResponseToJson(
  ApiLiveIdAgoraRtcTokenPost200Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.toJson(),
};
