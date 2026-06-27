// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_videos_admin_get200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiVideosAdminGet200ResponseCWProxy {
  ApiVideosAdminGet200Response code(int code);

  ApiVideosAdminGet200Response message(String message);

  ApiVideosAdminGet200Response data(AdminVideoPagedResult data);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiVideosAdminGet200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiVideosAdminGet200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiVideosAdminGet200Response call({
    int code,
    String message,
    AdminVideoPagedResult data,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiVideosAdminGet200Response.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiVideosAdminGet200Response.copyWith.fieldName(...)`
class _$ApiVideosAdminGet200ResponseCWProxyImpl
    implements _$ApiVideosAdminGet200ResponseCWProxy {
  const _$ApiVideosAdminGet200ResponseCWProxyImpl(this._value);

  final ApiVideosAdminGet200Response _value;

  @override
  ApiVideosAdminGet200Response code(int code) => this(code: code);

  @override
  ApiVideosAdminGet200Response message(String message) =>
      this(message: message);

  @override
  ApiVideosAdminGet200Response data(AdminVideoPagedResult data) =>
      this(data: data);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiVideosAdminGet200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiVideosAdminGet200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiVideosAdminGet200Response call({
    Object? code = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return ApiVideosAdminGet200Response(
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
          : data as AdminVideoPagedResult,
    );
  }
}

extension $ApiVideosAdminGet200ResponseCopyWith
    on ApiVideosAdminGet200Response {
  /// Returns a callable class that can be used as follows: `instanceOfApiVideosAdminGet200Response.copyWith(...)` or like so:`instanceOfApiVideosAdminGet200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiVideosAdminGet200ResponseCWProxy get copyWith =>
      _$ApiVideosAdminGet200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiVideosAdminGet200Response _$ApiVideosAdminGet200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiVideosAdminGet200Response', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['code', 'message', 'data']);
  final val = ApiVideosAdminGet200Response(
    code: $checkedConvert('code', (v) => (v as num).toInt()),
    message: $checkedConvert('message', (v) => v as String),
    data: $checkedConvert(
      'data',
      (v) => AdminVideoPagedResult.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$ApiVideosAdminGet200ResponseToJson(
  ApiVideosAdminGet200Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.toJson(),
};
