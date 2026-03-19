//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_users_volunteers_id_status_patch_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiUsersVolunteersIdStatusPatchRequest {
  /// Returns a new [ApiUsersVolunteersIdStatusPatchRequest] instance.
  ApiUsersVolunteersIdStatusPatchRequest({

    required  this.status,
  });

  @JsonKey(
    
    name: r'status',
    required: true,
    includeIfNull: false,
  )


  final ApiUsersVolunteersIdStatusPatchRequestStatusEnum status;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiUsersVolunteersIdStatusPatchRequest &&
      other.status == status;

    @override
    int get hashCode =>
        status.hashCode;

  factory ApiUsersVolunteersIdStatusPatchRequest.fromJson(Map<String, dynamic> json) => _$ApiUsersVolunteersIdStatusPatchRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApiUsersVolunteersIdStatusPatchRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum ApiUsersVolunteersIdStatusPatchRequestStatusEnum {
@JsonValue(r'IN_SCHOOL')
IN_SCHOOL(r'IN_SCHOOL'),
@JsonValue(r'GRADUATED')
GRADUATED(r'GRADUATED'),
@JsonValue(r'SUSPENDED')
SUSPENDED(r'SUSPENDED');

const ApiUsersVolunteersIdStatusPatchRequestStatusEnum(this.value);

final String value;

@override
String toString() => value;
}


