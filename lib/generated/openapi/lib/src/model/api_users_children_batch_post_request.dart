//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:etgy_openapi_client/src/model/api_users_children_post_request.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_users_children_batch_post_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiUsersChildrenBatchPostRequest {
  /// Returns a new [ApiUsersChildrenBatchPostRequest] instance.
  ApiUsersChildrenBatchPostRequest({

    required  this.items,
  });

  @JsonKey(
    
    name: r'items',
    required: true,
    includeIfNull: false,
  )


  final List<ApiUsersChildrenPostRequest> items;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiUsersChildrenBatchPostRequest &&
      other.items == items;

    @override
    int get hashCode =>
        items.hashCode;

  factory ApiUsersChildrenBatchPostRequest.fromJson(Map<String, dynamic> json) => _$ApiUsersChildrenBatchPostRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApiUsersChildrenBatchPostRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

