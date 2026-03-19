// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_videos_id_watch_post200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiVideosIdWatchPost200ResponseCWProxy {
  ApiVideosIdWatchPost200Response code(int code);

  ApiVideosIdWatchPost200Response message(String message);

  ApiVideosIdWatchPost200Response data(VideoWatchLog data);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiVideosIdWatchPost200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiVideosIdWatchPost200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiVideosIdWatchPost200Response call({
    int code,
    String message,
    VideoWatchLog data,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiVideosIdWatchPost200Response.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiVideosIdWatchPost200Response.copyWith.fieldName(...)`
class _$ApiVideosIdWatchPost200ResponseCWProxyImpl
    implements _$ApiVideosIdWatchPost200ResponseCWProxy {
  const _$ApiVideosIdWatchPost200ResponseCWProxyImpl(this._value);

  final ApiVideosIdWatchPost200Response _value;

  @override
  ApiVideosIdWatchPost200Response code(int code) => this(code: code);

  @override
  ApiVideosIdWatchPost200Response message(String message) =>
      this(message: message);

  @override
  ApiVideosIdWatchPost200Response data(VideoWatchLog data) => this(data: data);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiVideosIdWatchPost200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiVideosIdWatchPost200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiVideosIdWatchPost200Response call({
    Object? code = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return ApiVideosIdWatchPost200Response(
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
          : data as VideoWatchLog,
    );
  }
}

extension $ApiVideosIdWatchPost200ResponseCopyWith
    on ApiVideosIdWatchPost200Response {
  /// Returns a callable class that can be used as follows: `instanceOfApiVideosIdWatchPost200Response.copyWith(...)` or like so:`instanceOfApiVideosIdWatchPost200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiVideosIdWatchPost200ResponseCWProxy get copyWith =>
      _$ApiVideosIdWatchPost200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiVideosIdWatchPost200Response _$ApiVideosIdWatchPost200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiVideosIdWatchPost200Response', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['code', 'message', 'data']);
  final val = ApiVideosIdWatchPost200Response(
    code: $checkedConvert('code', (v) => (v as num).toInt()),
    message: $checkedConvert('message', (v) => v as String),
    data: $checkedConvert(
      'data',
      (v) => VideoWatchLog.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$ApiVideosIdWatchPost200ResponseToJson(
  ApiVideosIdWatchPost200Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.toJson(),
};
