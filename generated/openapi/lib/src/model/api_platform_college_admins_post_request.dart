//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_platform_college_admins_post_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiPlatformCollegeAdminsPostRequest {
  /// Returns a new [ApiPlatformCollegeAdminsPostRequest] instance.
  ApiPlatformCollegeAdminsPostRequest({

    required  this.username,

    required  this.password,

    required  this.realName,

    required  this.collegeId,
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



          // minimum: 0
  @JsonKey(
    
    name: r'collegeId',
    required: true,
    includeIfNull: false,
  )


  final int collegeId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiPlatformCollegeAdminsPostRequest &&
      other.username == username &&
      other.password == password &&
      other.realName == realName &&
      other.collegeId == collegeId;

    @override
    int get hashCode =>
        username.hashCode +
        password.hashCode +
        realName.hashCode +
        collegeId.hashCode;

  factory ApiPlatformCollegeAdminsPostRequest.fromJson(Map<String, dynamic> json) => _$ApiPlatformCollegeAdminsPostRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApiPlatformCollegeAdminsPostRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

