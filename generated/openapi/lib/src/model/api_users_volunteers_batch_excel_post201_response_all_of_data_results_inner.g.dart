// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_users_volunteers_batch_excel_post201_response_all_of_data_results_inner.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerCWProxy {
  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInner rowNumber(
    int rowNumber,
  );

  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInner ok(bool ok);

  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInner username(
    String username,
  );

  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInner userId(
    int userId,
  );

  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInner message(
    String message,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInner(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInner(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInner call({
    int rowNumber,
    bool ok,
    String username,
    int userId,
    String message,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInner.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInner.copyWith.fieldName(...)`
class _$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerCWProxyImpl
    implements
        _$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerCWProxy {
  const _$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerCWProxyImpl(
    this._value,
  );

  final ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInner _value;

  @override
  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInner rowNumber(
    int rowNumber,
  ) => this(rowNumber: rowNumber);

  @override
  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInner ok(
    bool ok,
  ) => this(ok: ok);

  @override
  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInner username(
    String username,
  ) => this(username: username);

  @override
  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInner userId(
    int userId,
  ) => this(userId: userId);

  @override
  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInner message(
    String message,
  ) => this(message: message);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInner(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInner(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInner call({
    Object? rowNumber = const $CopyWithPlaceholder(),
    Object? ok = const $CopyWithPlaceholder(),
    Object? username = const $CopyWithPlaceholder(),
    Object? userId = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
  }) {
    return ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInner(
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
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String,
    );
  }
}

extension $ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerCopyWith
    on ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInner {
  /// Returns a callable class that can be used as follows: `instanceOfApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInner.copyWith(...)` or like so:`instanceOfApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInner.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerCWProxy
  get copyWith =>
      _$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerCWProxyImpl(
        this,
      );
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInner
_$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInner',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const ['rowNumber', 'ok', 'username', 'userId', 'message'],
    );
    final val =
        ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInner(
          rowNumber: $checkedConvert('rowNumber', (v) => (v as num).toInt()),
          ok: $checkedConvert('ok', (v) => v as bool),
          username: $checkedConvert('username', (v) => v as String),
          userId: $checkedConvert('userId', (v) => (v as num).toInt()),
          message: $checkedConvert('message', (v) => v as String),
        );
    return val;
  },
);

Map<String, dynamic>
_$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerToJson(
  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInner instance,
) => <String, dynamic>{
  'rowNumber': instance.rowNumber,
  'ok': instance.ok,
  'username': instance.username,
  'userId': instance.userId,
  'message': instance.message,
};
