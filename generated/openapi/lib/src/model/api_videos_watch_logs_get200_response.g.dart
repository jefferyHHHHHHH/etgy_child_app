// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_videos_watch_logs_get200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiVideosWatchLogsGet200ResponseCWProxy {
  ApiVideosWatchLogsGet200Response code(int code);

  ApiVideosWatchLogsGet200Response message(String message);

  ApiVideosWatchLogsGet200Response data(
    ApiVideosWatchLogsGet200ResponseAllOfData data,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiVideosWatchLogsGet200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiVideosWatchLogsGet200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiVideosWatchLogsGet200Response call({
    int code,
    String message,
    ApiVideosWatchLogsGet200ResponseAllOfData data,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiVideosWatchLogsGet200Response.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiVideosWatchLogsGet200Response.copyWith.fieldName(...)`
class _$ApiVideosWatchLogsGet200ResponseCWProxyImpl
    implements _$ApiVideosWatchLogsGet200ResponseCWProxy {
  const _$ApiVideosWatchLogsGet200ResponseCWProxyImpl(this._value);

  final ApiVideosWatchLogsGet200Response _value;

  @override
  ApiVideosWatchLogsGet200Response code(int code) => this(code: code);

  @override
  ApiVideosWatchLogsGet200Response message(String message) =>
      this(message: message);

  @override
  ApiVideosWatchLogsGet200Response data(
    ApiVideosWatchLogsGet200ResponseAllOfData data,
  ) => this(data: data);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiVideosWatchLogsGet200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiVideosWatchLogsGet200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiVideosWatchLogsGet200Response call({
    Object? code = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return ApiVideosWatchLogsGet200Response(
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
          : data as ApiVideosWatchLogsGet200ResponseAllOfData,
    );
  }
}

extension $ApiVideosWatchLogsGet200ResponseCopyWith
    on ApiVideosWatchLogsGet200Response {
  /// Returns a callable class that can be used as follows: `instanceOfApiVideosWatchLogsGet200Response.copyWith(...)` or like so:`instanceOfApiVideosWatchLogsGet200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiVideosWatchLogsGet200ResponseCWProxy get copyWith =>
      _$ApiVideosWatchLogsGet200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiVideosWatchLogsGet200Response _$ApiVideosWatchLogsGet200ResponseFromJson(
  Map<String, dynamic> json,
) =>
    $checkedCreate('ApiVideosWatchLogsGet200Response', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['code', 'message', 'data']);
      final val = ApiVideosWatchLogsGet200Response(
        code: $checkedConvert('code', (v) => (v as num).toInt()),
        message: $checkedConvert('message', (v) => v as String),
        data: $checkedConvert(
          'data',
          (v) => ApiVideosWatchLogsGet200ResponseAllOfData.fromJson(
            v as Map<String, dynamic>,
          ),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ApiVideosWatchLogsGet200ResponseToJson(
  ApiVideosWatchLogsGet200Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.toJson(),
};
