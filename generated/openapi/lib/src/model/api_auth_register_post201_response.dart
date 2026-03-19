//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_auth_register_post201_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiAuthRegisterPost201Response {
  /// Returns a new [ApiAuthRegisterPost201Response] instance.
  ApiAuthRegisterPost201Response({

    required  this.code,

    required  this.message,

     this.data,
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
    required: false,
    includeIfNull: false,
  )


  final Object? data;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiAuthRegisterPost201Response &&
      other.code == code &&
      other.message == message &&
      other.data == data;

    @override
    int get hashCode =>
        code.hashCode +
        message.hashCode +
        (data == null ? 0 : data.hashCode);

  factory ApiAuthRegisterPost201Response.fromJson(Map<String, dynamic> json) => _$ApiAuthRegisterPost201ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiAuthRegisterPost201ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

