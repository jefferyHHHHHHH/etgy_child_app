// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_live_post_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiLivePostRequestCWProxy {
  ApiLivePostRequest title(String title);

  ApiLivePostRequest intro(String? intro);

  ApiLivePostRequest planStartTime(String planStartTime);

  ApiLivePostRequest planEndTime(String planEndTime);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiLivePostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiLivePostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiLivePostRequest call({
    String title,
    String? intro,
    String planStartTime,
    String planEndTime,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiLivePostRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiLivePostRequest.copyWith.fieldName(...)`
class _$ApiLivePostRequestCWProxyImpl implements _$ApiLivePostRequestCWProxy {
  const _$ApiLivePostRequestCWProxyImpl(this._value);

  final ApiLivePostRequest _value;

  @override
  ApiLivePostRequest title(String title) => this(title: title);

  @override
  ApiLivePostRequest intro(String? intro) => this(intro: intro);

  @override
  ApiLivePostRequest planStartTime(String planStartTime) =>
      this(planStartTime: planStartTime);

  @override
  ApiLivePostRequest planEndTime(String planEndTime) =>
      this(planEndTime: planEndTime);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiLivePostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiLivePostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiLivePostRequest call({
    Object? title = const $CopyWithPlaceholder(),
    Object? intro = const $CopyWithPlaceholder(),
    Object? planStartTime = const $CopyWithPlaceholder(),
    Object? planEndTime = const $CopyWithPlaceholder(),
  }) {
    return ApiLivePostRequest(
      title: title == const $CopyWithPlaceholder()
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String,
      intro: intro == const $CopyWithPlaceholder()
          ? _value.intro
          // ignore: cast_nullable_to_non_nullable
          : intro as String?,
      planStartTime: planStartTime == const $CopyWithPlaceholder()
          ? _value.planStartTime
          // ignore: cast_nullable_to_non_nullable
          : planStartTime as String,
      planEndTime: planEndTime == const $CopyWithPlaceholder()
          ? _value.planEndTime
          // ignore: cast_nullable_to_non_nullable
          : planEndTime as String,
    );
  }
}

extension $ApiLivePostRequestCopyWith on ApiLivePostRequest {
  /// Returns a callable class that can be used as follows: `instanceOfApiLivePostRequest.copyWith(...)` or like so:`instanceOfApiLivePostRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiLivePostRequestCWProxy get copyWith =>
      _$ApiLivePostRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiLivePostRequest _$ApiLivePostRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ApiLivePostRequest', json, ($checkedConvert) {
      $checkKeys(
        json,
        requiredKeys: const ['title', 'planStartTime', 'planEndTime'],
      );
      final val = ApiLivePostRequest(
        title: $checkedConvert('title', (v) => v as String),
        intro: $checkedConvert('intro', (v) => v as String?),
        planStartTime: $checkedConvert('planStartTime', (v) => v as String),
        planEndTime: $checkedConvert('planEndTime', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$ApiLivePostRequestToJson(ApiLivePostRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'intro': ?instance.intro,
      'planStartTime': instance.planStartTime,
      'planEndTime': instance.planEndTime,
    };
