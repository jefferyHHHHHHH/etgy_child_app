// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_videos_id_offline_post_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiVideosIdOfflinePostRequestCWProxy {
  ApiVideosIdOfflinePostRequest reason(String? reason);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiVideosIdOfflinePostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiVideosIdOfflinePostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiVideosIdOfflinePostRequest call({String? reason});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiVideosIdOfflinePostRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiVideosIdOfflinePostRequest.copyWith.fieldName(...)`
class _$ApiVideosIdOfflinePostRequestCWProxyImpl
    implements _$ApiVideosIdOfflinePostRequestCWProxy {
  const _$ApiVideosIdOfflinePostRequestCWProxyImpl(this._value);

  final ApiVideosIdOfflinePostRequest _value;

  @override
  ApiVideosIdOfflinePostRequest reason(String? reason) => this(reason: reason);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiVideosIdOfflinePostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiVideosIdOfflinePostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiVideosIdOfflinePostRequest call({
    Object? reason = const $CopyWithPlaceholder(),
  }) {
    return ApiVideosIdOfflinePostRequest(
      reason: reason == const $CopyWithPlaceholder()
          ? _value.reason
          // ignore: cast_nullable_to_non_nullable
          : reason as String?,
    );
  }
}

extension $ApiVideosIdOfflinePostRequestCopyWith
    on ApiVideosIdOfflinePostRequest {
  /// Returns a callable class that can be used as follows: `instanceOfApiVideosIdOfflinePostRequest.copyWith(...)` or like so:`instanceOfApiVideosIdOfflinePostRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiVideosIdOfflinePostRequestCWProxy get copyWith =>
      _$ApiVideosIdOfflinePostRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiVideosIdOfflinePostRequest _$ApiVideosIdOfflinePostRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiVideosIdOfflinePostRequest', json, ($checkedConvert) {
  final val = ApiVideosIdOfflinePostRequest(
    reason: $checkedConvert('reason', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$ApiVideosIdOfflinePostRequestToJson(
  ApiVideosIdOfflinePostRequest instance,
) => <String, dynamic>{'reason': ?instance.reason};
