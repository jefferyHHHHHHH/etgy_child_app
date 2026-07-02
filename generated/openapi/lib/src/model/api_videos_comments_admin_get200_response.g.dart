// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_videos_comments_admin_get200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiVideosCommentsAdminGet200ResponseCWProxy {
  ApiVideosCommentsAdminGet200Response code(int code);

  ApiVideosCommentsAdminGet200Response message(String message);

  ApiVideosCommentsAdminGet200Response data(AdminVideoCommentPagedResult data);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiVideosCommentsAdminGet200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiVideosCommentsAdminGet200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiVideosCommentsAdminGet200Response call({
    int code,
    String message,
    AdminVideoCommentPagedResult data,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiVideosCommentsAdminGet200Response.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiVideosCommentsAdminGet200Response.copyWith.fieldName(...)`
class _$ApiVideosCommentsAdminGet200ResponseCWProxyImpl
    implements _$ApiVideosCommentsAdminGet200ResponseCWProxy {
  const _$ApiVideosCommentsAdminGet200ResponseCWProxyImpl(this._value);

  final ApiVideosCommentsAdminGet200Response _value;

  @override
  ApiVideosCommentsAdminGet200Response code(int code) => this(code: code);

  @override
  ApiVideosCommentsAdminGet200Response message(String message) =>
      this(message: message);

  @override
  ApiVideosCommentsAdminGet200Response data(
    AdminVideoCommentPagedResult data,
  ) => this(data: data);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiVideosCommentsAdminGet200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiVideosCommentsAdminGet200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiVideosCommentsAdminGet200Response call({
    Object? code = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return ApiVideosCommentsAdminGet200Response(
      code: code == const $CopyWithPlaceholder()
          ? _value.code
          // ignore: cast_nullable_to_non_nullable
          : code as int,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String,
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as AdminVideoCommentPagedResult,
    );
  }
}

extension $ApiVideosCommentsAdminGet200ResponseCopyWith
    on ApiVideosCommentsAdminGet200Response {
  /// Returns a callable class that can be used as follows: `instanceOfApiVideosCommentsAdminGet200Response.copyWith(...)` or like so:`instanceOfApiVideosCommentsAdminGet200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiVideosCommentsAdminGet200ResponseCWProxy get copyWith =>
      _$ApiVideosCommentsAdminGet200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiVideosCommentsAdminGet200Response
_$ApiVideosCommentsAdminGet200ResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ApiVideosCommentsAdminGet200Response', json, (
      $checkedConvert,
    ) {
      $checkKeys(json, requiredKeys: const ['code', 'message', 'data']);
      final val = ApiVideosCommentsAdminGet200Response(
        code: $checkedConvert('code', (v) => (v as num).toInt()),
        message: $checkedConvert('message', (v) => v as String),
        data: $checkedConvert(
          'data',
          (v) =>
              AdminVideoCommentPagedResult.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ApiVideosCommentsAdminGet200ResponseToJson(
  ApiVideosCommentsAdminGet200Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.toJson(),
};
