//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:etgy_openapi_client/src/model/api_auth_login_post200_response_all_of_data.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_auth_login_post200_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiAuthLoginPost200Response {
  /// Returns a new [ApiAuthLoginPost200Response] instance.
  ApiAuthLoginPost200Response({

    required  this.code,

    required  this.message,

    required  this.data,
  });

  @JsonKey(
    
    name: r'code',
    required: true,
    includeIfNull: false,
  )


  final int code;



  @JsonKey(
    
    name: r'message',
    required: true,
    includeIfNull: false,
  )


  final String message;



  @JsonKey(
    
    name: r'data',
    required: true,
    includeIfNull: false,
  )


  final ApiAuthLoginPost200ResponseAllOfData data;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiAuthLoginPost200Response &&
      other.code == code &&
      other.message == message &&
      other.data == data;

    @override
    int get hashCode =>
        code.hashCode +
        message.hashCode +
        data.hashCode;

  factory ApiAuthLoginPost200Response.fromJson(Map<String, dynamic> json) => _$ApiAuthLoginPost200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiAuthLoginPost200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

