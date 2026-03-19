// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_users_volunteers_batch_excel_post201_response_all_of_data.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataCWProxy {
  ApiUsersVolunteersBatchExcelPost201ResponseAllOfData total(int total);

  ApiUsersVolunteersBatchExcelPost201ResponseAllOfData success(int success);

  ApiUsersVolunteersBatchExcelPost201ResponseAllOfData failed(int failed);

  ApiUsersVolunteersBatchExcelPost201ResponseAllOfData results(
    List<ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInner>
    results,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiUsersVolunteersBatchExcelPost201ResponseAllOfData(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiUsersVolunteersBatchExcelPost201ResponseAllOfData(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiUsersVolunteersBatchExcelPost201ResponseAllOfData call({
    int total,
    int success,
    int failed,
    List<ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInner>
    results,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiUsersVolunteersBatchExcelPost201ResponseAllOfData.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiUsersVolunteersBatchExcelPost201ResponseAllOfData.copyWith.fieldName(...)`
class _$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataCWProxyImpl
    implements _$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataCWProxy {
  const _$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataCWProxyImpl(
    this._value,
  );

  final ApiUsersVolunteersBatchExcelPost201ResponseAllOfData _value;

  @override
  ApiUsersVolunteersBatchExcelPost201ResponseAllOfData total(int total) =>
      this(total: total);

  @override
  ApiUsersVolunteersBatchExcelPost201ResponseAllOfData success(int success) =>
      this(success: success);

  @override
  ApiUsersVolunteersBatchExcelPost201ResponseAllOfData failed(int failed) =>
      this(failed: failed);

  @override
  ApiUsersVolunteersBatchExcelPost201ResponseAllOfData results(
    List<ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInner>
    results,
  ) => this(results: results);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiUsersVolunteersBatchExcelPost201ResponseAllOfData(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiUsersVolunteersBatchExcelPost201ResponseAllOfData(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiUsersVolunteersBatchExcelPost201ResponseAllOfData call({
    Object? total = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? failed = const $CopyWithPlaceholder(),
    Object? results = const $CopyWithPlaceholder(),
  }) {
    return ApiUsersVolunteersBatchExcelPost201ResponseAllOfData(
      total: total == const $CopyWithPlaceholder()
          ? _value.total
          // ignore: cast_nullable_to_non_nullable
          : total as int,
      success: success == const $CopyWithPlaceholder()
          ? _value.success
          // ignore: cast_nullable_to_non_nullable
          : success as int,
      failed: failed == const $CopyWithPlaceholder()
          ? _value.failed
          // ignore: cast_nullable_to_non_nullable
          : failed as int,
      results: results == const $CopyWithPlaceholder()
          ? _value.results
          // ignore: cast_nullable_to_non_nullable
          : results
                as List<
                  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInner
                >,
    );
  }
}

extension $ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataCopyWith
    on ApiUsersVolunteersBatchExcelPost201ResponseAllOfData {
  /// Returns a callable class that can be used as follows: `instanceOfApiUsersVolunteersBatchExcelPost201ResponseAllOfData.copyWith(...)` or like so:`instanceOfApiUsersVolunteersBatchExcelPost201ResponseAllOfData.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataCWProxy get copyWith =>
      _$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiUsersVolunteersBatchExcelPost201ResponseAllOfData
_$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ApiUsersVolunteersBatchExcelPost201ResponseAllOfData',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const ['total', 'success', 'failed', 'results'],
    );
    final val = ApiUsersVolunteersBatchExcelPost201ResponseAllOfData(
      total: $checkedConvert('total', (v) => (v as num).toInt()),
      success: $checkedConvert('success', (v) => (v as num).toInt()),
      failed: $checkedConvert('failed', (v) => (v as num).toInt()),
      results: $checkedConvert(
        'results',
        (v) => (v as List<dynamic>)
            .map(
              (e) =>
                  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInner.fromJson(
                    e as Map<String, dynamic>,
                  ),
            )
            .toList(),
      ),
    );
    return val;
  },
);

Map<String, dynamic>
_$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataToJson(
  ApiUsersVolunteersBatchExcelPost201ResponseAllOfData instance,
) => <String, dynamic>{
  'total': instance.total,
  'success': instance.success,
  'failed': instance.failed,
  'results': instance.results.map((e) => e.toJson()).toList(),
};
