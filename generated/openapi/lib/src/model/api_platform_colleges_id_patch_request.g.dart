// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_platform_colleges_id_patch_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiPlatformCollegesIdPatchRequestCWProxy {
  ApiPlatformCollegesIdPatchRequest name(String? name);

  ApiPlatformCollegesIdPatchRequest isActive(bool? isActive);

  ApiPlatformCollegesIdPatchRequest sortOrder(int? sortOrder);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiPlatformCollegesIdPatchRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiPlatformCollegesIdPatchRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiPlatformCollegesIdPatchRequest call({
    String? name,
    bool? isActive,
    int? sortOrder,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiPlatformCollegesIdPatchRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiPlatformCollegesIdPatchRequest.copyWith.fieldName(...)`
class _$ApiPlatformCollegesIdPatchRequestCWProxyImpl
    implements _$ApiPlatformCollegesIdPatchRequestCWProxy {
  const _$ApiPlatformCollegesIdPatchRequestCWProxyImpl(this._value);

  final ApiPlatformCollegesIdPatchRequest _value;

  @override
  ApiPlatformCollegesIdPatchRequest name(String? name) => this(name: name);

  @override
  ApiPlatformCollegesIdPatchRequest isActive(bool? isActive) =>
      this(isActive: isActive);

  @override
  ApiPlatformCollegesIdPatchRequest sortOrder(int? sortOrder) =>
      this(sortOrder: sortOrder);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiPlatformCollegesIdPatchRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiPlatformCollegesIdPatchRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiPlatformCollegesIdPatchRequest call({
    Object? name = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? sortOrder = const $CopyWithPlaceholder(),
  }) {
    return ApiPlatformCollegesIdPatchRequest(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      isActive: isActive == const $CopyWithPlaceholder()
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool?,
      sortOrder: sortOrder == const $CopyWithPlaceholder()
          ? _value.sortOrder
          // ignore: cast_nullable_to_non_nullable
          : sortOrder as int?,
    );
  }
}

extension $ApiPlatformCollegesIdPatchRequestCopyWith
    on ApiPlatformCollegesIdPatchRequest {
  /// Returns a callable class that can be used as follows: `instanceOfApiPlatformCollegesIdPatchRequest.copyWith(...)` or like so:`instanceOfApiPlatformCollegesIdPatchRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiPlatformCollegesIdPatchRequestCWProxy get copyWith =>
      _$ApiPlatformCollegesIdPatchRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiPlatformCollegesIdPatchRequest _$ApiPlatformCollegesIdPatchRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiPlatformCollegesIdPatchRequest', json, (
  $checkedConvert,
) {
  final val = ApiPlatformCollegesIdPatchRequest(
    name: $checkedConvert('name', (v) => v as String?),
    isActive: $checkedConvert('isActive', (v) => v as bool?),
    sortOrder: $checkedConvert('sortOrder', (v) => (v as num?)?.toInt()),
  );
  return val;
});

Map<String, dynamic> _$ApiPlatformCollegesIdPatchRequestToJson(
  ApiPlatformCollegesIdPatchRequest instance,
) => <String, dynamic>{
  'name': ?instance.name,
  'isActive': ?instance.isActive,
  'sortOrder': ?instance.sortOrder,
};
