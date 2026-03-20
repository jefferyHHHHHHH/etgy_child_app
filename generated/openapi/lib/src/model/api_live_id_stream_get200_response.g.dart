// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_live_id_stream_get200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiLiveIdStreamGet200ResponseCWProxy {
  ApiLiveIdStreamGet200Response code(int code);

  ApiLiveIdStreamGet200Response message(String message);

  ApiLiveIdStreamGet200Response data(LiveStreamInfo data);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiLiveIdStreamGet200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiLiveIdStreamGet200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiLiveIdStreamGet200Response call({
    int code,
    String message,
    LiveStreamInfo data,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiLiveIdStreamGet200Response.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiLiveIdStreamGet200Response.copyWith.fieldName(...)`
class _$ApiLiveIdStreamGet200ResponseCWProxyImpl
    implements _$ApiLiveIdStreamGet200ResponseCWProxy {
  const _$ApiLiveIdStreamGet200ResponseCWProxyImpl(this._value);

  final ApiLiveIdStreamGet200Response _value;

  @override
  ApiLiveIdStreamGet200Response code(int code) => this(code: code);

  @override
  ApiLiveIdStreamGet200Response message(String message) =>
      this(message: message);

  @override
  ApiLiveIdStreamGet200Response data(LiveStreamInfo data) => this(data: data);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiLiveIdStreamGet200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiLiveIdStreamGet200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiLiveIdStreamGet200Response call({
    Object? code = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return ApiLiveIdStreamGet200Response(
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
          : data as LiveStreamInfo,
    );
  }
}

extension $ApiLiveIdStreamGet200ResponseCopyWith
    on ApiLiveIdStreamGet200Response {
  /// Returns a callable class that can be used as follows: `instanceOfApiLiveIdStreamGet200Response.copyWith(...)` or like so:`instanceOfApiLiveIdStreamGet200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiLiveIdStreamGet200ResponseCWProxy get copyWith =>
      _$ApiLiveIdStreamGet200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiLiveIdStreamGet200Response _$ApiLiveIdStreamGet200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiLiveIdStreamGet200Response', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['code', 'message', 'data']);
  final val = ApiLiveIdStreamGet200Response(
    code: $checkedConvert('code', (v) => (v as num).toInt()),
    message: $checkedConvert('message', (v) => v as String),
    data: $checkedConvert(
      'data',
      (v) => LiveStreamInfo.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$ApiLiveIdStreamGet200ResponseToJson(
  ApiLiveIdStreamGet200Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.toJson(),
};
