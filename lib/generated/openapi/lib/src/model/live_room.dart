//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'live_room.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LiveRoom {
  /// Returns a new [LiveRoom] instance.
  LiveRoom({

    required  this.id,

    required  this.title,

     this.intro,

    required  this.planStartTime,

    required  this.planEndTime,

     this.actualStart,

     this.actualEnd,

    required  this.status,

     this.rejectReason,

     this.reviewedBy,

     this.reviewedAt,

     this.publishedBy,

     this.publishedAt,

     this.offlineBy,

     this.offlineAt,

     this.offlineReason,

     this.pushUrl,

     this.pullUrl,

     this.replayVideoId,

    required  this.anchorId,

    required  this.collegeId,

     this.anchor,

     this.college,

     this.createdAt,

     this.updatedAt,
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
    
    name: r'planStartTime',
    required: true,
    includeIfNull: false,
  )


  final DateTime planStartTime;



  @JsonKey(
    
    name: r'planEndTime',
    required: true,
    includeIfNull: false,
  )


  final DateTime planEndTime;



  @JsonKey(
    
    name: r'actualStart',
    required: false,
    includeIfNull: false,
  )


  final DateTime? actualStart;



  @JsonKey(
    
    name: r'actualEnd',
    required: false,
    includeIfNull: false,
  )


  final DateTime? actualEnd;



  @JsonKey(
    
    name: r'status',
    required: true,
    includeIfNull: false,
  )


  final LiveRoomStatusEnum status;



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
    
    name: r'pushUrl',
    required: false,
    includeIfNull: false,
  )


  final String? pushUrl;



  @JsonKey(
    
    name: r'pullUrl',
    required: false,
    includeIfNull: false,
  )


  final String? pullUrl;



  @JsonKey(
    
    name: r'replayVideoId',
    required: false,
    includeIfNull: false,
  )


  final int? replayVideoId;



  @JsonKey(
    
    name: r'anchorId',
    required: true,
    includeIfNull: false,
  )


  final int anchorId;



  @JsonKey(
    
    name: r'collegeId',
    required: true,
    includeIfNull: false,
  )


  final int collegeId;



  @JsonKey(
    
    name: r'anchor',
    required: false,
    includeIfNull: false,
  )


  final Object? anchor;



  @JsonKey(
    
    name: r'college',
    required: false,
    includeIfNull: false,
  )


  final Object? college;



  @JsonKey(
    
    name: r'createdAt',
    required: false,
    includeIfNull: false,
  )


  final DateTime? createdAt;



  @JsonKey(
    
    name: r'updatedAt',
    required: false,
    includeIfNull: false,
  )


  final DateTime? updatedAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is LiveRoom &&
      other.id == id &&
      other.title == title &&
      other.intro == intro &&
      other.planStartTime == planStartTime &&
      other.planEndTime == planEndTime &&
      other.actualStart == actualStart &&
      other.actualEnd == actualEnd &&
      other.status == status &&
      other.rejectReason == rejectReason &&
      other.reviewedBy == reviewedBy &&
      other.reviewedAt == reviewedAt &&
      other.publishedBy == publishedBy &&
      other.publishedAt == publishedAt &&
      other.offlineBy == offlineBy &&
      other.offlineAt == offlineAt &&
      other.offlineReason == offlineReason &&
      other.pushUrl == pushUrl &&
      other.pullUrl == pullUrl &&
      other.replayVideoId == replayVideoId &&
      other.anchorId == anchorId &&
      other.collegeId == collegeId &&
      other.anchor == anchor &&
      other.college == college &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt;

    @override
    int get hashCode =>
        id.hashCode +
        title.hashCode +
        (intro == null ? 0 : intro.hashCode) +
        planStartTime.hashCode +
        planEndTime.hashCode +
        (actualStart == null ? 0 : actualStart.hashCode) +
        (actualEnd == null ? 0 : actualEnd.hashCode) +
        status.hashCode +
        (rejectReason == null ? 0 : rejectReason.hashCode) +
        (reviewedBy == null ? 0 : reviewedBy.hashCode) +
        (reviewedAt == null ? 0 : reviewedAt.hashCode) +
        (publishedBy == null ? 0 : publishedBy.hashCode) +
        (publishedAt == null ? 0 : publishedAt.hashCode) +
        (offlineBy == null ? 0 : offlineBy.hashCode) +
        (offlineAt == null ? 0 : offlineAt.hashCode) +
        (offlineReason == null ? 0 : offlineReason.hashCode) +
        (pushUrl == null ? 0 : pushUrl.hashCode) +
        (pullUrl == null ? 0 : pullUrl.hashCode) +
        (replayVideoId == null ? 0 : replayVideoId.hashCode) +
        anchorId.hashCode +
        collegeId.hashCode +
        (anchor == null ? 0 : anchor.hashCode) +
        (college == null ? 0 : college.hashCode) +
        createdAt.hashCode +
        updatedAt.hashCode;

  factory LiveRoom.fromJson(Map<String, dynamic> json) => _$LiveRoomFromJson(json);

  Map<String, dynamic> toJson() => _$LiveRoomToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum LiveRoomStatusEnum {
@JsonValue(r'DRAFT')
DRAFT(r'DRAFT'),
@JsonValue(r'REVIEW')
REVIEW(r'REVIEW'),
@JsonValue(r'PASSED')
PASSED(r'PASSED'),
@JsonValue(r'PUBLISHED')
PUBLISHED(r'PUBLISHED'),
@JsonValue(r'REJECTED')
REJECTED(r'REJECTED'),
@JsonValue(r'LIVING')
LIVING(r'LIVING'),
@JsonValue(r'FINISHED')
FINISHED(r'FINISHED'),
@JsonValue(r'OFFLINE')
OFFLINE(r'OFFLINE');

const LiveRoomStatusEnum(this.value);

final String value;

@override
String toString() => value;
}


