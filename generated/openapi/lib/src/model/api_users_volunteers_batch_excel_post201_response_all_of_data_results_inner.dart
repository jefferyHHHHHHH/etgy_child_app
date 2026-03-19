//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:etgy_openapi_client/src/model/api_users_volunteers_batch_excel_post201_response_all_of_data_results_inner_any_of1.dart';
import 'package:etgy_openapi_client/src/model/api_users_volunteers_batch_excel_post201_response_all_of_data_results_inner_any_of.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_users_volunteers_batch_excel_post201_response_all_of_data_results_inner.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInner {
  /// Returns a new [ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInner] instance.
  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInner({

    required  this.rowNumber,

    required  this.ok,

    required  this.username,

    required  this.userId,

    required  this.message,
  });

          // minimum: 0
  @JsonKey(
    
    name: r'rowNumber',
    required: true,
    includeIfNull: false,
  )


  final int rowNumber;



  @JsonKey(
    
    name: r'ok',
    required: true,
    includeIfNull: false,
  )


  final bool ok;



  @JsonKey(
    
    name: r'username',
    required: true,
    includeIfNull: false,
  )


  final String username;



          // minimum: 0
  @JsonKey(
    
    name: r'userId',
    required: true,
    includeIfNull: false,
  )


  final int userId;



  @JsonKey(
    
    name: r'message',
    required: true,
    includeIfNull: false,
  )


  final String message;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInner &&
      other.rowNumber == rowNumber &&
      other.ok == ok &&
      other.username == username &&
      other.userId == userId &&
      other.message == message;

    @override
    int get hashCode =>
        rowNumber.hashCode +
        ok.hashCode +
        username.hashCode +
        userId.hashCode +
        message.hashCode;

  factory ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInner.fromJson(Map<String, dynamic> json) => _$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerFromJson(json);

  Map<String, dynamic> toJson() => _$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

