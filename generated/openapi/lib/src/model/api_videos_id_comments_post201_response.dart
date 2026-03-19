//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:etgy_openapi_client/src/model/video_comment.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_videos_id_comments_post201_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiVideosIdCommentsPost201Response {
  /// Returns a new [ApiVideosIdCommentsPost201Response] instance.
  ApiVideosIdCommentsPost201Response({

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


  final VideoComment data;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiVideosIdCommentsPost201Response &&
      other.code == code &&
      other.message == message &&
      other.data == data;

    @override
    int get hashCode =>
        code.hashCode +
        message.hashCode +
        data.hashCode;

  factory ApiVideosIdCommentsPost201Response.fromJson(Map<String, dynamic> json) => _$ApiVideosIdCommentsPost201ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiVideosIdCommentsPost201ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

