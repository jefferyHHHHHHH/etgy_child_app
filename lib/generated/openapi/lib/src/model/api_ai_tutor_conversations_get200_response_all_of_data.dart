//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:etgy_openapi_client/src/model/api_ai_tutor_conversations_get200_response_all_of_data_items_inner.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_ai_tutor_conversations_get200_response_all_of_data.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiAiTutorConversationsGet200ResponseAllOfData {
  /// Returns a new [ApiAiTutorConversationsGet200ResponseAllOfData] instance.
  ApiAiTutorConversationsGet200ResponseAllOfData({

    required  this.page,

    required  this.pageSize,

    required  this.total,

    required  this.items,
  });

  @JsonKey(
    
    name: r'page',
    required: true,
    includeIfNull: false,
  )


  final int page;



  @JsonKey(
    
    name: r'pageSize',
    required: true,
    includeIfNull: false,
  )


  final int pageSize;



  @JsonKey(
    
    name: r'total',
    required: true,
    includeIfNull: false,
  )


  final int total;



  @JsonKey(
    
    name: r'items',
    required: true,
    includeIfNull: false,
  )


  final List<ApiAiTutorConversationsGet200ResponseAllOfDataItemsInner> items;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiAiTutorConversationsGet200ResponseAllOfData &&
      other.page == page &&
      other.pageSize == pageSize &&
      other.total == total &&
      other.items == items;

    @override
    int get hashCode =>
        page.hashCode +
        pageSize.hashCode +
        total.hashCode +
        items.hashCode;

  factory ApiAiTutorConversationsGet200ResponseAllOfData.fromJson(Map<String, dynamic> json) => _$ApiAiTutorConversationsGet200ResponseAllOfDataFromJson(json);

  Map<String, dynamic> toJson() => _$ApiAiTutorConversationsGet200ResponseAllOfDataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

