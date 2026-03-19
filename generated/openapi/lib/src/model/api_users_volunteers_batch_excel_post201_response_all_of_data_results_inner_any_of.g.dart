// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_users_volunteers_batch_excel_post201_response_all_of_data_results_inner_any_of.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOfCWProxy {
  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf
  rowNumber(int rowNumber);

  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf ok(
    bool ok,
  );

  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf
  username(String username);

  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf userId(
    int userId,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf call({
    int rowNumber,
    bool ok,
    String username,
    int userId,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf.copyWith.fieldName(...)`
class _$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOfCWProxyImpl
    implements
        _$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOfCWProxy {
  const _$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOfCWProxyImpl(
    this._value,
  );

  final ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf
  _value;

  @override
  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf
  rowNumber(int rowNumber) => this(rowNumber: rowNumber);

  @override
  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf ok(
    bool ok,
  ) => this(ok: ok);

  @override
  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf
  username(String username) => this(username: username);

  @override
  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf userId(
    int userId,
  ) => this(userId: userId);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf call({
    Object? rowNumber = const $CopyWithPlaceholder(),
    Object? ok = const $CopyWithPlaceholder(),
    Object? username = const $CopyWithPlaceholder(),
    Object? userId = const $CopyWithPlaceholder(),
  }) {
    return ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf(
      rowNumber: rowNumber == const $CopyWithPlaceholder()
          ? _value.rowNumber
          // ignore: cast_nullable_to_non_nullable
          : rowNumber as int,
      ok: ok == const $CopyWithPlaceholder()
          ? _value.ok
          // ignore: cast_nullable_to_non_nullable
          : ok as bool,
      username: username == const $CopyWithPlaceholder()
          ? _value.username
          // ignore: cast_nullable_to_non_nullable
          : username as String,
      userId: userId == const $CopyWithPlaceholder()
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as int,
    );
  }
}

extension $ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOfCopyWith
    on ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf {
  /// Returns a callable class that can be used as follows: `instanceOfApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf.copyWith(...)` or like so:`instanceOfApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOfCWProxy
  get copyWith =>
      _$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOfCWProxyImpl(
        this,
      );
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf
_$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOfFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const ['rowNumber', 'ok', 'username', 'userId'],
    );
    final val =
        ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf(
          rowNumber: $checkedConvert('rowNumber', (v) => (v as num).toInt()),
          ok: $checkedConvert('ok', (v) => v as bool),
          username: $checkedConvert('username', (v) => v as String),
          userId: $checkedConvert('userId', (v) => (v as num).toInt()),
        );
    return val;
  },
);

Map<String, dynamic>
_$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOfToJson(
  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf
  instance,
) => <String, dynamic>{
  'rowNumber': instance.rowNumber,
  'ok': instance.ok,
  'username': instance.username,
  'userId': instance.userId,
};
