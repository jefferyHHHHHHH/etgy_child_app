//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_videos_comments_comment_id_audit_post_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiVideosCommentsCommentIdAuditPostRequest {
  /// Returns a new [ApiVideosCommentsCommentIdAuditPostRequest] instance.
  ApiVideosCommentsCommentIdAuditPostRequest({

     this.pass,

     this.reason,
  });

  @JsonKey(
    
    name: r'pass',
    required: false,
    includeIfNull: false,
  )


  final bool? pass;



  @JsonKey(
    
    name: r'reason',
    required: false,
    includeIfNull: false,
  )


  final String? reason;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiVideosCommentsCommentIdAuditPostRequest &&
      other.pass == pass &&
      other.reason == reason;

    @override
    int get hashCode =>
        (pass == null ? 0 : pass.hashCode) +
        reason.hashCode;

  factory ApiVideosCommentsCommentIdAuditPostRequest.fromJson(Map<String, dynamic> json) => _$ApiVideosCommentsCommentIdAuditPostRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApiVideosCommentsCommentIdAuditPostRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

