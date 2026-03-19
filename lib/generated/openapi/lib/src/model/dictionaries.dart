//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:etgy_openapi_client/src/model/dictionary_item.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dictionaries.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Dictionaries {
  /// Returns a new [Dictionaries] instance.
  Dictionaries({

    required  this.userRole,

    required  this.subjects,

    required  this.gradeRanges,

    required  this.userStatus,

    required  this.volunteerStatus,

    required  this.gender,

    required  this.videoStatus,

    required  this.liveStatus,

    required  this.auditAction,

    required  this.commentStatus,

    required  this.liveMessageType,
  });

      /// 登录/鉴权角色字典
  @JsonKey(
    
    name: r'userRole',
    required: true,
    includeIfNull: false,
  )


  final List<DictionaryItem> userRole;



      /// 学科字典（用于内容标签/筛选）
  @JsonKey(
    
    name: r'subjects',
    required: true,
    includeIfNull: false,
  )


  final List<DictionaryItem> subjects;



      /// 年级范围字典（用于内容标签/筛选）
  @JsonKey(
    
    name: r'gradeRanges',
    required: true,
    includeIfNull: false,
  )


  final List<DictionaryItem> gradeRanges;



  @JsonKey(
    
    name: r'userStatus',
    required: true,
    includeIfNull: false,
  )


  final List<DictionaryItem> userStatus;



  @JsonKey(
    
    name: r'volunteerStatus',
    required: true,
    includeIfNull: false,
  )


  final List<DictionaryItem> volunteerStatus;



  @JsonKey(
    
    name: r'gender',
    required: true,
    includeIfNull: false,
  )


  final List<DictionaryItem> gender;



  @JsonKey(
    
    name: r'videoStatus',
    required: true,
    includeIfNull: false,
  )


  final List<DictionaryItem> videoStatus;



  @JsonKey(
    
    name: r'liveStatus',
    required: true,
    includeIfNull: false,
  )


  final List<DictionaryItem> liveStatus;



  @JsonKey(
    
    name: r'auditAction',
    required: true,
    includeIfNull: false,
  )


  final List<DictionaryItem> auditAction;



  @JsonKey(
    
    name: r'commentStatus',
    required: true,
    includeIfNull: false,
  )


  final List<DictionaryItem> commentStatus;



  @JsonKey(
    
    name: r'liveMessageType',
    required: true,
    includeIfNull: false,
  )


  final List<DictionaryItem> liveMessageType;





    @override
    bool operator ==(Object other) => identical(this, other) || other is Dictionaries &&
      other.userRole == userRole &&
      other.subjects == subjects &&
      other.gradeRanges == gradeRanges &&
      other.userStatus == userStatus &&
      other.volunteerStatus == volunteerStatus &&
      other.gender == gender &&
      other.videoStatus == videoStatus &&
      other.liveStatus == liveStatus &&
      other.auditAction == auditAction &&
      other.commentStatus == commentStatus &&
      other.liveMessageType == liveMessageType;

    @override
    int get hashCode =>
        userRole.hashCode +
        subjects.hashCode +
        gradeRanges.hashCode +
        userStatus.hashCode +
        volunteerStatus.hashCode +
        gender.hashCode +
        videoStatus.hashCode +
        liveStatus.hashCode +
        auditAction.hashCode +
        commentStatus.hashCode +
        liveMessageType.hashCode;

  factory Dictionaries.fromJson(Map<String, dynamic> json) => _$DictionariesFromJson(json);

  Map<String, dynamic> toJson() => _$DictionariesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

