//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_users_children_post_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiUsersChildrenPostRequest {
  /// Returns a new [ApiUsersChildrenPostRequest] instance.
  ApiUsersChildrenPostRequest({

    required  this.username,

    required  this.password,

    required  this.realName,

    required  this.school,

    required  this.grade,

    required  this.gender,
  });

  @JsonKey(
    
    name: r'username',
    required: true,
    includeIfNull: false,
  )


  final String username;



  @JsonKey(
    
    name: r'password',
    required: true,
    includeIfNull: false,
  )


  final String password;



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
    required: true,
    includeIfNull: false,
  )


  final ApiUsersChildrenPostRequestGenderEnum gender;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiUsersChildrenPostRequest &&
      other.username == username &&
      other.password == password &&
      other.realName == realName &&
      other.school == school &&
      other.grade == grade &&
      other.gender == gender;

    @override
    int get hashCode =>
        username.hashCode +
        password.hashCode +
        realName.hashCode +
        school.hashCode +
        grade.hashCode +
        gender.hashCode;

  factory ApiUsersChildrenPostRequest.fromJson(Map<String, dynamic> json) => _$ApiUsersChildrenPostRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApiUsersChildrenPostRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum ApiUsersChildrenPostRequestGenderEnum {
@JsonValue(r'MALE')
MALE(r'MALE'),
@JsonValue(r'FEMALE')
FEMALE(r'FEMALE'),
@JsonValue(r'UNKNOWN')
UNKNOWN(r'UNKNOWN');

const ApiUsersChildrenPostRequestGenderEnum(this.value);

final String value;

@override
String toString() => value;
}


