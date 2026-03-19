// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_users_children_batch_post_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiUsersChildrenBatchPostRequestCWProxy {
  ApiUsersChildrenBatchPostRequest items(
    List<ApiUsersChildrenPostRequest> items,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiUsersChildrenBatchPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiUsersChildrenBatchPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiUsersChildrenBatchPostRequest call({
    List<ApiUsersChildrenPostRequest> items,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiUsersChildrenBatchPostRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiUsersChildrenBatchPostRequest.copyWith.fieldName(...)`
class _$ApiUsersChildrenBatchPostRequestCWProxyImpl
    implements _$ApiUsersChildrenBatchPostRequestCWProxy {
  const _$ApiUsersChildrenBatchPostRequestCWProxyImpl(this._value);

  final ApiUsersChildrenBatchPostRequest _value;

  @override
  ApiUsersChildrenBatchPostRequest items(
    List<ApiUsersChildrenPostRequest> items,
  ) => this(items: items);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiUsersChildrenBatchPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiUsersChildrenBatchPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiUsersChildrenBatchPostRequest call({
    Object? items = const $CopyWithPlaceholder(),
  }) {
    return ApiUsersChildrenBatchPostRequest(
      items: items == const $CopyWithPlaceholder()
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<ApiUsersChildrenPostRequest>,
    );
  }
}

extension $ApiUsersChildrenBatchPostRequestCopyWith
    on ApiUsersChildrenBatchPostRequest {
  /// Returns a callable class that can be used as follows: `instanceOfApiUsersChildrenBatchPostRequest.copyWith(...)` or like so:`instanceOfApiUsersChildrenBatchPostRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiUsersChildrenBatchPostRequestCWProxy get copyWith =>
      _$ApiUsersChildrenBatchPostRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiUsersChildrenBatchPostRequest _$ApiUsersChildrenBatchPostRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiUsersChildrenBatchPostRequest', json, (
  $checkedConvert,
) {
  $checkKeys(json, requiredKeys: const ['items']);
  final val = ApiUsersChildrenBatchPostRequest(
    items: $checkedConvert(
      'items',
      (v) => (v as List<dynamic>)
          .map(
            (e) =>
                ApiUsersChildrenPostRequest.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$ApiUsersChildrenBatchPostRequestToJson(
  ApiUsersChildrenBatchPostRequest instance,
) => <String, dynamic>{'items': instance.items.map((e) => e.toJson()).toList()};
