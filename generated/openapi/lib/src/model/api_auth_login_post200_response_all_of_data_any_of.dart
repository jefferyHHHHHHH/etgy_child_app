//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_auth_login_post200_response_all_of_data_any_of.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiAuthLoginPost200ResponseAllOfDataAnyOf {
  /// Returns a new [ApiAuthLoginPost200ResponseAllOfDataAnyOf] instance.
  ApiAuthLoginPost200ResponseAllOfDataAnyOf({

    required  this.token,

     this.user,
  });

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
    bool operator ==(Object other) => identical(this, other) || other is ApiAuthLoginPost200ResponseAllOfDataAnyOf &&
      other.token == token &&
      other.user == user;

    @override
    int get hashCode =>
        token.hashCode +
        (user == null ? 0 : user.hashCode);

  factory ApiAuthLoginPost200ResponseAllOfDataAnyOf.fromJson(Map<String, dynamic> json) => _$ApiAuthLoginPost200ResponseAllOfDataAnyOfFromJson(json);

  Map<String, dynamic> toJson() => _$ApiAuthLoginPost200ResponseAllOfDataAnyOfToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

