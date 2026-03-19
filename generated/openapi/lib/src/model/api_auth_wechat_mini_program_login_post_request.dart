//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_auth_wechat_mini_program_login_post_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiAuthWechatMiniProgramLoginPostRequest {
  /// Returns a new [ApiAuthWechatMiniProgramLoginPostRequest] instance.
  ApiAuthWechatMiniProgramLoginPostRequest({

    required  this.code,
  });

      /// 小程序 wx.login 获取的 code（临时票据）
  @JsonKey(
    
    name: r'code',
    required: true,
    includeIfNull: false,
  )


  final String code;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiAuthWechatMiniProgramLoginPostRequest &&
      other.code == code;

    @override
    int get hashCode =>
        code.hashCode;

  factory ApiAuthWechatMiniProgramLoginPostRequest.fromJson(Map<String, dynamic> json) => _$ApiAuthWechatMiniProgramLoginPostRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApiAuthWechatMiniProgramLoginPostRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

