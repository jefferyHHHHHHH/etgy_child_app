//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_users_volunteers_accounts_post_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiUsersVolunteersAccountsPostRequest {
  /// Returns a new [ApiUsersVolunteersAccountsPostRequest] instance.
  ApiUsersVolunteersAccountsPostRequest({

    required  this.username,

    required  this.password,

    required  this.realName,

    required  this.studentId,

     this.collegeId,

     this.phone,

     this.gender,
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
    
    name: r'studentId',
    required: true,
    includeIfNull: false,
  )


  final String studentId;



      /// 仅平台管理员创建时需要传；学院管理员会被强制使用自身学院
          // minimum: 0
  @JsonKey(
    
    name: r'collegeId',
    required: false,
    includeIfNull: false,
  )


  final int? collegeId;



  @JsonKey(
    
    name: r'phone',
    required: false,
    includeIfNull: false,
  )


  final String? phone;



      /// 性别（不传默认 UNKNOWN）
  @JsonKey(
    
    name: r'gender',
    required: false,
    includeIfNull: false,
  )


  final ApiUsersVolunteersAccountsPostRequestGenderEnum? gender;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiUsersVolunteersAccountsPostRequest &&
      other.username == username &&
      other.password == password &&
      other.realName == realName &&
      other.studentId == studentId &&
      other.collegeId == collegeId &&
      other.phone == phone &&
      other.gender == gender;

    @override
    int get hashCode =>
        username.hashCode +
        password.hashCode +
        realName.hashCode +
        studentId.hashCode +
        collegeId.hashCode +
        phone.hashCode +
        gender.hashCode;

  factory ApiUsersVolunteersAccountsPostRequest.fromJson(Map<String, dynamic> json) => _$ApiUsersVolunteersAccountsPostRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApiUsersVolunteersAccountsPostRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// 性别（不传默认 UNKNOWN）
enum ApiUsersVolunteersAccountsPostRequestGenderEnum {
    /// 性别（不传默认 UNKNOWN）
@JsonValue(r'MALE')
MALE(r'MALE'),
    /// 性别（不传默认 UNKNOWN）
@JsonValue(r'FEMALE')
FEMALE(r'FEMALE'),
    /// 性别（不传默认 UNKNOWN）
@JsonValue(r'UNKNOWN')
UNKNOWN(r'UNKNOWN');

const ApiUsersVolunteersAccountsPostRequestGenderEnum(this.value);

final String value;

@override
String toString() => value;
}


