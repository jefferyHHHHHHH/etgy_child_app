// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_videos_comments_comment_id_audit_post_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiVideosCommentsCommentIdAuditPostRequestCWProxy {
  ApiVideosCommentsCommentIdAuditPostRequest pass(bool? pass);

  ApiVideosCommentsCommentIdAuditPostRequest reason(String? reason);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiVideosCommentsCommentIdAuditPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiVideosCommentsCommentIdAuditPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiVideosCommentsCommentIdAuditPostRequest call({bool? pass, String? reason});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiVideosCommentsCommentIdAuditPostRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiVideosCommentsCommentIdAuditPostRequest.copyWith.fieldName(...)`
class _$ApiVideosCommentsCommentIdAuditPostRequestCWProxyImpl
    implements _$ApiVideosCommentsCommentIdAuditPostRequestCWProxy {
  const _$ApiVideosCommentsCommentIdAuditPostRequestCWProxyImpl(this._value);

  final ApiVideosCommentsCommentIdAuditPostRequest _value;

  @override
  ApiVideosCommentsCommentIdAuditPostRequest pass(bool? pass) =>
      this(pass: pass);

  @override
  ApiVideosCommentsCommentIdAuditPostRequest reason(String? reason) =>
      this(reason: reason);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiVideosCommentsCommentIdAuditPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiVideosCommentsCommentIdAuditPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiVideosCommentsCommentIdAuditPostRequest call({
    Object? pass = const $CopyWithPlaceholder(),
    Object? reason = const $CopyWithPlaceholder(),
  }) {
    return ApiVideosCommentsCommentIdAuditPostRequest(
      pass: pass == const $CopyWithPlaceholder()
          ? _value.pass
          // ignore: cast_nullable_to_non_nullable
          : pass as bool?,
      reason: reason == const $CopyWithPlaceholder()
          ? _value.reason
          // ignore: cast_nullable_to_non_nullable
          : reason as String?,
    );
  }
}

extension $ApiVideosCommentsCommentIdAuditPostRequestCopyWith
    on ApiVideosCommentsCommentIdAuditPostRequest {
  /// Returns a callable class that can be used as follows: `instanceOfApiVideosCommentsCommentIdAuditPostRequest.copyWith(...)` or like so:`instanceOfApiVideosCommentsCommentIdAuditPostRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiVideosCommentsCommentIdAuditPostRequestCWProxy get copyWith =>
      _$ApiVideosCommentsCommentIdAuditPostRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiVideosCommentsCommentIdAuditPostRequest
_$ApiVideosCommentsCommentIdAuditPostRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiVideosCommentsCommentIdAuditPostRequest', json, (
  $checkedConvert,
) {
  final val = ApiVideosCommentsCommentIdAuditPostRequest(
    pass: $checkedConvert('pass', (v) => v as bool?),
    reason: $checkedConvert('reason', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$ApiVideosCommentsCommentIdAuditPostRequestToJson(
  ApiVideosCommentsCommentIdAuditPostRequest instance,
) => <String, dynamic>{'pass': ?instance.pass, 'reason': ?instance.reason};
