// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_ai_risk_alerts_get200_response_all_of_data_items_inner_user_child_profile.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfileCWProxy {
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfile realName(
    String realName,
  );

  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfile school(
    String school,
  );

  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfile grade(
    String grade,
  );

  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfile gender(
    Object? gender,
  );

  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfile collegeId(
    int? collegeId,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfile(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfile(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfile call({
    String realName,
    String school,
    String grade,
    Object? gender,
    int? collegeId,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfile.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfile.copyWith.fieldName(...)`
class _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfileCWProxyImpl
    implements
        _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfileCWProxy {
  const _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfileCWProxyImpl(
    this._value,
  );

  final ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfile _value;

  @override
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfile realName(
    String realName,
  ) => this(realName: realName);

  @override
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfile school(
    String school,
  ) => this(school: school);

  @override
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfile grade(
    String grade,
  ) => this(grade: grade);

  @override
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfile gender(
    Object? gender,
  ) => this(gender: gender);

  @override
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfile collegeId(
    int? collegeId,
  ) => this(collegeId: collegeId);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfile(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfile(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfile call({
    Object? realName = const $CopyWithPlaceholder(),
    Object? school = const $CopyWithPlaceholder(),
    Object? grade = const $CopyWithPlaceholder(),
    Object? gender = const $CopyWithPlaceholder(),
    Object? collegeId = const $CopyWithPlaceholder(),
  }) {
    return ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfile(
      realName: realName == const $CopyWithPlaceholder()
          ? _value.realName
          // ignore: cast_nullable_to_non_nullable
          : realName as String,
      school: school == const $CopyWithPlaceholder()
          ? _value.school
          // ignore: cast_nullable_to_non_nullable
          : school as String,
      grade: grade == const $CopyWithPlaceholder()
          ? _value.grade
          // ignore: cast_nullable_to_non_nullable
          : grade as String,
      gender: gender == const $CopyWithPlaceholder()
          ? _value.gender
          // ignore: cast_nullable_to_non_nullable
          : gender as Object?,
      collegeId: collegeId == const $CopyWithPlaceholder()
          ? _value.collegeId
          // ignore: cast_nullable_to_non_nullable
          : collegeId as int?,
    );
  }
}

extension $ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfileCopyWith
    on ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfile {
  /// Returns a callable class that can be used as follows: `instanceOfApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfile.copyWith(...)` or like so:`instanceOfApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfile.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfileCWProxy
  get copyWith =>
      _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfileCWProxyImpl(
        this,
      );
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfile
_$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfileFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfile',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['realName', 'school', 'grade']);
    final val =
        ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfile(
          realName: $checkedConvert('realName', (v) => v as String),
          school: $checkedConvert('school', (v) => v as String),
          grade: $checkedConvert('grade', (v) => v as String),
          gender: $checkedConvert('gender', (v) => v),
          collegeId: $checkedConvert('collegeId', (v) => (v as num?)?.toInt()),
        );
    return val;
  },
);

Map<String, dynamic>
_$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfileToJson(
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfile instance,
) => <String, dynamic>{
  'realName': instance.realName,
  'school': instance.school,
  'grade': instance.grade,
  'gender': ?instance.gender,
  'collegeId': ?instance.collegeId,
};
