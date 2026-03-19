//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_auth_wechat_mini_program_login_post200_response_all_of_data_any_of1.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1 {
  /// Returns a new [ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1] instance.
  ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1({

    required  this.bindRequired,

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
    bool operator ==(Object other) => identical(this, other) || other is ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1 &&
      other.bindRequired == bindRequired &&
      other.token == token &&
      other.user == user;

    @override
    int get hashCode =>
        bindRequired.hashCode +
        token.hashCode +
        (user == null ? 0 : user.hashCode);

  factory ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1.fromJson(Map<String, dynamic> json) => _$ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1FromJson(json);

  Map<String, dynamic> toJson() => _$ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1ToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

