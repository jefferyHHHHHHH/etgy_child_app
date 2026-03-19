//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_ai_risk_alerts_get200_response_all_of_data_items_inner_user_child_profile.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfile {
  /// Returns a new [ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfile] instance.
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfile({

    required  this.realName,

    required  this.school,

    required  this.grade,

     this.gender,

     this.collegeId,
  });

  @JsonKey(
    
    name: r'realName',
    required: true,
    includeIfNull: false,
  )


  final String realName;



  @JsonKey(
    
    name: r'school',
    required: true,
    includeIfNull: false,
  )


  final String school;



  @JsonKey(
    
    name: r'grade',
    required: true,
    includeIfNull: false,
  )


  final String grade;



  @JsonKey(
    
    name: r'gender',
    required: false,
    includeIfNull: false,
  )


  final Object? gender;



          // minimum: 0
  @JsonKey(
    
    name: r'collegeId',
    required: false,
    includeIfNull: false,
  )


  final int? collegeId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfile &&
      other.realName == realName &&
      other.school == school &&
      other.grade == grade &&
      other.gender == gender &&
      other.collegeId == collegeId;

    @override
    int get hashCode =>
        realName.hashCode +
        school.hashCode +
        grade.hashCode +
        (gender == null ? 0 : gender.hashCode) +
        (collegeId == null ? 0 : collegeId.hashCode);

  factory ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfile.fromJson(Map<String, dynamic> json) => _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfileFromJson(json);

  Map<String, dynamic> toJson() => _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfileToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

