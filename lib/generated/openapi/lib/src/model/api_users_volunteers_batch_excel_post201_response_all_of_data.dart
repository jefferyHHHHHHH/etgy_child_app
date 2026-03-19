//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:etgy_openapi_client/src/model/api_users_volunteers_batch_excel_post201_response_all_of_data_results_inner.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_users_volunteers_batch_excel_post201_response_all_of_data.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiUsersVolunteersBatchExcelPost201ResponseAllOfData {
  /// Returns a new [ApiUsersVolunteersBatchExcelPost201ResponseAllOfData] instance.
  ApiUsersVolunteersBatchExcelPost201ResponseAllOfData({

    required  this.total,

    required  this.success,

    required  this.failed,

    required  this.results,
  });

          // minimum: 0
  @JsonKey(
    
    name: r'total',
    required: true,
    includeIfNull: false,
  )


  final int total;



          // minimum: 0
  @JsonKey(
    
    name: r'success',
    required: true,
    includeIfNull: false,
  )


  final int success;



          // minimum: 0
  @JsonKey(
    
    name: r'failed',
    required: true,
    includeIfNull: false,
  )


  final int failed;



  @JsonKey(
    
    name: r'results',
    required: true,
    includeIfNull: false,
  )


  final List<ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataResultsInner> results;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiUsersVolunteersBatchExcelPost201ResponseAllOfData &&
      other.total == total &&
      other.success == success &&
      other.failed == failed &&
      other.results == results;

    @override
    int get hashCode =>
        total.hashCode +
        success.hashCode +
        failed.hashCode +
        results.hashCode;

  factory ApiUsersVolunteersBatchExcelPost201ResponseAllOfData.fromJson(Map<String, dynamic> json) => _$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataFromJson(json);

  Map<String, dynamic> toJson() => _$ApiUsersVolunteersBatchExcelPost201ResponseAllOfDataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

