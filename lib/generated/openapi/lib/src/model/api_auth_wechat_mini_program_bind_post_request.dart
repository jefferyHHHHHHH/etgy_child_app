//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_auth_wechat_mini_program_bind_post_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiAuthWechatMiniProgramBindPostRequest {
  /// Returns a new [ApiAuthWechatMiniProgramBindPostRequest] instance.
  ApiAuthWechatMiniProgramBindPostRequest({

    required  this.bindToken,

    required  this.username,

    required  this.password,
  });

      /// 微信登录未绑定时返回的 bindToken（短期有效）
  @JsonKey(
    
    name: r'bindToken',
    required: true,
    includeIfNull: false,
  )


  final String bindToken;



      /// 要绑定的系统账号（儿童）用户名
  @JsonKey(
    
    name: r'username',
    required: true,
    includeIfNull: false,
  )


  final String username;



      /// 要绑定的系统账号密码
  @JsonKey(
    
    name: r'password',
    required: true,
    includeIfNull: false,
  )


  final String password;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiAuthWechatMiniProgramBindPostRequest &&
      other.bindToken == bindToken &&
      other.username == username &&
      other.password == password;

    @override
    int get hashCode =>
        bindToken.hashCode +
        username.hashCode +
        password.hashCode;

  factory ApiAuthWechatMiniProgramBindPostRequest.fromJson(Map<String, dynamic> json) => _$ApiAuthWechatMiniProgramBindPostRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApiAuthWechatMiniProgramBindPostRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

