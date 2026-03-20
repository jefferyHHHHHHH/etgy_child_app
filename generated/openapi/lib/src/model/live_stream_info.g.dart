// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_stream_info.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LiveStreamInfoCWProxy {
  LiveStreamInfo liveId(int liveId);

  LiveStreamInfo pushUrl(String? pushUrl);

  LiveStreamInfo pullUrl(String? pullUrl);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LiveStreamInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LiveStreamInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  LiveStreamInfo call({int liveId, String? pushUrl, String? pullUrl});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLiveStreamInfo.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfLiveStreamInfo.copyWith.fieldName(...)`
class _$LiveStreamInfoCWProxyImpl implements _$LiveStreamInfoCWProxy {
  const _$LiveStreamInfoCWProxyImpl(this._value);

  final LiveStreamInfo _value;

  @override
  LiveStreamInfo liveId(int liveId) => this(liveId: liveId);

  @override
  LiveStreamInfo pushUrl(String? pushUrl) => this(pushUrl: pushUrl);

  @override
  LiveStreamInfo pullUrl(String? pullUrl) => this(pullUrl: pullUrl);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LiveStreamInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LiveStreamInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  LiveStreamInfo call({
    Object? liveId = const $CopyWithPlaceholder(),
    Object? pushUrl = const $CopyWithPlaceholder(),
    Object? pullUrl = const $CopyWithPlaceholder(),
  }) {
    return LiveStreamInfo(
      liveId: liveId == const $CopyWithPlaceholder()
          ? _value.liveId
          // ignore: cast_nullable_to_non_nullable
          : liveId as int,
      pushUrl: pushUrl == const $CopyWithPlaceholder()
          ? _value.pushUrl
          // ignore: cast_nullable_to_non_nullable
          : pushUrl as String?,
      pullUrl: pullUrl == const $CopyWithPlaceholder()
          ? _value.pullUrl
          // ignore: cast_nullable_to_non_nullable
          : pullUrl as String?,
    );
  }
}

extension $LiveStreamInfoCopyWith on LiveStreamInfo {
  /// Returns a callable class that can be used as follows: `instanceOfLiveStreamInfo.copyWith(...)` or like so:`instanceOfLiveStreamInfo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LiveStreamInfoCWProxy get copyWith => _$LiveStreamInfoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LiveStreamInfo _$LiveStreamInfoFromJson(Map<String, dynamic> json) =>
    $checkedCreate('LiveStreamInfo', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['liveId', 'pushUrl', 'pullUrl']);
      final val = LiveStreamInfo(
        liveId: $checkedConvert('liveId', (v) => (v as num).toInt()),
        pushUrl: $checkedConvert('pushUrl', (v) => v as String?),
        pullUrl: $checkedConvert('pullUrl', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$LiveStreamInfoToJson(LiveStreamInfo instance) =>
    <String, dynamic>{
      'liveId': instance.liveId,
      'pushUrl': instance.pushUrl,
      'pullUrl': instance.pullUrl,
    };
