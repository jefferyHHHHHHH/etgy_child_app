// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_users_volunteers_id_suspend_patch_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiUsersVolunteersIdSuspendPatchRequestCWProxy {
  ApiUsersVolunteersIdSuspendPatchRequest suspended(bool? suspended);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiUsersVolunteersIdSuspendPatchRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiUsersVolunteersIdSuspendPatchRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiUsersVolunteersIdSuspendPatchRequest call({bool? suspended});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiUsersVolunteersIdSuspendPatchRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiUsersVolunteersIdSuspendPatchRequest.copyWith.fieldName(...)`
class _$ApiUsersVolunteersIdSuspendPatchRequestCWProxyImpl
    implements _$ApiUsersVolunteersIdSuspendPatchRequestCWProxy {
  const _$ApiUsersVolunteersIdSuspendPatchRequestCWProxyImpl(this._value);

  final ApiUsersVolunteersIdSuspendPatchRequest _value;

  @override
  ApiUsersVolunteersIdSuspendPatchRequest suspended(bool? suspended) =>
      this(suspended: suspended);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiUsersVolunteersIdSuspendPatchRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiUsersVolunteersIdSuspendPatchRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiUsersVolunteersIdSuspendPatchRequest call({
    Object? suspended = const $CopyWithPlaceholder(),
  }) {
    return ApiUsersVolunteersIdSuspendPatchRequest(
      suspended: suspended == const $CopyWithPlaceholder()
          ? _value.suspended
          // ignore: cast_nullable_to_non_nullable
          : suspended as bool?,
    );
  }
}

extension $ApiUsersVolunteersIdSuspendPatchRequestCopyWith
    on ApiUsersVolunteersIdSuspendPatchRequest {
  /// Returns a callable class that can be used as follows: `instanceOfApiUsersVolunteersIdSuspendPatchRequest.copyWith(...)` or like so:`instanceOfApiUsersVolunteersIdSuspendPatchRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiUsersVolunteersIdSuspendPatchRequestCWProxy get copyWith =>
      _$ApiUsersVolunteersIdSuspendPatchRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiUsersVolunteersIdSuspendPatchRequest
_$ApiUsersVolunteersIdSuspendPatchRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ApiUsersVolunteersIdSuspendPatchRequest', json, (
      $checkedConvert,
    ) {
      final val = ApiUsersVolunteersIdSuspendPatchRequest(
        suspended: $checkedConvert('suspended', (v) => v as bool?),
      );
      return val;
    });

Map<String, dynamic> _$ApiUsersVolunteersIdSuspendPatchRequestToJson(
  ApiUsersVolunteersIdSuspendPatchRequest instance,
) => <String, dynamic>{'suspended': ?instance.suspended};
