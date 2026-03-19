//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_live_post_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiLivePostRequest {
  /// Returns a new [ApiLivePostRequest] instance.
  ApiLivePostRequest({

    required  this.title,

     this.intro,

    required  this.planStartTime,

    required  this.planEndTime,
  });

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


  final String planStartTime;



  @JsonKey(
    
    name: r'planEndTime',
    required: true,
    includeIfNull: false,
  )


  final String planEndTime;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiLivePostRequest &&
      other.title == title &&
      other.intro == intro &&
      other.planStartTime == planStartTime &&
      other.planEndTime == planEndTime;

    @override
    int get hashCode =>
        title.hashCode +
        intro.hashCode +
        planStartTime.hashCode +
        planEndTime.hashCode;

  factory ApiLivePostRequest.fromJson(Map<String, dynamic> json) => _$ApiLivePostRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApiLivePostRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

