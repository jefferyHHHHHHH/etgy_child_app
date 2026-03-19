// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_platform_sensitive_words_post_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiPlatformSensitiveWordsPostRequestCWProxy {
  ApiPlatformSensitiveWordsPostRequest word(String word);

  ApiPlatformSensitiveWordsPostRequest isActive(bool? isActive);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiPlatformSensitiveWordsPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiPlatformSensitiveWordsPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiPlatformSensitiveWordsPostRequest call({String word, bool? isActive});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiPlatformSensitiveWordsPostRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiPlatformSensitiveWordsPostRequest.copyWith.fieldName(...)`
class _$ApiPlatformSensitiveWordsPostRequestCWProxyImpl
    implements _$ApiPlatformSensitiveWordsPostRequestCWProxy {
  const _$ApiPlatformSensitiveWordsPostRequestCWProxyImpl(this._value);

  final ApiPlatformSensitiveWordsPostRequest _value;

  @override
  ApiPlatformSensitiveWordsPostRequest word(String word) => this(word: word);

  @override
  ApiPlatformSensitiveWordsPostRequest isActive(bool? isActive) =>
      this(isActive: isActive);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiPlatformSensitiveWordsPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiPlatformSensitiveWordsPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiPlatformSensitiveWordsPostRequest call({
    Object? word = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
  }) {
    return ApiPlatformSensitiveWordsPostRequest(
      word: word == const $CopyWithPlaceholder()
          ? _value.word
          // ignore: cast_nullable_to_non_nullable
          : word as String,
      isActive: isActive == const $CopyWithPlaceholder()
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool?,
    );
  }
}

extension $ApiPlatformSensitiveWordsPostRequestCopyWith
    on ApiPlatformSensitiveWordsPostRequest {
  /// Returns a callable class that can be used as follows: `instanceOfApiPlatformSensitiveWordsPostRequest.copyWith(...)` or like so:`instanceOfApiPlatformSensitiveWordsPostRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiPlatformSensitiveWordsPostRequestCWProxy get copyWith =>
      _$ApiPlatformSensitiveWordsPostRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiPlatformSensitiveWordsPostRequest
_$ApiPlatformSensitiveWordsPostRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ApiPlatformSensitiveWordsPostRequest', json, (
      $checkedConvert,
    ) {
      $checkKeys(json, requiredKeys: const ['word']);
      final val = ApiPlatformSensitiveWordsPostRequest(
        word: $checkedConvert('word', (v) => v as String),
        isActive: $checkedConvert('isActive', (v) => v as bool?),
      );
      return val;
    });

Map<String, dynamic> _$ApiPlatformSensitiveWordsPostRequestToJson(
  ApiPlatformSensitiveWordsPostRequest instance,
) => <String, dynamic>{'word': instance.word, 'isActive': ?instance.isActive};
