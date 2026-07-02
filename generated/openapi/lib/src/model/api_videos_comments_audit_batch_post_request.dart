//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_videos_comments_audit_batch_post_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiVideosCommentsAuditBatchPostRequest {
  /// Returns a new [ApiVideosCommentsAuditBatchPostRequest] instance.
  ApiVideosCommentsAuditBatchPostRequest({

    required  this.ids,

     this.pass,

     this.reason,
  });

  @JsonKey(
    
    name: r'ids',
    required: true,
    includeIfNull: false,
  )


  final List<int> ids;



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
    bool operator ==(Object other) => identical(this, other) || other is ApiVideosCommentsAuditBatchPostRequest &&
      other.ids == ids &&
      other.pass == pass &&
      other.reason == reason;

    @override
    int get hashCode =>
        ids.hashCode +
        (pass == null ? 0 : pass.hashCode) +
        reason.hashCode;

  factory ApiVideosCommentsAuditBatchPostRequest.fromJson(Map<String, dynamic> json) => _$ApiVideosCommentsAuditBatchPostRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApiVideosCommentsAuditBatchPostRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

