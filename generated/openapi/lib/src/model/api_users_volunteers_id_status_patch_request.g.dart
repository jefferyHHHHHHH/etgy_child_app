// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_users_volunteers_id_status_patch_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiUsersVolunteersIdStatusPatchRequestCWProxy {
  ApiUsersVolunteersIdStatusPatchRequest status(
    ApiUsersVolunteersIdStatusPatchRequestStatusEnum status,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiUsersVolunteersIdStatusPatchRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiUsersVolunteersIdStatusPatchRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiUsersVolunteersIdStatusPatchRequest call({
    ApiUsersVolunteersIdStatusPatchRequestStatusEnum status,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiUsersVolunteersIdStatusPatchRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiUsersVolunteersIdStatusPatchRequest.copyWith.fieldName(...)`
class _$ApiUsersVolunteersIdStatusPatchRequestCWProxyImpl
    implements _$ApiUsersVolunteersIdStatusPatchRequestCWProxy {
  const _$ApiUsersVolunteersIdStatusPatchRequestCWProxyImpl(this._value);

  final ApiUsersVolunteersIdStatusPatchRequest _value;

  @override
  ApiUsersVolunteersIdStatusPatchRequest status(
    ApiUsersVolunteersIdStatusPatchRequestStatusEnum status,
  ) => this(status: status);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiUsersVolunteersIdStatusPatchRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiUsersVolunteersIdStatusPatchRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiUsersVolunteersIdStatusPatchRequest call({
    Object? status = const $CopyWithPlaceholder(),
  }) {
    return ApiUsersVolunteersIdStatusPatchRequest(
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as ApiUsersVolunteersIdStatusPatchRequestStatusEnum,
    );
  }
}

extension $ApiUsersVolunteersIdStatusPatchRequestCopyWith
    on ApiUsersVolunteersIdStatusPatchRequest {
  /// Returns a callable class that can be used as follows: `instanceOfApiUsersVolunteersIdStatusPatchRequest.copyWith(...)` or like so:`instanceOfApiUsersVolunteersIdStatusPatchRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiUsersVolunteersIdStatusPatchRequestCWProxy get copyWith =>
      _$ApiUsersVolunteersIdStatusPatchRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiUsersVolunteersIdStatusPatchRequest
_$ApiUsersVolunteersIdStatusPatchRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ApiUsersVolunteersIdStatusPatchRequest', json, (
      $checkedConvert,
    ) {
      $checkKeys(json, requiredKeys: const ['status']);
      final val = ApiUsersVolunteersIdStatusPatchRequest(
        status: $checkedConvert(
          'status',
          (v) => $enumDecode(
            _$ApiUsersVolunteersIdStatusPatchRequestStatusEnumEnumMap,
            v,
          ),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ApiUsersVolunteersIdStatusPatchRequestToJson(
  ApiUsersVolunteersIdStatusPatchRequest instance,
) => <String, dynamic>{
  'status':
      _$ApiUsersVolunteersIdStatusPatchRequestStatusEnumEnumMap[instance
          .status]!,
};

const _$ApiUsersVolunteersIdStatusPatchRequestStatusEnumEnumMap = {
  ApiUsersVolunteersIdStatusPatchRequestStatusEnum.IN_SCHOOL: 'IN_SCHOOL',
  ApiUsersVolunteersIdStatusPatchRequestStatusEnum.GRADUATED: 'GRADUATED',
  ApiUsersVolunteersIdStatusPatchRequestStatusEnum.SUSPENDED: 'SUSPENDED',
};
