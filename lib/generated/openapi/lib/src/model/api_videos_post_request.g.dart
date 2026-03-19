// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_videos_post_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiVideosPostRequestCWProxy {
  ApiVideosPostRequest title(String title);

  ApiVideosPostRequest url(String url);

  ApiVideosPostRequest intro(String? intro);

  ApiVideosPostRequest coverUrl(String? coverUrl);

  ApiVideosPostRequest duration(int? duration);

  ApiVideosPostRequest gradeRange(String? gradeRange);

  ApiVideosPostRequest subjectTag(String? subjectTag);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiVideosPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiVideosPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiVideosPostRequest call({
    String title,
    String url,
    String? intro,
    String? coverUrl,
    int? duration,
    String? gradeRange,
    String? subjectTag,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiVideosPostRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiVideosPostRequest.copyWith.fieldName(...)`
class _$ApiVideosPostRequestCWProxyImpl
    implements _$ApiVideosPostRequestCWProxy {
  const _$ApiVideosPostRequestCWProxyImpl(this._value);

  final ApiVideosPostRequest _value;

  @override
  ApiVideosPostRequest title(String title) => this(title: title);

  @override
  ApiVideosPostRequest url(String url) => this(url: url);

  @override
  ApiVideosPostRequest intro(String? intro) => this(intro: intro);

  @override
  ApiVideosPostRequest coverUrl(String? coverUrl) => this(coverUrl: coverUrl);

  @override
  ApiVideosPostRequest duration(int? duration) => this(duration: duration);

  @override
  ApiVideosPostRequest gradeRange(String? gradeRange) =>
      this(gradeRange: gradeRange);

  @override
  ApiVideosPostRequest subjectTag(String? subjectTag) =>
      this(subjectTag: subjectTag);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiVideosPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiVideosPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiVideosPostRequest call({
    Object? title = const $CopyWithPlaceholder(),
    Object? url = const $CopyWithPlaceholder(),
    Object? intro = const $CopyWithPlaceholder(),
    Object? coverUrl = const $CopyWithPlaceholder(),
    Object? duration = const $CopyWithPlaceholder(),
    Object? gradeRange = const $CopyWithPlaceholder(),
    Object? subjectTag = const $CopyWithPlaceholder(),
  }) {
    return ApiVideosPostRequest(
      title: title == const $CopyWithPlaceholder()
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String,
      url: url == const $CopyWithPlaceholder()
          ? _value.url
          // ignore: cast_nullable_to_non_nullable
          : url as String,
      intro: intro == const $CopyWithPlaceholder()
          ? _value.intro
          // ignore: cast_nullable_to_non_nullable
          : intro as String?,
      coverUrl: coverUrl == const $CopyWithPlaceholder()
          ? _value.coverUrl
          // ignore: cast_nullable_to_non_nullable
          : coverUrl as String?,
      duration: duration == const $CopyWithPlaceholder()
          ? _value.duration
          // ignore: cast_nullable_to_non_nullable
          : duration as int?,
      gradeRange: gradeRange == const $CopyWithPlaceholder()
          ? _value.gradeRange
          // ignore: cast_nullable_to_non_nullable
          : gradeRange as String?,
      subjectTag: subjectTag == const $CopyWithPlaceholder()
          ? _value.subjectTag
          // ignore: cast_nullable_to_non_nullable
          : subjectTag as String?,
    );
  }
}

extension $ApiVideosPostRequestCopyWith on ApiVideosPostRequest {
  /// Returns a callable class that can be used as follows: `instanceOfApiVideosPostRequest.copyWith(...)` or like so:`instanceOfApiVideosPostRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiVideosPostRequestCWProxy get copyWith =>
      _$ApiVideosPostRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiVideosPostRequest _$ApiVideosPostRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiVideosPostRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['title', 'url']);
  final val = ApiVideosPostRequest(
    title: $checkedConvert('title', (v) => v as String),
    url: $checkedConvert('url', (v) => v as String),
    intro: $checkedConvert('intro', (v) => v as String?),
    coverUrl: $checkedConvert('coverUrl', (v) => v as String?),
    duration: $checkedConvert('duration', (v) => (v as num?)?.toInt()),
    gradeRange: $checkedConvert('gradeRange', (v) => v as String?),
    subjectTag: $checkedConvert('subjectTag', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$ApiVideosPostRequestToJson(
  ApiVideosPostRequest instance,
) => <String, dynamic>{
  'title': instance.title,
  'url': instance.url,
  'intro': ?instance.intro,
  'coverUrl': ?instance.coverUrl,
  'duration': ?instance.duration,
  'gradeRange': ?instance.gradeRange,
  'subjectTag': ?instance.subjectTag,
};
