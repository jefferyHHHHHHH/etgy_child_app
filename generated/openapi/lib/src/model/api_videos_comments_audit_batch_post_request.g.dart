// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_videos_comments_audit_batch_post_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiVideosCommentsAuditBatchPostRequestCWProxy {
  ApiVideosCommentsAuditBatchPostRequest ids(List<int> ids);

  ApiVideosCommentsAuditBatchPostRequest pass(bool? pass);

  ApiVideosCommentsAuditBatchPostRequest reason(String? reason);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiVideosCommentsAuditBatchPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiVideosCommentsAuditBatchPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiVideosCommentsAuditBatchPostRequest call({
    List<int> ids,
    bool? pass,
    String? reason,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiVideosCommentsAuditBatchPostRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiVideosCommentsAuditBatchPostRequest.copyWith.fieldName(...)`
class _$ApiVideosCommentsAuditBatchPostRequestCWProxyImpl
    implements _$ApiVideosCommentsAuditBatchPostRequestCWProxy {
  const _$ApiVideosCommentsAuditBatchPostRequestCWProxyImpl(this._value);

  final ApiVideosCommentsAuditBatchPostRequest _value;

  @override
  ApiVideosCommentsAuditBatchPostRequest ids(List<int> ids) => this(ids: ids);

  @override
  ApiVideosCommentsAuditBatchPostRequest pass(bool? pass) => this(pass: pass);

  @override
  ApiVideosCommentsAuditBatchPostRequest reason(String? reason) =>
      this(reason: reason);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiVideosCommentsAuditBatchPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiVideosCommentsAuditBatchPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiVideosCommentsAuditBatchPostRequest call({
    Object? ids = const $CopyWithPlaceholder(),
    Object? pass = const $CopyWithPlaceholder(),
    Object? reason = const $CopyWithPlaceholder(),
  }) {
    return ApiVideosCommentsAuditBatchPostRequest(
      ids: ids == const $CopyWithPlaceholder()
          ? _value.ids
          // ignore: cast_nullable_to_non_nullable
          : ids as List<int>,
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

extension $ApiVideosCommentsAuditBatchPostRequestCopyWith
    on ApiVideosCommentsAuditBatchPostRequest {
  /// Returns a callable class that can be used as follows: `instanceOfApiVideosCommentsAuditBatchPostRequest.copyWith(...)` or like so:`instanceOfApiVideosCommentsAuditBatchPostRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiVideosCommentsAuditBatchPostRequestCWProxy get copyWith =>
      _$ApiVideosCommentsAuditBatchPostRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiVideosCommentsAuditBatchPostRequest
_$ApiVideosCommentsAuditBatchPostRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ApiVideosCommentsAuditBatchPostRequest', json, (
      $checkedConvert,
    ) {
      $checkKeys(json, requiredKeys: const ['ids']);
      final val = ApiVideosCommentsAuditBatchPostRequest(
        ids: $checkedConvert(
          'ids',
          (v) => (v as List<dynamic>).map((e) => (e as num).toInt()).toList(),
        ),
        pass: $checkedConvert('pass', (v) => v as bool?),
        reason: $checkedConvert('reason', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$ApiVideosCommentsAuditBatchPostRequestToJson(
  ApiVideosCommentsAuditBatchPostRequest instance,
) => <String, dynamic>{
  'ids': instance.ids,
  'pass': ?instance.pass,
  'reason': ?instance.reason,
};
