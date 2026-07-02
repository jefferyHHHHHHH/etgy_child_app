//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:etgy_openapi_client/src/model/admin_video_comment_item.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'admin_video_comment_paged_result.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AdminVideoCommentPagedResult {
  /// Returns a new [AdminVideoCommentPagedResult] instance.
  AdminVideoCommentPagedResult({

    required  this.items,

    required  this.total,

    required  this.page,

    required  this.pageSize,
  });

  @JsonKey(
    
    name: r'items',
    required: true,
    includeIfNull: false,
  )


  final List<AdminVideoCommentItem> items;



          // minimum: 0
  @JsonKey(
    
    name: r'total',
    required: true,
    includeIfNull: false,
  )


  final int total;



          // minimum: 0
  @JsonKey(
    
    name: r'page',
    required: true,
    includeIfNull: false,
  )


  final int page;



          // minimum: 0
  @JsonKey(
    
    name: r'pageSize',
    required: true,
    includeIfNull: false,
  )


  final int pageSize;





    @override
    bool operator ==(Object other) => identical(this, other) || other is AdminVideoCommentPagedResult &&
      other.items == items &&
      other.total == total &&
      other.page == page &&
      other.pageSize == pageSize;

    @override
    int get hashCode =>
        items.hashCode +
        total.hashCode +
        page.hashCode +
        pageSize.hashCode;

  factory AdminVideoCommentPagedResult.fromJson(Map<String, dynamic> json) => _$AdminVideoCommentPagedResultFromJson(json);

  Map<String, dynamic> toJson() => _$AdminVideoCommentPagedResultToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

