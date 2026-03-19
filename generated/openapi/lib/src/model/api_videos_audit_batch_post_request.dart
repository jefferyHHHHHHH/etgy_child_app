//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_videos_audit_batch_post_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiVideosAuditBatchPostRequest {
  /// Returns a new [ApiVideosAuditBatchPostRequest] instance.
  ApiVideosAuditBatchPostRequest({

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
    bool operator ==(Object other) => identical(this, other) || other is ApiVideosAuditBatchPostRequest &&
      other.ids == ids &&
      other.pass == pass &&
      other.reason == reason;

    @override
    int get hashCode =>
        ids.hashCode +
        (pass == null ? 0 : pass.hashCode) +
        reason.hashCode;

  factory ApiVideosAuditBatchPostRequest.fromJson(Map<String, dynamic> json) => _$ApiVideosAuditBatchPostRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApiVideosAuditBatchPostRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

