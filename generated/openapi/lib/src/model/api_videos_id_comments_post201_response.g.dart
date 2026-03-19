// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_videos_id_comments_post201_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiVideosIdCommentsPost201ResponseCWProxy {
  ApiVideosIdCommentsPost201Response code(int code);

  ApiVideosIdCommentsPost201Response message(String message);

  ApiVideosIdCommentsPost201Response data(VideoComment data);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiVideosIdCommentsPost201Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiVideosIdCommentsPost201Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiVideosIdCommentsPost201Response call({
    int code,
    String message,
    VideoComment data,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiVideosIdCommentsPost201Response.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiVideosIdCommentsPost201Response.copyWith.fieldName(...)`
class _$ApiVideosIdCommentsPost201ResponseCWProxyImpl
    implements _$ApiVideosIdCommentsPost201ResponseCWProxy {
  const _$ApiVideosIdCommentsPost201ResponseCWProxyImpl(this._value);

  final ApiVideosIdCommentsPost201Response _value;

  @override
  ApiVideosIdCommentsPost201Response code(int code) => this(code: code);

  @override
  ApiVideosIdCommentsPost201Response message(String message) =>
      this(message: message);

  @override
  ApiVideosIdCommentsPost201Response data(VideoComment data) =>
      this(data: data);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiVideosIdCommentsPost201Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiVideosIdCommentsPost201Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiVideosIdCommentsPost201Response call({
    Object? code = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return ApiVideosIdCommentsPost201Response(
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
          : data as VideoComment,
    );
  }
}

extension $ApiVideosIdCommentsPost201ResponseCopyWith
    on ApiVideosIdCommentsPost201Response {
  /// Returns a callable class that can be used as follows: `instanceOfApiVideosIdCommentsPost201Response.copyWith(...)` or like so:`instanceOfApiVideosIdCommentsPost201Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiVideosIdCommentsPost201ResponseCWProxy get copyWith =>
      _$ApiVideosIdCommentsPost201ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiVideosIdCommentsPost201Response _$ApiVideosIdCommentsPost201ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiVideosIdCommentsPost201Response', json, (
  $checkedConvert,
) {
  $checkKeys(json, requiredKeys: const ['code', 'message', 'data']);
  final val = ApiVideosIdCommentsPost201Response(
    code: $checkedConvert('code', (v) => (v as num).toInt()),
    message: $checkedConvert('message', (v) => v as String),
    data: $checkedConvert(
      'data',
      (v) => VideoComment.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$ApiVideosIdCommentsPost201ResponseToJson(
  ApiVideosIdCommentsPost201Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.toJson(),
};
