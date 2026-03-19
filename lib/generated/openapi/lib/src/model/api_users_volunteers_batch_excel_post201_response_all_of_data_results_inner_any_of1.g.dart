// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_users_volunteers_batch_excel_post201_response_all_of_data_results_inner_any_of1.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1CWProxy {
  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1
  rowNumber(int rowNumber);

  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1 ok(
    bool ok,
  );

  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1
  username(String username);

  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1
  message(String message);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1 call({
    int rowNumber,
    bool ok,
    String username,
    String message,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1.copyWith.fieldName(...)`
class _$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1CWProxyImpl
    implements
        _$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1CWProxy {
  const _$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1CWProxyImpl(
    this._value,
  );

  final ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1
  _value;

  @override
  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1
  rowNumber(int rowNumber) => this(rowNumber: rowNumber);

  @override
  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1 ok(
    bool ok,
  ) => this(ok: ok);

  @override
  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1
  username(String username) => this(username: username);

  @override
  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1
  message(String message) => this(message: message);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1 call({
    Object? rowNumber = const $CopyWithPlaceholder(),
    Object? ok = const $CopyWithPlaceholder(),
    Object? username = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
  }) {
    return ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1(
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
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String,
    );
  }
}

extension $ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1CopyWith
    on ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1 {
  /// Returns a callable class that can be used as follows: `instanceOfApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1.copyWith(...)` or like so:`instanceOfApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1CWProxy
  get copyWith =>
      _$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1CWProxyImpl(
        this,
      );
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1
_$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1FromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const ['rowNumber', 'ok', 'username', 'message'],
    );
    final val =
        ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1(
          rowNumber: $checkedConvert('rowNumber', (v) => (v as num).toInt()),
          ok: $checkedConvert('ok', (v) => v as bool),
          username: $checkedConvert('username', (v) => v as String),
          message: $checkedConvert('message', (v) => v as String),
        );
    return val;
  },
);

Map<String, dynamic>
_$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1ToJson(
  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1
  instance,
) => <String, dynamic>{
  'rowNumber': instance.rowNumber,
  'ok': instance.ok,
  'username': instance.username,
  'message': instance.message,
};
