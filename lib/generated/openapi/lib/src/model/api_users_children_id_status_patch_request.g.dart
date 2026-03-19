// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_users_children_id_status_patch_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiUsersChildrenIdStatusPatchRequestCWProxy {
  ApiUsersChildrenIdStatusPatchRequest status(
    ApiUsersChildrenIdStatusPatchRequestStatusEnum status,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiUsersChildrenIdStatusPatchRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiUsersChildrenIdStatusPatchRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiUsersChildrenIdStatusPatchRequest call({
    ApiUsersChildrenIdStatusPatchRequestStatusEnum status,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiUsersChildrenIdStatusPatchRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiUsersChildrenIdStatusPatchRequest.copyWith.fieldName(...)`
class _$ApiUsersChildrenIdStatusPatchRequestCWProxyImpl
    implements _$ApiUsersChildrenIdStatusPatchRequestCWProxy {
  const _$ApiUsersChildrenIdStatusPatchRequestCWProxyImpl(this._value);

  final ApiUsersChildrenIdStatusPatchRequest _value;

  @override
  ApiUsersChildrenIdStatusPatchRequest status(
    ApiUsersChildrenIdStatusPatchRequestStatusEnum status,
  ) => this(status: status);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiUsersChildrenIdStatusPatchRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiUsersChildrenIdStatusPatchRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiUsersChildrenIdStatusPatchRequest call({
    Object? status = const $CopyWithPlaceholder(),
  }) {
    return ApiUsersChildrenIdStatusPatchRequest(
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as ApiUsersChildrenIdStatusPatchRequestStatusEnum,
    );
  }
}

extension $ApiUsersChildrenIdStatusPatchRequestCopyWith
    on ApiUsersChildrenIdStatusPatchRequest {
  /// Returns a callable class that can be used as follows: `instanceOfApiUsersChildrenIdStatusPatchRequest.copyWith(...)` or like so:`instanceOfApiUsersChildrenIdStatusPatchRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiUsersChildrenIdStatusPatchRequestCWProxy get copyWith =>
      _$ApiUsersChildrenIdStatusPatchRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiUsersChildrenIdStatusPatchRequest
_$ApiUsersChildrenIdStatusPatchRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ApiUsersChildrenIdStatusPatchRequest', json, (
      $checkedConvert,
    ) {
      $checkKeys(json, requiredKeys: const ['status']);
      final val = ApiUsersChildrenIdStatusPatchRequest(
        status: $checkedConvert(
          'status',
          (v) => $enumDecode(
            _$ApiUsersChildrenIdStatusPatchRequestStatusEnumEnumMap,
            v,
          ),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ApiUsersChildrenIdStatusPatchRequestToJson(
  ApiUsersChildrenIdStatusPatchRequest instance,
) => <String, dynamic>{
  'status':
      _$ApiUsersChildrenIdStatusPatchRequestStatusEnumEnumMap[instance.status]!,
};

const _$ApiUsersChildrenIdStatusPatchRequestStatusEnumEnumMap = {
  ApiUsersChildrenIdStatusPatchRequestStatusEnum.ACTIVE: 'ACTIVE',
  ApiUsersChildrenIdStatusPatchRequestStatusEnum.INACTIVE: 'INACTIVE',
  ApiUsersChildrenIdStatusPatchRequestStatusEnum.SUSPENDED: 'SUSPENDED',
};
