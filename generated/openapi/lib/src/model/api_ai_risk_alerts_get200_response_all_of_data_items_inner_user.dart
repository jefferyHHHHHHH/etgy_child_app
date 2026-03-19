//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:etgy_openapi_client/src/model/api_ai_risk_alerts_get200_response_all_of_data_items_inner_user_child_profile.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_ai_risk_alerts_get200_response_all_of_data_items_inner_user.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUser {
  /// Returns a new [ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUser] instance.
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUser({

    required  this.id,

    required  this.username,

    required  this.role,

     this.childProfile,
  });

          // minimum: 0
  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final int id;



  @JsonKey(
    
    name: r'username',
    required: true,
    includeIfNull: false,
  )


  final String username;



  @JsonKey(
    
    name: r'role',
    required: true,
    includeIfNull: false,
  )


  final ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserRoleEnum role;



  @JsonKey(
    
    name: r'childProfile',
    required: false,
    includeIfNull: false,
  )


  final ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfile? childProfile;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUser &&
      other.id == id &&
      other.username == username &&
      other.role == role &&
      other.childProfile == childProfile;

    @override
    int get hashCode =>
        id.hashCode +
        username.hashCode +
        role.hashCode +
        (childProfile == null ? 0 : childProfile.hashCode);

  factory ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUser.fromJson(Map<String, dynamic> json) => _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserFromJson(json);

  Map<String, dynamic> toJson() => _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserRoleEnum {
@JsonValue(r'CHILD')
CHILD(r'CHILD'),
@JsonValue(r'VOLUNTEER')
VOLUNTEER(r'VOLUNTEER'),
@JsonValue(r'COLLEGE_ADMIN')
COLLEGE_ADMIN(r'COLLEGE_ADMIN'),
@JsonValue(r'PLATFORM_ADMIN')
PLATFORM_ADMIN(r'PLATFORM_ADMIN');

const ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserRoleEnum(this.value);

final String value;

@override
String toString() => value;
}


