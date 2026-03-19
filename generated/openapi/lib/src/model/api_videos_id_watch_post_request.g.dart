// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_videos_id_watch_post_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiVideosIdWatchPostRequestCWProxy {
  ApiVideosIdWatchPostRequest lastPositionSec(int? lastPositionSec);

  ApiVideosIdWatchPostRequest watchedSeconds(int? watchedSeconds);

  ApiVideosIdWatchPostRequest completed(bool? completed);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiVideosIdWatchPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiVideosIdWatchPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiVideosIdWatchPostRequest call({
    int? lastPositionSec,
    int? watchedSeconds,
    bool? completed,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiVideosIdWatchPostRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiVideosIdWatchPostRequest.copyWith.fieldName(...)`
class _$ApiVideosIdWatchPostRequestCWProxyImpl
    implements _$ApiVideosIdWatchPostRequestCWProxy {
  const _$ApiVideosIdWatchPostRequestCWProxyImpl(this._value);

  final ApiVideosIdWatchPostRequest _value;

  @override
  ApiVideosIdWatchPostRequest lastPositionSec(int? lastPositionSec) =>
      this(lastPositionSec: lastPositionSec);

  @override
  ApiVideosIdWatchPostRequest watchedSeconds(int? watchedSeconds) =>
      this(watchedSeconds: watchedSeconds);

  @override
  ApiVideosIdWatchPostRequest completed(bool? completed) =>
      this(completed: completed);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiVideosIdWatchPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiVideosIdWatchPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiVideosIdWatchPostRequest call({
    Object? lastPositionSec = const $CopyWithPlaceholder(),
    Object? watchedSeconds = const $CopyWithPlaceholder(),
    Object? completed = const $CopyWithPlaceholder(),
  }) {
    return ApiVideosIdWatchPostRequest(
      lastPositionSec: lastPositionSec == const $CopyWithPlaceholder()
          ? _value.lastPositionSec
          // ignore: cast_nullable_to_non_nullable
          : lastPositionSec as int?,
      watchedSeconds: watchedSeconds == const $CopyWithPlaceholder()
          ? _value.watchedSeconds
          // ignore: cast_nullable_to_non_nullable
          : watchedSeconds as int?,
      completed: completed == const $CopyWithPlaceholder()
          ? _value.completed
          // ignore: cast_nullable_to_non_nullable
          : completed as bool?,
    );
  }
}

extension $ApiVideosIdWatchPostRequestCopyWith on ApiVideosIdWatchPostRequest {
  /// Returns a callable class that can be used as follows: `instanceOfApiVideosIdWatchPostRequest.copyWith(...)` or like so:`instanceOfApiVideosIdWatchPostRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiVideosIdWatchPostRequestCWProxy get copyWith =>
      _$ApiVideosIdWatchPostRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiVideosIdWatchPostRequest _$ApiVideosIdWatchPostRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiVideosIdWatchPostRequest', json, ($checkedConvert) {
  final val = ApiVideosIdWatchPostRequest(
    lastPositionSec: $checkedConvert(
      'lastPositionSec',
      (v) => (v as num?)?.toInt() ?? 0,
    ),
    watchedSeconds: $checkedConvert(
      'watchedSeconds',
      (v) => (v as num?)?.toInt() ?? 0,
    ),
    completed: $checkedConvert('completed', (v) => v as bool?),
  );
  return val;
});

Map<String, dynamic> _$ApiVideosIdWatchPostRequestToJson(
  ApiVideosIdWatchPostRequest instance,
) => <String, dynamic>{
  'lastPositionSec': ?instance.lastPositionSec,
  'watchedSeconds': ?instance.watchedSeconds,
  'completed': ?instance.completed,
};
