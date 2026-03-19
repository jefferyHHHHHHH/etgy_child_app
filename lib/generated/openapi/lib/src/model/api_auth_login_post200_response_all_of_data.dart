//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_auth_login_post200_response_all_of_data.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiAuthLoginPost200ResponseAllOfData {
  /// Returns a new [ApiAuthLoginPost200ResponseAllOfData] instance.
  ApiAuthLoginPost200ResponseAllOfData({

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
    bool operator ==(Object other) => identical(this, other) || other is ApiAuthLoginPost200ResponseAllOfData &&
      other.token == token &&
      other.user == user;

    @override
    int get hashCode =>
        token.hashCode +
        (user == null ? 0 : user.hashCode);

  factory ApiAuthLoginPost200ResponseAllOfData.fromJson(Map<String, dynamic> json) => _$ApiAuthLoginPost200ResponseAllOfDataFromJson(json);

  Map<String, dynamic> toJson() => _$ApiAuthLoginPost200ResponseAllOfDataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

