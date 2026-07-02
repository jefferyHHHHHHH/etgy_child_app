//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:etgy_openapi_client/src/model/delete_result.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_videos_comments_comment_id_delete200_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiVideosCommentsCommentIdDelete200Response {
  /// Returns a new [ApiVideosCommentsCommentIdDelete200Response] instance.
  ApiVideosCommentsCommentIdDelete200Response({

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


  final DeleteResult data;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiVideosCommentsCommentIdDelete200Response &&
      other.code == code &&
      other.message == message &&
      other.data == data;

    @override
    int get hashCode =>
        code.hashCode +
        message.hashCode +
        data.hashCode;

  factory ApiVideosCommentsCommentIdDelete200Response.fromJson(Map<String, dynamic> json) => _$ApiVideosCommentsCommentIdDelete200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiVideosCommentsCommentIdDelete200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

