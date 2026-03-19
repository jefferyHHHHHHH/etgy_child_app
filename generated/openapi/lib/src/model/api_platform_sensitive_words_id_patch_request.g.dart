// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_platform_sensitive_words_id_patch_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiPlatformSensitiveWordsIdPatchRequestCWProxy {
  ApiPlatformSensitiveWordsIdPatchRequest isActive(bool? isActive);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiPlatformSensitiveWordsIdPatchRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiPlatformSensitiveWordsIdPatchRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiPlatformSensitiveWordsIdPatchRequest call({bool? isActive});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiPlatformSensitiveWordsIdPatchRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiPlatformSensitiveWordsIdPatchRequest.copyWith.fieldName(...)`
class _$ApiPlatformSensitiveWordsIdPatchRequestCWProxyImpl
    implements _$ApiPlatformSensitiveWordsIdPatchRequestCWProxy {
  const _$ApiPlatformSensitiveWordsIdPatchRequestCWProxyImpl(this._value);

  final ApiPlatformSensitiveWordsIdPatchRequest _value;

  @override
  ApiPlatformSensitiveWordsIdPatchRequest isActive(bool? isActive) =>
      this(isActive: isActive);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiPlatformSensitiveWordsIdPatchRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiPlatformSensitiveWordsIdPatchRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiPlatformSensitiveWordsIdPatchRequest call({
    Object? isActive = const $CopyWithPlaceholder(),
  }) {
    return ApiPlatformSensitiveWordsIdPatchRequest(
      isActive: isActive == const $CopyWithPlaceholder()
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool?,
    );
  }
}

extension $ApiPlatformSensitiveWordsIdPatchRequestCopyWith
    on ApiPlatformSensitiveWordsIdPatchRequest {
  /// Returns a callable class that can be used as follows: `instanceOfApiPlatformSensitiveWordsIdPatchRequest.copyWith(...)` or like so:`instanceOfApiPlatformSensitiveWordsIdPatchRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiPlatformSensitiveWordsIdPatchRequestCWProxy get copyWith =>
      _$ApiPlatformSensitiveWordsIdPatchRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiPlatformSensitiveWordsIdPatchRequest
_$ApiPlatformSensitiveWordsIdPatchRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ApiPlatformSensitiveWordsIdPatchRequest', json, (
      $checkedConvert,
    ) {
      final val = ApiPlatformSensitiveWordsIdPatchRequest(
        isActive: $checkedConvert('isActive', (v) => v as bool?),
      );
      return val;
    });

Map<String, dynamic> _$ApiPlatformSensitiveWordsIdPatchRequestToJson(
  ApiPlatformSensitiveWordsIdPatchRequest instance,
) => <String, dynamic>{'isActive': ?instance.isActive};
