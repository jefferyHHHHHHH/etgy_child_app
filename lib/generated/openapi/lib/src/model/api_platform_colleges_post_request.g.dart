// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_platform_colleges_post_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiPlatformCollegesPostRequestCWProxy {
  ApiPlatformCollegesPostRequest name(String name);

  ApiPlatformCollegesPostRequest isActive(bool? isActive);

  ApiPlatformCollegesPostRequest sortOrder(int? sortOrder);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiPlatformCollegesPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiPlatformCollegesPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiPlatformCollegesPostRequest call({
    String name,
    bool? isActive,
    int? sortOrder,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiPlatformCollegesPostRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiPlatformCollegesPostRequest.copyWith.fieldName(...)`
class _$ApiPlatformCollegesPostRequestCWProxyImpl
    implements _$ApiPlatformCollegesPostRequestCWProxy {
  const _$ApiPlatformCollegesPostRequestCWProxyImpl(this._value);

  final ApiPlatformCollegesPostRequest _value;

  @override
  ApiPlatformCollegesPostRequest name(String name) => this(name: name);

  @override
  ApiPlatformCollegesPostRequest isActive(bool? isActive) =>
      this(isActive: isActive);

  @override
  ApiPlatformCollegesPostRequest sortOrder(int? sortOrder) =>
      this(sortOrder: sortOrder);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiPlatformCollegesPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiPlatformCollegesPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiPlatformCollegesPostRequest call({
    Object? name = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? sortOrder = const $CopyWithPlaceholder(),
  }) {
    return ApiPlatformCollegesPostRequest(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
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

extension $ApiPlatformCollegesPostRequestCopyWith
    on ApiPlatformCollegesPostRequest {
  /// Returns a callable class that can be used as follows: `instanceOfApiPlatformCollegesPostRequest.copyWith(...)` or like so:`instanceOfApiPlatformCollegesPostRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiPlatformCollegesPostRequestCWProxy get copyWith =>
      _$ApiPlatformCollegesPostRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiPlatformCollegesPostRequest _$ApiPlatformCollegesPostRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiPlatformCollegesPostRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['name']);
  final val = ApiPlatformCollegesPostRequest(
    name: $checkedConvert('name', (v) => v as String),
    isActive: $checkedConvert('isActive', (v) => v as bool?),
    sortOrder: $checkedConvert('sortOrder', (v) => (v as num?)?.toInt()),
  );
  return val;
});

Map<String, dynamic> _$ApiPlatformCollegesPostRequestToJson(
  ApiPlatformCollegesPostRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'isActive': ?instance.isActive,
  'sortOrder': ?instance.sortOrder,
};
