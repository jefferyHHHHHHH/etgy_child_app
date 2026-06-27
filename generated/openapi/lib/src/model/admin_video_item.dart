//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:etgy_openapi_client/src/model/video_media_urls.dart';
import 'package:etgy_openapi_client/src/model/video_metrics.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'admin_video_item.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AdminVideoItem {
  /// Returns a new [AdminVideoItem] instance.
  AdminVideoItem({

    required  this.id,

    required  this.title,

     this.intro,

    required  this.url,

     this.coverUrl,

     this.duration,

     this.gradeRange,

     this.subjectTag,

    required  this.status,

     this.rejectReason,

     this.reviewedBy,

     this.reviewedAt,

     this.publishedBy,

     this.publishedAt,

     this.offlineBy,

     this.offlineAt,

     this.offlineReason,

    required  this.uploaderId,

    required  this.collegeId,

    required  this.createdAt,

    required  this.updatedAt,

     this.metrics,

     this.uploader,

     this.college,

    required  this.mediaUrls,
  });

  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final int id;



  @JsonKey(
    
    name: r'title',
    required: true,
    includeIfNull: false,
  )


  final String title;



  @JsonKey(
    
    name: r'intro',
    required: false,
    includeIfNull: false,
  )


  final String? intro;



  @JsonKey(
    
    name: r'url',
    required: true,
    includeIfNull: false,
  )


  final String url;



  @JsonKey(
    
    name: r'coverUrl',
    required: false,
    includeIfNull: false,
  )


  final String? coverUrl;



  @JsonKey(
    
    name: r'duration',
    required: false,
    includeIfNull: false,
  )


  final int? duration;



  @JsonKey(
    
    name: r'gradeRange',
    required: false,
    includeIfNull: false,
  )


  final String? gradeRange;



  @JsonKey(
    
    name: r'subjectTag',
    required: false,
    includeIfNull: false,
  )


  final String? subjectTag;



  @JsonKey(
    
    name: r'status',
    required: true,
    includeIfNull: false,
  )


  final AdminVideoItemStatusEnum status;



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
    
    name: r'publishedBy',
    required: false,
    includeIfNull: false,
  )


  final int? publishedBy;



  @JsonKey(
    
    name: r'publishedAt',
    required: false,
    includeIfNull: false,
  )


  final DateTime? publishedAt;



  @JsonKey(
    
    name: r'offlineBy',
    required: false,
    includeIfNull: false,
  )


  final int? offlineBy;



  @JsonKey(
    
    name: r'offlineAt',
    required: false,
    includeIfNull: false,
  )


  final DateTime? offlineAt;



  @JsonKey(
    
    name: r'offlineReason',
    required: false,
    includeIfNull: false,
  )


  final String? offlineReason;



  @JsonKey(
    
    name: r'uploaderId',
    required: true,
    includeIfNull: false,
  )


  final int uploaderId;



  @JsonKey(
    
    name: r'collegeId',
    required: true,
    includeIfNull: false,
  )


  final int collegeId;



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
    
    name: r'metrics',
    required: false,
    includeIfNull: false,
  )


  final VideoMetrics? metrics;



  @JsonKey(
    
    name: r'uploader',
    required: false,
    includeIfNull: false,
  )


  final Object? uploader;



  @JsonKey(
    
    name: r'college',
    required: false,
    includeIfNull: false,
  )


  final Object? college;



  @JsonKey(
    
    name: r'mediaUrls',
    required: true,
    includeIfNull: false,
  )


  final VideoMediaUrls mediaUrls;





    @override
    bool operator ==(Object other) => identical(this, other) || other is AdminVideoItem &&
      other.id == id &&
      other.title == title &&
      other.intro == intro &&
      other.url == url &&
      other.coverUrl == coverUrl &&
      other.duration == duration &&
      other.gradeRange == gradeRange &&
      other.subjectTag == subjectTag &&
      other.status == status &&
      other.rejectReason == rejectReason &&
      other.reviewedBy == reviewedBy &&
      other.reviewedAt == reviewedAt &&
      other.publishedBy == publishedBy &&
      other.publishedAt == publishedAt &&
      other.offlineBy == offlineBy &&
      other.offlineAt == offlineAt &&
      other.offlineReason == offlineReason &&
      other.uploaderId == uploaderId &&
      other.collegeId == collegeId &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt &&
      other.metrics == metrics &&
      other.uploader == uploader &&
      other.college == college &&
      other.mediaUrls == mediaUrls;

    @override
    int get hashCode =>
        id.hashCode +
        title.hashCode +
        (intro == null ? 0 : intro.hashCode) +
        url.hashCode +
        (coverUrl == null ? 0 : coverUrl.hashCode) +
        (duration == null ? 0 : duration.hashCode) +
        (gradeRange == null ? 0 : gradeRange.hashCode) +
        (subjectTag == null ? 0 : subjectTag.hashCode) +
        status.hashCode +
        (rejectReason == null ? 0 : rejectReason.hashCode) +
        (reviewedBy == null ? 0 : reviewedBy.hashCode) +
        (reviewedAt == null ? 0 : reviewedAt.hashCode) +
        (publishedBy == null ? 0 : publishedBy.hashCode) +
        (publishedAt == null ? 0 : publishedAt.hashCode) +
        (offlineBy == null ? 0 : offlineBy.hashCode) +
        (offlineAt == null ? 0 : offlineAt.hashCode) +
        (offlineReason == null ? 0 : offlineReason.hashCode) +
        uploaderId.hashCode +
        collegeId.hashCode +
        createdAt.hashCode +
        updatedAt.hashCode +
        (metrics == null ? 0 : metrics.hashCode) +
        (uploader == null ? 0 : uploader.hashCode) +
        (college == null ? 0 : college.hashCode) +
        mediaUrls.hashCode;

  factory AdminVideoItem.fromJson(Map<String, dynamic> json) => _$AdminVideoItemFromJson(json);

  Map<String, dynamic> toJson() => _$AdminVideoItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum AdminVideoItemStatusEnum {
@JsonValue(r'DRAFT')
DRAFT(r'DRAFT'),
@JsonValue(r'REVIEW')
REVIEW(r'REVIEW'),
@JsonValue(r'APPROVED')
APPROVED(r'APPROVED'),
@JsonValue(r'PUBLISHED')
PUBLISHED(r'PUBLISHED'),
@JsonValue(r'REJECTED')
REJECTED(r'REJECTED'),
@JsonValue(r'OFFLINE')
OFFLINE(r'OFFLINE');

const AdminVideoItemStatusEnum(this.value);

final String value;

@override
String toString() => value;
}


