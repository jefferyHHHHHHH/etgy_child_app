//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:etgy_openapi_client/src/model/api_auth_login_post_request_device_info.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_auth_login_post_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiAuthLoginPostRequest {
  /// Returns a new [ApiAuthLoginPostRequest] instance.
  ApiAuthLoginPostRequest({

    required  this.username,

    required  this.password,

     this.role,

     this.deviceId,

     this.deviceInfo,
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



      /// 登录角色（可选；不传则由后端按账号类型判定/默认）
  @JsonKey(
    
    name: r'role',
    required: false,
    includeIfNull: false,
  )


  final ApiAuthLoginPostRequestRoleEnum? role;



      /// 设备唯一标识（儿童端设备绑定）
  @JsonKey(
    
    name: r'deviceId',
    required: false,
    includeIfNull: false,
  )


  final String? deviceId;



  @JsonKey(
    
    name: r'deviceInfo',
    required: false,
    includeIfNull: false,
  )


  final ApiAuthLoginPostRequestDeviceInfo? deviceInfo;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiAuthLoginPostRequest &&
      other.username == username &&
      other.password == password &&
      other.role == role &&
      other.deviceId == deviceId &&
      other.deviceInfo == deviceInfo;

    @override
    int get hashCode =>
        username.hashCode +
        password.hashCode +
        role.hashCode +
        deviceId.hashCode +
        deviceInfo.hashCode;

  factory ApiAuthLoginPostRequest.fromJson(Map<String, dynamic> json) => _$ApiAuthLoginPostRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApiAuthLoginPostRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// 登录角色（可选；不传则由后端按账号类型判定/默认）
enum ApiAuthLoginPostRequestRoleEnum {
    /// 登录角色（可选；不传则由后端按账号类型判定/默认）
@JsonValue(r'CHILD')
CHILD(r'CHILD'),
    /// 登录角色（可选；不传则由后端按账号类型判定/默认）
@JsonValue(r'VOLUNTEER')
VOLUNTEER(r'VOLUNTEER'),
    /// 登录角色（可选；不传则由后端按账号类型判定/默认）
@JsonValue(r'COLLEGE_ADMIN')
COLLEGE_ADMIN(r'COLLEGE_ADMIN'),
    /// 登录角色（可选；不传则由后端按账号类型判定/默认）
@JsonValue(r'PLATFORM_ADMIN')
PLATFORM_ADMIN(r'PLATFORM_ADMIN');

const ApiAuthLoginPostRequestRoleEnum(this.value);

final String value;

@override
String toString() => value;
}


