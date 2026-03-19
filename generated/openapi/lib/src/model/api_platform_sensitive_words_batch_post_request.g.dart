// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_platform_sensitive_words_batch_post_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiPlatformSensitiveWordsBatchPostRequestCWProxy {
  ApiPlatformSensitiveWordsBatchPostRequest words(List<String> words);

  ApiPlatformSensitiveWordsBatchPostRequest overwrite(bool? overwrite);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiPlatformSensitiveWordsBatchPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiPlatformSensitiveWordsBatchPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiPlatformSensitiveWordsBatchPostRequest call({
    List<String> words,
    bool? overwrite,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiPlatformSensitiveWordsBatchPostRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiPlatformSensitiveWordsBatchPostRequest.copyWith.fieldName(...)`
class _$ApiPlatformSensitiveWordsBatchPostRequestCWProxyImpl
    implements _$ApiPlatformSensitiveWordsBatchPostRequestCWProxy {
  const _$ApiPlatformSensitiveWordsBatchPostRequestCWProxyImpl(this._value);

  final ApiPlatformSensitiveWordsBatchPostRequest _value;

  @override
  ApiPlatformSensitiveWordsBatchPostRequest words(List<String> words) =>
      this(words: words);

  @override
  ApiPlatformSensitiveWordsBatchPostRequest overwrite(bool? overwrite) =>
      this(overwrite: overwrite);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiPlatformSensitiveWordsBatchPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiPlatformSensitiveWordsBatchPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiPlatformSensitiveWordsBatchPostRequest call({
    Object? words = const $CopyWithPlaceholder(),
    Object? overwrite = const $CopyWithPlaceholder(),
  }) {
    return ApiPlatformSensitiveWordsBatchPostRequest(
      words: words == const $CopyWithPlaceholder()
          ? _value.words
          // ignore: cast_nullable_to_non_nullable
          : words as List<String>,
      overwrite: overwrite == const $CopyWithPlaceholder()
          ? _value.overwrite
          // ignore: cast_nullable_to_non_nullable
          : overwrite as bool?,
    );
  }
}

extension $ApiPlatformSensitiveWordsBatchPostRequestCopyWith
    on ApiPlatformSensitiveWordsBatchPostRequest {
  /// Returns a callable class that can be used as follows: `instanceOfApiPlatformSensitiveWordsBatchPostRequest.copyWith(...)` or like so:`instanceOfApiPlatformSensitiveWordsBatchPostRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiPlatformSensitiveWordsBatchPostRequestCWProxy get copyWith =>
      _$ApiPlatformSensitiveWordsBatchPostRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiPlatformSensitiveWordsBatchPostRequest
_$ApiPlatformSensitiveWordsBatchPostRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiPlatformSensitiveWordsBatchPostRequest', json, (
  $checkedConvert,
) {
  $checkKeys(json, requiredKeys: const ['words']);
  final val = ApiPlatformSensitiveWordsBatchPostRequest(
    words: $checkedConvert(
      'words',
      (v) => (v as List<dynamic>).map((e) => e as String).toList(),
    ),
    overwrite: $checkedConvert('overwrite', (v) => v as bool?),
  );
  return val;
});

Map<String, dynamic> _$ApiPlatformSensitiveWordsBatchPostRequestToJson(
  ApiPlatformSensitiveWordsBatchPostRequest instance,
) => <String, dynamic>{
  'words': instance.words,
  'overwrite': ?instance.overwrite,
};
