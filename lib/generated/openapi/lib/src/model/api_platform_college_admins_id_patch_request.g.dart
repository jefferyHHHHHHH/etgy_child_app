// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_platform_college_admins_id_patch_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiPlatformCollegeAdminsIdPatchRequestCWProxy {
  ApiPlatformCollegeAdminsIdPatchRequest realName(String? realName);

  ApiPlatformCollegeAdminsIdPatchRequest collegeId(int? collegeId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiPlatformCollegeAdminsIdPatchRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiPlatformCollegeAdminsIdPatchRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiPlatformCollegeAdminsIdPatchRequest call({
    String? realName,
    int? collegeId,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiPlatformCollegeAdminsIdPatchRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiPlatformCollegeAdminsIdPatchRequest.copyWith.fieldName(...)`
class _$ApiPlatformCollegeAdminsIdPatchRequestCWProxyImpl
    implements _$ApiPlatformCollegeAdminsIdPatchRequestCWProxy {
  const _$ApiPlatformCollegeAdminsIdPatchRequestCWProxyImpl(this._value);

  final ApiPlatformCollegeAdminsIdPatchRequest _value;

  @override
  ApiPlatformCollegeAdminsIdPatchRequest realName(String? realName) =>
      this(realName: realName);

  @override
  ApiPlatformCollegeAdminsIdPatchRequest collegeId(int? collegeId) =>
      this(collegeId: collegeId);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiPlatformCollegeAdminsIdPatchRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiPlatformCollegeAdminsIdPatchRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiPlatformCollegeAdminsIdPatchRequest call({
    Object? realName = const $CopyWithPlaceholder(),
    Object? collegeId = const $CopyWithPlaceholder(),
  }) {
    return ApiPlatformCollegeAdminsIdPatchRequest(
      realName: realName == const $CopyWithPlaceholder()
          ? _value.realName
          // ignore: cast_nullable_to_non_nullable
          : realName as String?,
      collegeId: collegeId == const $CopyWithPlaceholder()
          ? _value.collegeId
          // ignore: cast_nullable_to_non_nullable
          : collegeId as int?,
    );
  }
}

extension $ApiPlatformCollegeAdminsIdPatchRequestCopyWith
    on ApiPlatformCollegeAdminsIdPatchRequest {
  /// Returns a callable class that can be used as follows: `instanceOfApiPlatformCollegeAdminsIdPatchRequest.copyWith(...)` or like so:`instanceOfApiPlatformCollegeAdminsIdPatchRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiPlatformCollegeAdminsIdPatchRequestCWProxy get copyWith =>
      _$ApiPlatformCollegeAdminsIdPatchRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiPlatformCollegeAdminsIdPatchRequest
_$ApiPlatformCollegeAdminsIdPatchRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ApiPlatformCollegeAdminsIdPatchRequest', json, (
      $checkedConvert,
    ) {
      final val = ApiPlatformCollegeAdminsIdPatchRequest(
        realName: $checkedConvert('realName', (v) => v as String?),
        collegeId: $checkedConvert('collegeId', (v) => (v as num?)?.toInt()),
      );
      return val;
    });

Map<String, dynamic> _$ApiPlatformCollegeAdminsIdPatchRequestToJson(
  ApiPlatformCollegeAdminsIdPatchRequest instance,
) => <String, dynamic>{
  'realName': ?instance.realName,
  'collegeId': ?instance.collegeId,
};
