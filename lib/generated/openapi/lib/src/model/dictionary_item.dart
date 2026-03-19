//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dictionary_item.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DictionaryItem {
  /// Returns a new [DictionaryItem] instance.
  DictionaryItem({

    required  this.value,

    required  this.label,

     this.description,
  });

  @JsonKey(
    
    name: r'value',
    required: true,
    includeIfNull: false,
  )


  final String value;



  @JsonKey(
    
    name: r'label',
    required: true,
    includeIfNull: false,
  )


  final String label;



  @JsonKey(
    
    name: r'description',
    required: false,
    includeIfNull: false,
  )


  final String? description;





    @override
    bool operator ==(Object other) => identical(this, other) || other is DictionaryItem &&
      other.value == value &&
      other.label == label &&
      other.description == description;

    @override
    int get hashCode =>
        value.hashCode +
        label.hashCode +
        description.hashCode;

  factory DictionaryItem.fromJson(Map<String, dynamic> json) => _$DictionaryItemFromJson(json);

  Map<String, dynamic> toJson() => _$DictionaryItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

