// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_oss_upload_url_post_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiOssUploadUrlPostRequestCWProxy {
  ApiOssUploadUrlPostRequest key(String? key);

  ApiOssUploadUrlPostRequest prefix(String? prefix);

  ApiOssUploadUrlPostRequest filename(String? filename);

  ApiOssUploadUrlPostRequest contentType(String? contentType);

  ApiOssUploadUrlPostRequest expiresInSeconds(int? expiresInSeconds);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiOssUploadUrlPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiOssUploadUrlPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiOssUploadUrlPostRequest call({
    String? key,
    String? prefix,
    String? filename,
    String? contentType,
    int? expiresInSeconds,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiOssUploadUrlPostRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiOssUploadUrlPostRequest.copyWith.fieldName(...)`
class _$ApiOssUploadUrlPostRequestCWProxyImpl
    implements _$ApiOssUploadUrlPostRequestCWProxy {
  const _$ApiOssUploadUrlPostRequestCWProxyImpl(this._value);

  final ApiOssUploadUrlPostRequest _value;

  @override
  ApiOssUploadUrlPostRequest key(String? key) => this(key: key);

  @override
  ApiOssUploadUrlPostRequest prefix(String? prefix) => this(prefix: prefix);

  @override
  ApiOssUploadUrlPostRequest filename(String? filename) =>
      this(filename: filename);

  @override
  ApiOssUploadUrlPostRequest contentType(String? contentType) =>
      this(contentType: contentType);

  @override
  ApiOssUploadUrlPostRequest expiresInSeconds(int? expiresInSeconds) =>
      this(expiresInSeconds: expiresInSeconds);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiOssUploadUrlPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiOssUploadUrlPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiOssUploadUrlPostRequest call({
    Object? key = const $CopyWithPlaceholder(),
    Object? prefix = const $CopyWithPlaceholder(),
    Object? filename = const $CopyWithPlaceholder(),
    Object? contentType = const $CopyWithPlaceholder(),
    Object? expiresInSeconds = const $CopyWithPlaceholder(),
  }) {
    return ApiOssUploadUrlPostRequest(
      key: key == const $CopyWithPlaceholder()
          ? _value.key
          // ignore: cast_nullable_to_non_nullable
          : key as String?,
      prefix: prefix == const $CopyWithPlaceholder()
          ? _value.prefix
          // ignore: cast_nullable_to_non_nullable
          : prefix as String?,
      filename: filename == const $CopyWithPlaceholder()
          ? _value.filename
          // ignore: cast_nullable_to_non_nullable
          : filename as String?,
      contentType: contentType == const $CopyWithPlaceholder()
          ? _value.contentType
          // ignore: cast_nullable_to_non_nullable
          : contentType as String?,
      expiresInSeconds: expiresInSeconds == const $CopyWithPlaceholder()
          ? _value.expiresInSeconds
          // ignore: cast_nullable_to_non_nullable
          : expiresInSeconds as int?,
    );
  }
}

extension $ApiOssUploadUrlPostRequestCopyWith on ApiOssUploadUrlPostRequest {
  /// Returns a callable class that can be used as follows: `instanceOfApiOssUploadUrlPostRequest.copyWith(...)` or like so:`instanceOfApiOssUploadUrlPostRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiOssUploadUrlPostRequestCWProxy get copyWith =>
      _$ApiOssUploadUrlPostRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiOssUploadUrlPostRequest _$ApiOssUploadUrlPostRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiOssUploadUrlPostRequest', json, ($checkedConvert) {
  final val = ApiOssUploadUrlPostRequest(
    key: $checkedConvert('key', (v) => v as String?),
    prefix: $checkedConvert('prefix', (v) => v as String? ?? 'uploads'),
    filename: $checkedConvert('filename', (v) => v as String?),
    contentType: $checkedConvert('contentType', (v) => v as String?),
    expiresInSeconds: $checkedConvert(
      'expiresInSeconds',
      (v) => (v as num?)?.toInt(),
    ),
  );
  return val;
});

Map<String, dynamic> _$ApiOssUploadUrlPostRequestToJson(
  ApiOssUploadUrlPostRequest instance,
) => <String, dynamic>{
  'key': ?instance.key,
  'prefix': ?instance.prefix,
  'filename': ?instance.filename,
  'contentType': ?instance.contentType,
  'expiresInSeconds': ?instance.expiresInSeconds,
};
