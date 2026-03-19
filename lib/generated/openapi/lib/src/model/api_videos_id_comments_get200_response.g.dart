// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_videos_id_comments_get200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiVideosIdCommentsGet200ResponseCWProxy {
  ApiVideosIdCommentsGet200Response code(int code);

  ApiVideosIdCommentsGet200Response message(String message);

  ApiVideosIdCommentsGet200Response data(List<VideoComment> data);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiVideosIdCommentsGet200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiVideosIdCommentsGet200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiVideosIdCommentsGet200Response call({
    int code,
    String message,
    List<VideoComment> data,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiVideosIdCommentsGet200Response.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiVideosIdCommentsGet200Response.copyWith.fieldName(...)`
class _$ApiVideosIdCommentsGet200ResponseCWProxyImpl
    implements _$ApiVideosIdCommentsGet200ResponseCWProxy {
  const _$ApiVideosIdCommentsGet200ResponseCWProxyImpl(this._value);

  final ApiVideosIdCommentsGet200Response _value;

  @override
  ApiVideosIdCommentsGet200Response code(int code) => this(code: code);

  @override
  ApiVideosIdCommentsGet200Response message(String message) =>
      this(message: message);

  @override
  ApiVideosIdCommentsGet200Response data(List<VideoComment> data) =>
      this(data: data);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiVideosIdCommentsGet200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiVideosIdCommentsGet200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiVideosIdCommentsGet200Response call({
    Object? code = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return ApiVideosIdCommentsGet200Response(
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
          : data as List<VideoComment>,
    );
  }
}

extension $ApiVideosIdCommentsGet200ResponseCopyWith
    on ApiVideosIdCommentsGet200Response {
  /// Returns a callable class that can be used as follows: `instanceOfApiVideosIdCommentsGet200Response.copyWith(...)` or like so:`instanceOfApiVideosIdCommentsGet200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiVideosIdCommentsGet200ResponseCWProxy get copyWith =>
      _$ApiVideosIdCommentsGet200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiVideosIdCommentsGet200Response _$ApiVideosIdCommentsGet200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiVideosIdCommentsGet200Response', json, (
  $checkedConvert,
) {
  $checkKeys(json, requiredKeys: const ['code', 'message', 'data']);
  final val = ApiVideosIdCommentsGet200Response(
    code: $checkedConvert('code', (v) => (v as num).toInt()),
    message: $checkedConvert('message', (v) => v as String),
    data: $checkedConvert(
      'data',
      (v) => (v as List<dynamic>)
          .map((e) => VideoComment.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$ApiVideosIdCommentsGet200ResponseToJson(
  ApiVideosIdCommentsGet200Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.map((e) => e.toJson()).toList(),
};
