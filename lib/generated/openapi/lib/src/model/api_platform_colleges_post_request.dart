//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_platform_colleges_post_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiPlatformCollegesPostRequest {
  /// Returns a new [ApiPlatformCollegesPostRequest] instance.
  ApiPlatformCollegesPostRequest({

    required  this.name,

     this.isActive,

     this.sortOrder,
  });

  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



  @JsonKey(
    
    name: r'isActive',
    required: false,
    includeIfNull: false,
  )


  final bool? isActive;



  @JsonKey(
    
    name: r'sortOrder',
    required: false,
    includeIfNull: false,
  )


  final int? sortOrder;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiPlatformCollegesPostRequest &&
      other.name == name &&
      other.isActive == isActive &&
      other.sortOrder == sortOrder;

    @override
    int get hashCode =>
        name.hashCode +
        (isActive == null ? 0 : isActive.hashCode) +
        (sortOrder == null ? 0 : sortOrder.hashCode);

  factory ApiPlatformCollegesPostRequest.fromJson(Map<String, dynamic> json) => _$ApiPlatformCollegesPostRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApiPlatformCollegesPostRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

