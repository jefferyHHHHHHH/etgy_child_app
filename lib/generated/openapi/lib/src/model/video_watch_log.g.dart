// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_watch_log.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$VideoWatchLogCWProxy {
  VideoWatchLog id(int id);

  VideoWatchLog videoId(int videoId);

  VideoWatchLog userId(int userId);

  VideoWatchLog lastPositionSec(int lastPositionSec);

  VideoWatchLog watchedSeconds(int watchedSeconds);

  VideoWatchLog completed(bool completed);

  VideoWatchLog createdAt(DateTime createdAt);

  VideoWatchLog updatedAt(DateTime updatedAt);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VideoWatchLog(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VideoWatchLog(...).copyWith(id: 12, name: "My name")
  /// ````
  VideoWatchLog call({
    int id,
    int videoId,
    int userId,
    int lastPositionSec,
    int watchedSeconds,
    bool completed,
    DateTime createdAt,
    DateTime updatedAt,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfVideoWatchLog.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfVideoWatchLog.copyWith.fieldName(...)`
class _$VideoWatchLogCWProxyImpl implements _$VideoWatchLogCWProxy {
  const _$VideoWatchLogCWProxyImpl(this._value);

  final VideoWatchLog _value;

  @override
  VideoWatchLog id(int id) => this(id: id);

  @override
  VideoWatchLog videoId(int videoId) => this(videoId: videoId);

  @override
  VideoWatchLog userId(int userId) => this(userId: userId);

  @override
  VideoWatchLog lastPositionSec(int lastPositionSec) =>
      this(lastPositionSec: lastPositionSec);

  @override
  VideoWatchLog watchedSeconds(int watchedSeconds) =>
      this(watchedSeconds: watchedSeconds);

  @override
  VideoWatchLog completed(bool completed) => this(completed: completed);

  @override
  VideoWatchLog createdAt(DateTime createdAt) => this(createdAt: createdAt);

  @override
  VideoWatchLog updatedAt(DateTime updatedAt) => this(updatedAt: updatedAt);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VideoWatchLog(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VideoWatchLog(...).copyWith(id: 12, name: "My name")
  /// ````
  VideoWatchLog call({
    Object? id = const $CopyWithPlaceholder(),
    Object? videoId = const $CopyWithPlaceholder(),
    Object? userId = const $CopyWithPlaceholder(),
    Object? lastPositionSec = const $CopyWithPlaceholder(),
    Object? watchedSeconds = const $CopyWithPlaceholder(),
    Object? completed = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
  }) {
    return VideoWatchLog(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      videoId: videoId == const $CopyWithPlaceholder()
          ? _value.videoId
          // ignore: cast_nullable_to_non_nullable
          : videoId as int,
      userId: userId == const $CopyWithPlaceholder()
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as int,
      lastPositionSec: lastPositionSec == const $CopyWithPlaceholder()
          ? _value.lastPositionSec
          // ignore: cast_nullable_to_non_nullable
          : lastPositionSec as int,
      watchedSeconds: watchedSeconds == const $CopyWithPlaceholder()
          ? _value.watchedSeconds
          // ignore: cast_nullable_to_non_nullable
          : watchedSeconds as int,
      completed: completed == const $CopyWithPlaceholder()
          ? _value.completed
          // ignore: cast_nullable_to_non_nullable
          : completed as bool,
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime,
      updatedAt: updatedAt == const $CopyWithPlaceholder()
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as DateTime,
    );
  }
}

extension $VideoWatchLogCopyWith on VideoWatchLog {
  /// Returns a callable class that can be used as follows: `instanceOfVideoWatchLog.copyWith(...)` or like so:`instanceOfVideoWatchLog.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$VideoWatchLogCWProxy get copyWith => _$VideoWatchLogCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideoWatchLog _$VideoWatchLogFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('VideoWatchLog', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'videoId',
      'userId',
      'lastPositionSec',
      'watchedSeconds',
      'completed',
      'createdAt',
      'updatedAt',
    ],
  );
  final val = VideoWatchLog(
    id: $checkedConvert('id', (v) => (v as num).toInt()),
    videoId: $checkedConvert('videoId', (v) => (v as num).toInt()),
    userId: $checkedConvert('userId', (v) => (v as num).toInt()),
    lastPositionSec: $checkedConvert(
      'lastPositionSec',
      (v) => (v as num).toInt(),
    ),
    watchedSeconds: $checkedConvert(
      'watchedSeconds',
      (v) => (v as num).toInt(),
    ),
    completed: $checkedConvert('completed', (v) => v as bool),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
  );
  return val;
});

Map<String, dynamic> _$VideoWatchLogToJson(VideoWatchLog instance) =>
    <String, dynamic>{
      'id': instance.id,
      'videoId': instance.videoId,
      'userId': instance.userId,
      'lastPositionSec': instance.lastPositionSec,
      'watchedSeconds': instance.watchedSeconds,
      'completed': instance.completed,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
