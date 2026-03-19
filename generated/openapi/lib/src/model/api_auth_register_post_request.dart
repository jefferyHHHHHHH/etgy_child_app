//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_auth_register_post_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiAuthRegisterPostRequest {
  /// Returns a new [ApiAuthRegisterPostRequest] instance.
  ApiAuthRegisterPostRequest({

    required  this.username,

    required  this.password,

    required  this.role,
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



      /// 注册角色（开发辅助）
  @JsonKey(
    
    name: r'role',
    required: true,
    includeIfNull: false,
  )


  final ApiAuthRegisterPostRequestRoleEnum role;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiAuthRegisterPostRequest &&
      other.username == username &&
      other.password == password &&
      other.role == role;

    @override
    int get hashCode =>
        username.hashCode +
        password.hashCode +
        role.hashCode;

  factory ApiAuthRegisterPostRequest.fromJson(Map<String, dynamic> json) => _$ApiAuthRegisterPostRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApiAuthRegisterPostRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// 注册角色（开发辅助）
enum ApiAuthRegisterPostRequestRoleEnum {
    /// 注册角色（开发辅助）
@JsonValue(r'CHILD')
CHILD(r'CHILD'),
    /// 注册角色（开发辅助）
@JsonValue(r'VOLUNTEER')
VOLUNTEER(r'VOLUNTEER'),
    /// 注册角色（开发辅助）
@JsonValue(r'COLLEGE_ADMIN')
COLLEGE_ADMIN(r'COLLEGE_ADMIN'),
    /// 注册角色（开发辅助）
@JsonValue(r'PLATFORM_ADMIN')
PLATFORM_ADMIN(r'PLATFORM_ADMIN');

const ApiAuthRegisterPostRequestRoleEnum(this.value);

final String value;

@override
String toString() => value;
}


