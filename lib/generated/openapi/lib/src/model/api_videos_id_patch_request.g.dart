// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_videos_id_patch_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiVideosIdPatchRequestCWProxy {
  ApiVideosIdPatchRequest title(String? title);

  ApiVideosIdPatchRequest url(String? url);

  ApiVideosIdPatchRequest intro(String? intro);

  ApiVideosIdPatchRequest coverUrl(String? coverUrl);

  ApiVideosIdPatchRequest duration(int? duration);

  ApiVideosIdPatchRequest gradeRange(String? gradeRange);

  ApiVideosIdPatchRequest subjectTag(String? subjectTag);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiVideosIdPatchRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiVideosIdPatchRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiVideosIdPatchRequest call({
    String? title,
    String? url,
    String? intro,
    String? coverUrl,
    int? duration,
    String? gradeRange,
    String? subjectTag,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiVideosIdPatchRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiVideosIdPatchRequest.copyWith.fieldName(...)`
class _$ApiVideosIdPatchRequestCWProxyImpl
    implements _$ApiVideosIdPatchRequestCWProxy {
  const _$ApiVideosIdPatchRequestCWProxyImpl(this._value);

  final ApiVideosIdPatchRequest _value;

  @override
  ApiVideosIdPatchRequest title(String? title) => this(title: title);

  @override
  ApiVideosIdPatchRequest url(String? url) => this(url: url);

  @override
  ApiVideosIdPatchRequest intro(String? intro) => this(intro: intro);

  @override
  ApiVideosIdPatchRequest coverUrl(String? coverUrl) =>
      this(coverUrl: coverUrl);

  @override
  ApiVideosIdPatchRequest duration(int? duration) => this(duration: duration);

  @override
  ApiVideosIdPatchRequest gradeRange(String? gradeRange) =>
      this(gradeRange: gradeRange);

  @override
  ApiVideosIdPatchRequest subjectTag(String? subjectTag) =>
      this(subjectTag: subjectTag);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiVideosIdPatchRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiVideosIdPatchRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiVideosIdPatchRequest call({
    Object? title = const $CopyWithPlaceholder(),
    Object? url = const $CopyWithPlaceholder(),
    Object? intro = const $CopyWithPlaceholder(),
    Object? coverUrl = const $CopyWithPlaceholder(),
    Object? duration = const $CopyWithPlaceholder(),
    Object? gradeRange = const $CopyWithPlaceholder(),
    Object? subjectTag = const $CopyWithPlaceholder(),
  }) {
    return ApiVideosIdPatchRequest(
      title: title == const $CopyWithPlaceholder()
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String?,
      url: url == const $CopyWithPlaceholder()
          ? _value.url
          // ignore: cast_nullable_to_non_nullable
          : url as String?,
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

extension $ApiVideosIdPatchRequestCopyWith on ApiVideosIdPatchRequest {
  /// Returns a callable class that can be used as follows: `instanceOfApiVideosIdPatchRequest.copyWith(...)` or like so:`instanceOfApiVideosIdPatchRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiVideosIdPatchRequestCWProxy get copyWith =>
      _$ApiVideosIdPatchRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiVideosIdPatchRequest _$ApiVideosIdPatchRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiVideosIdPatchRequest', json, ($checkedConvert) {
  final val = ApiVideosIdPatchRequest(
    title: $checkedConvert('title', (v) => v as String?),
    url: $checkedConvert('url', (v) => v as String?),
    intro: $checkedConvert('intro', (v) => v as String?),
    coverUrl: $checkedConvert('coverUrl', (v) => v as String?),
    duration: $checkedConvert('duration', (v) => (v as num?)?.toInt()),
    gradeRange: $checkedConvert('gradeRange', (v) => v as String?),
    subjectTag: $checkedConvert('subjectTag', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$ApiVideosIdPatchRequestToJson(
  ApiVideosIdPatchRequest instance,
) => <String, dynamic>{
  'title': ?instance.title,
  'url': ?instance.url,
  'intro': ?instance.intro,
  'coverUrl': ?instance.coverUrl,
  'duration': ?instance.duration,
  'gradeRange': ?instance.gradeRange,
  'subjectTag': ?instance.subjectTag,
};
