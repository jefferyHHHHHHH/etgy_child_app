// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_videos_id_comments_post_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiVideosIdCommentsPostRequestCWProxy {
  ApiVideosIdCommentsPostRequest content(String content);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiVideosIdCommentsPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiVideosIdCommentsPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiVideosIdCommentsPostRequest call({String content});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiVideosIdCommentsPostRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiVideosIdCommentsPostRequest.copyWith.fieldName(...)`
class _$ApiVideosIdCommentsPostRequestCWProxyImpl
    implements _$ApiVideosIdCommentsPostRequestCWProxy {
  const _$ApiVideosIdCommentsPostRequestCWProxyImpl(this._value);

  final ApiVideosIdCommentsPostRequest _value;

  @override
  ApiVideosIdCommentsPostRequest content(String content) =>
      this(content: content);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiVideosIdCommentsPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiVideosIdCommentsPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiVideosIdCommentsPostRequest call({
    Object? content = const $CopyWithPlaceholder(),
  }) {
    return ApiVideosIdCommentsPostRequest(
      content: content == const $CopyWithPlaceholder()
          ? _value.content
          // ignore: cast_nullable_to_non_nullable
          : content as String,
    );
  }
}

extension $ApiVideosIdCommentsPostRequestCopyWith
    on ApiVideosIdCommentsPostRequest {
  /// Returns a callable class that can be used as follows: `instanceOfApiVideosIdCommentsPostRequest.copyWith(...)` or like so:`instanceOfApiVideosIdCommentsPostRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiVideosIdCommentsPostRequestCWProxy get copyWith =>
      _$ApiVideosIdCommentsPostRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiVideosIdCommentsPostRequest _$ApiVideosIdCommentsPostRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiVideosIdCommentsPostRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['content']);
  final val = ApiVideosIdCommentsPostRequest(
    content: $checkedConvert('content', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$ApiVideosIdCommentsPostRequestToJson(
  ApiVideosIdCommentsPostRequest instance,
) => <String, dynamic>{'content': instance.content};
