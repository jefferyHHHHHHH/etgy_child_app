//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:etgy_openapi_client/src/model/api_auth_wechat_mini_program_login_post200_response_all_of_data_any_of1.dart';
import 'package:etgy_openapi_client/src/model/api_auth_wechat_mini_program_login_post200_response_all_of_data_any_of.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_auth_wechat_mini_program_login_post200_response_all_of_data.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiAuthWechatMiniProgramLoginPost200ResponseAllOfData {
  /// Returns a new [ApiAuthWechatMiniProgramLoginPost200ResponseAllOfData] instance.
  ApiAuthWechatMiniProgramLoginPost200ResponseAllOfData({

    required  this.bindRequired,

    required  this.bindToken,

    required  this.token,

     this.user,
  });

  @JsonKey(
    
    name: r'bindRequired',
    required: true,
    includeIfNull: false,
  )


  final bool bindRequired;



  @JsonKey(
    
    name: r'bindToken',
    required: true,
    includeIfNull: false,
  )


  final String bindToken;



  @JsonKey(
    
    name: r'token',
    required: true,
    includeIfNull: false,
  )


  final String token;



  @JsonKey(
    
    name: r'user',
    required: false,
    includeIfNull: false,
  )


  final Object? user;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiAuthWechatMiniProgramLoginPost200ResponseAllOfData &&
      other.bindRequired == bindRequired &&
      other.bindToken == bindToken &&
      other.token == token &&
      other.user == user;

    @override
    int get hashCode =>
        bindRequired.hashCode +
        bindToken.hashCode +
        token.hashCode +
        (user == null ? 0 : user.hashCode);

  factory ApiAuthWechatMiniProgramLoginPost200ResponseAllOfData.fromJson(Map<String, dynamic> json) => _$ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataFromJson(json);

  Map<String, dynamic> toJson() => _$ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

