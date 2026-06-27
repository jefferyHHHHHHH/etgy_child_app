// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_media_urls.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$VideoMediaUrlsCWProxy {
  VideoMediaUrls url(String url);

  VideoMediaUrls coverUrl(String? coverUrl);

  VideoMediaUrls expiresInSeconds(int expiresInSeconds);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VideoMediaUrls(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VideoMediaUrls(...).copyWith(id: 12, name: "My name")
  /// ````
  VideoMediaUrls call({String url, String? coverUrl, int expiresInSeconds});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfVideoMediaUrls.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfVideoMediaUrls.copyWith.fieldName(...)`
class _$VideoMediaUrlsCWProxyImpl implements _$VideoMediaUrlsCWProxy {
  const _$VideoMediaUrlsCWProxyImpl(this._value);

  final VideoMediaUrls _value;

  @override
  VideoMediaUrls url(String url) => this(url: url);

  @override
  VideoMediaUrls coverUrl(String? coverUrl) => this(coverUrl: coverUrl);

  @override
  VideoMediaUrls expiresInSeconds(int expiresInSeconds) =>
      this(expiresInSeconds: expiresInSeconds);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VideoMediaUrls(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VideoMediaUrls(...).copyWith(id: 12, name: "My name")
  /// ````
  VideoMediaUrls call({
    Object? url = const $CopyWithPlaceholder(),
    Object? coverUrl = const $CopyWithPlaceholder(),
    Object? expiresInSeconds = const $CopyWithPlaceholder(),
  }) {
    return VideoMediaUrls(
      url: url == const $CopyWithPlaceholder()
          ? _value.url
          // ignore: cast_nullable_to_non_nullable
          : url as String,
      coverUrl: coverUrl == const $CopyWithPlaceholder()
          ? _value.coverUrl
          // ignore: cast_nullable_to_non_nullable
          : coverUrl as String?,
      expiresInSeconds: expiresInSeconds == const $CopyWithPlaceholder()
          ? _value.expiresInSeconds
          // ignore: cast_nullable_to_non_nullable
          : expiresInSeconds as int,
    );
  }
}

extension $VideoMediaUrlsCopyWith on VideoMediaUrls {
  /// Returns a callable class that can be used as follows: `instanceOfVideoMediaUrls.copyWith(...)` or like so:`instanceOfVideoMediaUrls.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$VideoMediaUrlsCWProxy get copyWith => _$VideoMediaUrlsCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideoMediaUrls _$VideoMediaUrlsFromJson(Map<String, dynamic> json) =>
    $checkedCreate('VideoMediaUrls', json, ($checkedConvert) {
      $checkKeys(
        json,
        requiredKeys: const ['url', 'coverUrl', 'expiresInSeconds'],
      );
      final val = VideoMediaUrls(
        url: $checkedConvert('url', (v) => v as String),
        coverUrl: $checkedConvert('coverUrl', (v) => v as String?),
        expiresInSeconds: $checkedConvert(
          'expiresInSeconds',
          (v) => (v as num).toInt(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$VideoMediaUrlsToJson(VideoMediaUrls instance) =>
    <String, dynamic>{
      'url': instance.url,
      'coverUrl': instance.coverUrl,
      'expiresInSeconds': instance.expiresInSeconds,
    };
