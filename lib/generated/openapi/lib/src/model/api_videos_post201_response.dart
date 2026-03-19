//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:etgy_openapi_client/src/model/video.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_videos_post201_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiVideosPost201Response {
  /// Returns a new [ApiVideosPost201Response] instance.
  ApiVideosPost201Response({

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


  final Video data;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiVideosPost201Response &&
      other.code == code &&
      other.message == message &&
      other.data == data;

    @override
    int get hashCode =>
        code.hashCode +
        message.hashCode +
        data.hashCode;

  factory ApiVideosPost201Response.fromJson(Map<String, dynamic> json) => _$ApiVideosPost201ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiVideosPost201ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

