// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_ai_tutor_conversations_get200_response_all_of_data.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiAiTutorConversationsGet200ResponseAllOfDataCWProxy {
  ApiAiTutorConversationsGet200ResponseAllOfData page(int page);

  ApiAiTutorConversationsGet200ResponseAllOfData pageSize(int pageSize);

  ApiAiTutorConversationsGet200ResponseAllOfData total(int total);

  ApiAiTutorConversationsGet200ResponseAllOfData items(
    List<ApiAiTutorConversationsGet200ResponseAllOfDataItemsInner> items,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAiTutorConversationsGet200ResponseAllOfData(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAiTutorConversationsGet200ResponseAllOfData(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAiTutorConversationsGet200ResponseAllOfData call({
    int page,
    int pageSize,
    int total,
    List<ApiAiTutorConversationsGet200ResponseAllOfDataItemsInner> items,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiAiTutorConversationsGet200ResponseAllOfData.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiAiTutorConversationsGet200ResponseAllOfData.copyWith.fieldName(...)`
class _$ApiAiTutorConversationsGet200ResponseAllOfDataCWProxyImpl
    implements _$ApiAiTutorConversationsGet200ResponseAllOfDataCWProxy {
  const _$ApiAiTutorConversationsGet200ResponseAllOfDataCWProxyImpl(
    this._value,
  );

  final ApiAiTutorConversationsGet200ResponseAllOfData _value;

  @override
  ApiAiTutorConversationsGet200ResponseAllOfData page(int page) =>
      this(page: page);

  @override
  ApiAiTutorConversationsGet200ResponseAllOfData pageSize(int pageSize) =>
      this(pageSize: pageSize);

  @override
  ApiAiTutorConversationsGet200ResponseAllOfData total(int total) =>
      this(total: total);

  @override
  ApiAiTutorConversationsGet200ResponseAllOfData items(
    List<ApiAiTutorConversationsGet200ResponseAllOfDataItemsInner> items,
  ) => this(items: items);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAiTutorConversationsGet200ResponseAllOfData(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAiTutorConversationsGet200ResponseAllOfData(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAiTutorConversationsGet200ResponseAllOfData call({
    Object? page = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? total = const $CopyWithPlaceholder(),
    Object? items = const $CopyWithPlaceholder(),
  }) {
    return ApiAiTutorConversationsGet200ResponseAllOfData(
      page: page == const $CopyWithPlaceholder()
          ? _value.page
          // ignore: cast_nullable_to_non_nullable
          : page as int,
      pageSize: pageSize == const $CopyWithPlaceholder()
          ? _value.pageSize
          // ignore: cast_nullable_to_non_nullable
          : pageSize as int,
      total: total == const $CopyWithPlaceholder()
          ? _value.total
          // ignore: cast_nullable_to_non_nullable
          : total as int,
      items: items == const $CopyWithPlaceholder()
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items
                as List<
                  ApiAiTutorConversationsGet200ResponseAllOfDataItemsInner
                >,
    );
  }
}

extension $ApiAiTutorConversationsGet200ResponseAllOfDataCopyWith
    on ApiAiTutorConversationsGet200ResponseAllOfData {
  /// Returns a callable class that can be used as follows: `instanceOfApiAiTutorConversationsGet200ResponseAllOfData.copyWith(...)` or like so:`instanceOfApiAiTutorConversationsGet200ResponseAllOfData.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiAiTutorConversationsGet200ResponseAllOfDataCWProxy get copyWith =>
      _$ApiAiTutorConversationsGet200ResponseAllOfDataCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAiTutorConversationsGet200ResponseAllOfData
_$ApiAiTutorConversationsGet200ResponseAllOfDataFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiAiTutorConversationsGet200ResponseAllOfData', json, (
  $checkedConvert,
) {
  $checkKeys(json, requiredKeys: const ['page', 'pageSize', 'total', 'items']);
  final val = ApiAiTutorConversationsGet200ResponseAllOfData(
    page: $checkedConvert('page', (v) => (v as num).toInt()),
    pageSize: $checkedConvert('pageSize', (v) => (v as num).toInt()),
    total: $checkedConvert('total', (v) => (v as num).toInt()),
    items: $checkedConvert(
      'items',
      (v) => (v as List<dynamic>)
          .map(
            (e) =>
                ApiAiTutorConversationsGet200ResponseAllOfDataItemsInner.fromJson(
                  e as Map<String, dynamic>,
                ),
          )
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$ApiAiTutorConversationsGet200ResponseAllOfDataToJson(
  ApiAiTutorConversationsGet200ResponseAllOfData instance,
) => <String, dynamic>{
  'page': instance.page,
  'pageSize': instance.pageSize,
  'total': instance.total,
  'items': instance.items.map((e) => e.toJson()).toList(),
};
