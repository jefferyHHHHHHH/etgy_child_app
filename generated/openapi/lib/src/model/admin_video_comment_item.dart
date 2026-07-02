//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:etgy_openapi_client/src/model/admin_video_comment_video.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'admin_video_comment_item.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AdminVideoCommentItem {
  /// Returns a new [AdminVideoCommentItem] instance.
  AdminVideoCommentItem({

    required  this.id,

    required  this.videoId,

    required  this.authorId,

    required  this.content,

    required  this.status,

     this.rejectReason,

     this.reviewedBy,

     this.reviewedAt,

    required  this.createdAt,

    required  this.updatedAt,

     this.author,

    required  this.video,
  });

  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final int id;



  @JsonKey(
    
    name: r'videoId',
    required: true,
    includeIfNull: false,
  )


  final int videoId;



  @JsonKey(
    
    name: r'authorId',
    required: true,
    includeIfNull: false,
  )


  final int authorId;



  @JsonKey(
    
    name: r'content',
    required: true,
    includeIfNull: false,
  )


  final String content;



  @JsonKey(
    
    name: r'status',
    required: true,
    includeIfNull: false,
  )


  final AdminVideoCommentItemStatusEnum status;



  @JsonKey(
    
    name: r'rejectReason',
    required: false,
    includeIfNull: false,
  )


  final String? rejectReason;



  @JsonKey(
    
    name: r'reviewedBy',
    required: false,
    includeIfNull: false,
  )


  final int? reviewedBy;



  @JsonKey(
    
    name: r'reviewedAt',
    required: false,
    includeIfNull: false,
  )


  final DateTime? reviewedAt;



  @JsonKey(
    
    name: r'createdAt',
    required: true,
    includeIfNull: false,
  )


  final DateTime createdAt;



  @JsonKey(
    
    name: r'updatedAt',
    required: true,
    includeIfNull: false,
  )


  final DateTime updatedAt;



  @JsonKey(
    
    name: r'author',
    required: false,
    includeIfNull: false,
  )


  final Object? author;



  @JsonKey(
    
    name: r'video',
    required: true,
    includeIfNull: false,
  )


  final AdminVideoCommentVideo video;





    @override
    bool operator ==(Object other) => identical(this, other) || other is AdminVideoCommentItem &&
      other.id == id &&
      other.videoId == videoId &&
      other.authorId == authorId &&
      other.content == content &&
      other.status == status &&
      other.rejectReason == rejectReason &&
      other.reviewedBy == reviewedBy &&
      other.reviewedAt == reviewedAt &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt &&
      other.author == author &&
      other.video == video;

    @override
    int get hashCode =>
        id.hashCode +
        videoId.hashCode +
        authorId.hashCode +
        content.hashCode +
        status.hashCode +
        (rejectReason == null ? 0 : rejectReason.hashCode) +
        (reviewedBy == null ? 0 : reviewedBy.hashCode) +
        (reviewedAt == null ? 0 : reviewedAt.hashCode) +
        createdAt.hashCode +
        updatedAt.hashCode +
        (author == null ? 0 : author.hashCode) +
        video.hashCode;

  factory AdminVideoCommentItem.fromJson(Map<String, dynamic> json) => _$AdminVideoCommentItemFromJson(json);

  Map<String, dynamic> toJson() => _$AdminVideoCommentItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum AdminVideoCommentItemStatusEnum {
@JsonValue(r'PENDING')
PENDING(r'PENDING'),
@JsonValue(r'APPROVED')
APPROVED(r'APPROVED'),
@JsonValue(r'REJECTED')
REJECTED(r'REJECTED');

const AdminVideoCommentItemStatusEnum(this.value);

final String value;

@override
String toString() => value;
}


