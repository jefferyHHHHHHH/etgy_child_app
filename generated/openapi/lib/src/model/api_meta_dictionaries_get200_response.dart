//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:etgy_openapi_client/src/model/dictionaries.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_meta_dictionaries_get200_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiMetaDictionariesGet200Response {
  /// Returns a new [ApiMetaDictionariesGet200Response] instance.
  ApiMetaDictionariesGet200Response({

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


  final Dictionaries data;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiMetaDictionariesGet200Response &&
      other.code == code &&
      other.message == message &&
      other.data == data;

    @override
    int get hashCode =>
        code.hashCode +
        message.hashCode +
        data.hashCode;

  factory ApiMetaDictionariesGet200Response.fromJson(Map<String, dynamic> json) => _$ApiMetaDictionariesGet200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiMetaDictionariesGet200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

