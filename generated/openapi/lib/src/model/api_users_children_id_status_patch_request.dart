//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_users_children_id_status_patch_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiUsersChildrenIdStatusPatchRequest {
  /// Returns a new [ApiUsersChildrenIdStatusPatchRequest] instance.
  ApiUsersChildrenIdStatusPatchRequest({

    required  this.status,
  });

  @JsonKey(
    
    name: r'status',
    required: true,
    includeIfNull: false,
  )


  final ApiUsersChildrenIdStatusPatchRequestStatusEnum status;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiUsersChildrenIdStatusPatchRequest &&
      other.status == status;

    @override
    int get hashCode =>
        status.hashCode;

  factory ApiUsersChildrenIdStatusPatchRequest.fromJson(Map<String, dynamic> json) => _$ApiUsersChildrenIdStatusPatchRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApiUsersChildrenIdStatusPatchRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum ApiUsersChildrenIdStatusPatchRequestStatusEnum {
@JsonValue(r'ACTIVE')
ACTIVE(r'ACTIVE'),
@JsonValue(r'INACTIVE')
INACTIVE(r'INACTIVE'),
@JsonValue(r'SUSPENDED')
SUSPENDED(r'SUSPENDED');

const ApiUsersChildrenIdStatusPatchRequestStatusEnum(this.value);

final String value;

@override
String toString() => value;
}


