// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_videos_audit_batch_post_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiVideosAuditBatchPostRequestCWProxy {
  ApiVideosAuditBatchPostRequest ids(List<int> ids);

  ApiVideosAuditBatchPostRequest pass(bool? pass);

  ApiVideosAuditBatchPostRequest reason(String? reason);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiVideosAuditBatchPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiVideosAuditBatchPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiVideosAuditBatchPostRequest call({
    List<int> ids,
    bool? pass,
    String? reason,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiVideosAuditBatchPostRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiVideosAuditBatchPostRequest.copyWith.fieldName(...)`
class _$ApiVideosAuditBatchPostRequestCWProxyImpl
    implements _$ApiVideosAuditBatchPostRequestCWProxy {
  const _$ApiVideosAuditBatchPostRequestCWProxyImpl(this._value);

  final ApiVideosAuditBatchPostRequest _value;

  @override
  ApiVideosAuditBatchPostRequest ids(List<int> ids) => this(ids: ids);

  @override
  ApiVideosAuditBatchPostRequest pass(bool? pass) => this(pass: pass);

  @override
  ApiVideosAuditBatchPostRequest reason(String? reason) => this(reason: reason);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiVideosAuditBatchPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiVideosAuditBatchPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiVideosAuditBatchPostRequest call({
    Object? ids = const $CopyWithPlaceholder(),
    Object? pass = const $CopyWithPlaceholder(),
    Object? reason = const $CopyWithPlaceholder(),
  }) {
    return ApiVideosAuditBatchPostRequest(
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

extension $ApiVideosAuditBatchPostRequestCopyWith
    on ApiVideosAuditBatchPostRequest {
  /// Returns a callable class that can be used as follows: `instanceOfApiVideosAuditBatchPostRequest.copyWith(...)` or like so:`instanceOfApiVideosAuditBatchPostRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiVideosAuditBatchPostRequestCWProxy get copyWith =>
      _$ApiVideosAuditBatchPostRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiVideosAuditBatchPostRequest _$ApiVideosAuditBatchPostRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiVideosAuditBatchPostRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['ids']);
  final val = ApiVideosAuditBatchPostRequest(
    ids: $checkedConvert(
      'ids',
      (v) => (v as List<dynamic>).map((e) => (e as num).toInt()).toList(),
    ),
    pass: $checkedConvert('pass', (v) => v as bool?),
    reason: $checkedConvert('reason', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$ApiVideosAuditBatchPostRequestToJson(
  ApiVideosAuditBatchPostRequest instance,
) => <String, dynamic>{
  'ids': instance.ids,
  'pass': ?instance.pass,
  'reason': ?instance.reason,
};
