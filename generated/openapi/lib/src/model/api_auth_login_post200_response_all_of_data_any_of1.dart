//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_auth_login_post200_response_all_of_data_any_of1.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiAuthLoginPost200ResponseAllOfDataAnyOf1 {
  /// Returns a new [ApiAuthLoginPost200ResponseAllOfDataAnyOf1] instance.
  ApiAuthLoginPost200ResponseAllOfDataAnyOf1({

    required  this.bindRequired,

    required  this.bindToken,

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
    
    name: r'user',
    required: false,
    includeIfNull: false,
  )


  final Object? user;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiAuthLoginPost200ResponseAllOfDataAnyOf1 &&
      other.bindRequired == bindRequired &&
      other.bindToken == bindToken &&
      other.user == user;

    @override
    int get hashCode =>
        bindRequired.hashCode +
        bindToken.hashCode +
        (user == null ? 0 : user.hashCode);

  factory ApiAuthLoginPost200ResponseAllOfDataAnyOf1.fromJson(Map<String, dynamic> json) => _$ApiAuthLoginPost200ResponseAllOfDataAnyOf1FromJson(json);

  Map<String, dynamic> toJson() => _$ApiAuthLoginPost200ResponseAllOfDataAnyOf1ToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

