// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_users_volunteers_id_password_post_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiUsersVolunteersIdPasswordPostRequestCWProxy {
  ApiUsersVolunteersIdPasswordPostRequest newPassword(String newPassword);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiUsersVolunteersIdPasswordPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiUsersVolunteersIdPasswordPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiUsersVolunteersIdPasswordPostRequest call({String newPassword});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiUsersVolunteersIdPasswordPostRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiUsersVolunteersIdPasswordPostRequest.copyWith.fieldName(...)`
class _$ApiUsersVolunteersIdPasswordPostRequestCWProxyImpl
    implements _$ApiUsersVolunteersIdPasswordPostRequestCWProxy {
  const _$ApiUsersVolunteersIdPasswordPostRequestCWProxyImpl(this._value);

  final ApiUsersVolunteersIdPasswordPostRequest _value;

  @override
  ApiUsersVolunteersIdPasswordPostRequest newPassword(String newPassword) =>
      this(newPassword: newPassword);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiUsersVolunteersIdPasswordPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiUsersVolunteersIdPasswordPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiUsersVolunteersIdPasswordPostRequest call({
    Object? newPassword = const $CopyWithPlaceholder(),
  }) {
    return ApiUsersVolunteersIdPasswordPostRequest(
      newPassword: newPassword == const $CopyWithPlaceholder()
          ? _value.newPassword
          // ignore: cast_nullable_to_non_nullable
          : newPassword as String,
    );
  }
}

extension $ApiUsersVolunteersIdPasswordPostRequestCopyWith
    on ApiUsersVolunteersIdPasswordPostRequest {
  /// Returns a callable class that can be used as follows: `instanceOfApiUsersVolunteersIdPasswordPostRequest.copyWith(...)` or like so:`instanceOfApiUsersVolunteersIdPasswordPostRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiUsersVolunteersIdPasswordPostRequestCWProxy get copyWith =>
      _$ApiUsersVolunteersIdPasswordPostRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiUsersVolunteersIdPasswordPostRequest
_$ApiUsersVolunteersIdPasswordPostRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ApiUsersVolunteersIdPasswordPostRequest', json, (
      $checkedConvert,
    ) {
      $checkKeys(json, requiredKeys: const ['newPassword']);
      final val = ApiUsersVolunteersIdPasswordPostRequest(
        newPassword: $checkedConvert('newPassword', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$ApiUsersVolunteersIdPasswordPostRequestToJson(
  ApiUsersVolunteersIdPasswordPostRequest instance,
) => <String, dynamic>{'newPassword': instance.newPassword};
