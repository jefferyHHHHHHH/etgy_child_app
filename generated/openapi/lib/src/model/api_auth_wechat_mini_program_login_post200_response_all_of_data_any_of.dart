//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_auth_wechat_mini_program_login_post200_response_all_of_data_any_of.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf {
  /// Returns a new [ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf] instance.
  ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf({

    required  this.bindRequired,

    required  this.bindToken,
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





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf &&
      other.bindRequired == bindRequired &&
      other.bindToken == bindToken;

    @override
    int get hashCode =>
        bindRequired.hashCode +
        bindToken.hashCode;

  factory ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf.fromJson(Map<String, dynamic> json) => _$ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOfFromJson(json);

  Map<String, dynamic> toJson() => _$ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOfToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

