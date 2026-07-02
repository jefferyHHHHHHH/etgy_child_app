//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:etgy_openapi_client/src/model/admin_video_comment_paged_result.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_videos_comments_admin_get200_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiVideosCommentsAdminGet200Response {
  /// Returns a new [ApiVideosCommentsAdminGet200Response] instance.
  ApiVideosCommentsAdminGet200Response({

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


  final AdminVideoCommentPagedResult data;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiVideosCommentsAdminGet200Response &&
      other.code == code &&
      other.message == message &&
      other.data == data;

    @override
    int get hashCode =>
        code.hashCode +
        message.hashCode +
        data.hashCode;

  factory ApiVideosCommentsAdminGet200Response.fromJson(Map<String, dynamic> json) => _$ApiVideosCommentsAdminGet200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiVideosCommentsAdminGet200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

