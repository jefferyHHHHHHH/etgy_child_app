// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_videos_comments_comment_id_delete200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiVideosCommentsCommentIdDelete200ResponseCWProxy {
  ApiVideosCommentsCommentIdDelete200Response code(int code);

  ApiVideosCommentsCommentIdDelete200Response message(String message);

  ApiVideosCommentsCommentIdDelete200Response data(DeleteResult data);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiVideosCommentsCommentIdDelete200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiVideosCommentsCommentIdDelete200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiVideosCommentsCommentIdDelete200Response call({
    int code,
    String message,
    DeleteResult data,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiVideosCommentsCommentIdDelete200Response.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiVideosCommentsCommentIdDelete200Response.copyWith.fieldName(...)`
class _$ApiVideosCommentsCommentIdDelete200ResponseCWProxyImpl
    implements _$ApiVideosCommentsCommentIdDelete200ResponseCWProxy {
  const _$ApiVideosCommentsCommentIdDelete200ResponseCWProxyImpl(this._value);

  final ApiVideosCommentsCommentIdDelete200Response _value;

  @override
  ApiVideosCommentsCommentIdDelete200Response code(int code) =>
      this(code: code);

  @override
  ApiVideosCommentsCommentIdDelete200Response message(String message) =>
      this(message: message);

  @override
  ApiVideosCommentsCommentIdDelete200Response data(DeleteResult data) =>
      this(data: data);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiVideosCommentsCommentIdDelete200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiVideosCommentsCommentIdDelete200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiVideosCommentsCommentIdDelete200Response call({
    Object? code = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return ApiVideosCommentsCommentIdDelete200Response(
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
          : data as DeleteResult,
    );
  }
}

extension $ApiVideosCommentsCommentIdDelete200ResponseCopyWith
    on ApiVideosCommentsCommentIdDelete200Response {
  /// Returns a callable class that can be used as follows: `instanceOfApiVideosCommentsCommentIdDelete200Response.copyWith(...)` or like so:`instanceOfApiVideosCommentsCommentIdDelete200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiVideosCommentsCommentIdDelete200ResponseCWProxy get copyWith =>
      _$ApiVideosCommentsCommentIdDelete200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiVideosCommentsCommentIdDelete200Response
_$ApiVideosCommentsCommentIdDelete200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiVideosCommentsCommentIdDelete200Response', json, (
  $checkedConvert,
) {
  $checkKeys(json, requiredKeys: const ['code', 'message', 'data']);
  final val = ApiVideosCommentsCommentIdDelete200Response(
    code: $checkedConvert('code', (v) => (v as num).toInt()),
    message: $checkedConvert('message', (v) => v as String),
    data: $checkedConvert(
      'data',
      (v) => DeleteResult.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$ApiVideosCommentsCommentIdDelete200ResponseToJson(
  ApiVideosCommentsCommentIdDelete200Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.toJson(),
};
