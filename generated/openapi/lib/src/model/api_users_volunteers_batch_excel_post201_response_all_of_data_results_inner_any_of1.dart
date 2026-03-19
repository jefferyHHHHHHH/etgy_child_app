//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_users_volunteers_batch_excel_post201_response_all_of_data_results_inner_any_of1.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1 {
  /// Returns a new [ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1] instance.
  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1({

    required  this.rowNumber,

    required  this.ok,

    required  this.username,

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



  @JsonKey(
    
    name: r'message',
    required: true,
    includeIfNull: false,
  )


  final String message;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1 &&
      other.rowNumber == rowNumber &&
      other.ok == ok &&
      other.username == username &&
      other.message == message;

    @override
    int get hashCode =>
        rowNumber.hashCode +
        ok.hashCode +
        username.hashCode +
        message.hashCode;

  factory ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1.fromJson(Map<String, dynamic> json) => _$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1FromJson(json);

  Map<String, dynamic> toJson() => _$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf1ToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

