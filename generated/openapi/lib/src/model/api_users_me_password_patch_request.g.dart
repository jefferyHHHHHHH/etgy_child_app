// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_users_me_password_patch_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiUsersMePasswordPatchRequestCWProxy {
  ApiUsersMePasswordPatchRequest oldPassword(String oldPassword);

  ApiUsersMePasswordPatchRequest newPassword(String newPassword);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiUsersMePasswordPatchRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiUsersMePasswordPatchRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiUsersMePasswordPatchRequest call({String oldPassword, String newPassword});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiUsersMePasswordPatchRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiUsersMePasswordPatchRequest.copyWith.fieldName(...)`
class _$ApiUsersMePasswordPatchRequestCWProxyImpl
    implements _$ApiUsersMePasswordPatchRequestCWProxy {
  const _$ApiUsersMePasswordPatchRequestCWProxyImpl(this._value);

  final ApiUsersMePasswordPatchRequest _value;

  @override
  ApiUsersMePasswordPatchRequest oldPassword(String oldPassword) =>
      this(oldPassword: oldPassword);

  @override
  ApiUsersMePasswordPatchRequest newPassword(String newPassword) =>
      this(newPassword: newPassword);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiUsersMePasswordPatchRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiUsersMePasswordPatchRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiUsersMePasswordPatchRequest call({
    Object? oldPassword = const $CopyWithPlaceholder(),
    Object? newPassword = const $CopyWithPlaceholder(),
  }) {
    return ApiUsersMePasswordPatchRequest(
      oldPassword: oldPassword == const $CopyWithPlaceholder()
          ? _value.oldPassword
          // ignore: cast_nullable_to_non_nullable
          : oldPassword as String,
      newPassword: newPassword == const $CopyWithPlaceholder()
          ? _value.newPassword
          // ignore: cast_nullable_to_non_nullable
          : newPassword as String,
    );
  }
}

extension $ApiUsersMePasswordPatchRequestCopyWith
    on ApiUsersMePasswordPatchRequest {
  /// Returns a callable class that can be used as follows: `instanceOfApiUsersMePasswordPatchRequest.copyWith(...)` or like so:`instanceOfApiUsersMePasswordPatchRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiUsersMePasswordPatchRequestCWProxy get copyWith =>
      _$ApiUsersMePasswordPatchRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiUsersMePasswordPatchRequest _$ApiUsersMePasswordPatchRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiUsersMePasswordPatchRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['oldPassword', 'newPassword']);
  final val = ApiUsersMePasswordPatchRequest(
    oldPassword: $checkedConvert('oldPassword', (v) => v as String),
    newPassword: $checkedConvert('newPassword', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$ApiUsersMePasswordPatchRequestToJson(
  ApiUsersMePasswordPatchRequest instance,
) => <String, dynamic>{
  'oldPassword': instance.oldPassword,
  'newPassword': instance.newPassword,
};
