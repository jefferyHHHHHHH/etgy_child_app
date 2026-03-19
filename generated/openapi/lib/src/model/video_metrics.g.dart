// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_metrics.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$VideoMetricsCWProxy {
  VideoMetrics playCount(int playCount);

  VideoMetrics likeCount(int likeCount);

  VideoMetrics favCount(int favCount);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VideoMetrics(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VideoMetrics(...).copyWith(id: 12, name: "My name")
  /// ````
  VideoMetrics call({int playCount, int likeCount, int favCount});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfVideoMetrics.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfVideoMetrics.copyWith.fieldName(...)`
class _$VideoMetricsCWProxyImpl implements _$VideoMetricsCWProxy {
  const _$VideoMetricsCWProxyImpl(this._value);

  final VideoMetrics _value;

  @override
  VideoMetrics playCount(int playCount) => this(playCount: playCount);

  @override
  VideoMetrics likeCount(int likeCount) => this(likeCount: likeCount);

  @override
  VideoMetrics favCount(int favCount) => this(favCount: favCount);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VideoMetrics(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VideoMetrics(...).copyWith(id: 12, name: "My name")
  /// ````
  VideoMetrics call({
    Object? playCount = const $CopyWithPlaceholder(),
    Object? likeCount = const $CopyWithPlaceholder(),
    Object? favCount = const $CopyWithPlaceholder(),
  }) {
    return VideoMetrics(
      playCount: playCount == const $CopyWithPlaceholder()
          ? _value.playCount
          // ignore: cast_nullable_to_non_nullable
          : playCount as int,
      likeCount: likeCount == const $CopyWithPlaceholder()
          ? _value.likeCount
          // ignore: cast_nullable_to_non_nullable
          : likeCount as int,
      favCount: favCount == const $CopyWithPlaceholder()
          ? _value.favCount
          // ignore: cast_nullable_to_non_nullable
          : favCount as int,
    );
  }
}

extension $VideoMetricsCopyWith on VideoMetrics {
  /// Returns a callable class that can be used as follows: `instanceOfVideoMetrics.copyWith(...)` or like so:`instanceOfVideoMetrics.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$VideoMetricsCWProxy get copyWith => _$VideoMetricsCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideoMetrics _$VideoMetricsFromJson(Map<String, dynamic> json) =>
    $checkedCreate('VideoMetrics', json, ($checkedConvert) {
      $checkKeys(
        json,
        requiredKeys: const ['playCount', 'likeCount', 'favCount'],
      );
      final val = VideoMetrics(
        playCount: $checkedConvert('playCount', (v) => (v as num).toInt()),
        likeCount: $checkedConvert('likeCount', (v) => (v as num).toInt()),
        favCount: $checkedConvert('favCount', (v) => (v as num).toInt()),
      );
      return val;
    });

Map<String, dynamic> _$VideoMetricsToJson(VideoMetrics instance) =>
    <String, dynamic>{
      'playCount': instance.playCount,
      'likeCount': instance.likeCount,
      'favCount': instance.favCount,
    };
