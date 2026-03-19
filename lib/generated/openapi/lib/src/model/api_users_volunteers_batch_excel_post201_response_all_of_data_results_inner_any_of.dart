//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_users_volunteers_batch_excel_post201_response_all_of_data_results_inner_any_of.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf {
  /// Returns a new [ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf] instance.
  ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf({

    required  this.rowNumber,

    required  this.ok,

    required  this.username,

    required  this.userId,
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





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf &&
      other.rowNumber == rowNumber &&
      other.ok == ok &&
      other.username == username &&
      other.userId == userId;

    @override
    int get hashCode =>
        rowNumber.hashCode +
        ok.hashCode +
        username.hashCode +
        userId.hashCode;

  factory ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOf.fromJson(Map<String, dynamic> json) => _$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOfFromJson(json);

  Map<String, dynamic> toJson() => _$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInnerAnyOfToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

