// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DictionaryItemCWProxy {
  DictionaryItem value(String value);

  DictionaryItem label(String label);

  DictionaryItem description(String? description);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DictionaryItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DictionaryItem(...).copyWith(id: 12, name: "My name")
  /// ````
  DictionaryItem call({String value, String label, String? description});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfDictionaryItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfDictionaryItem.copyWith.fieldName(...)`
class _$DictionaryItemCWProxyImpl implements _$DictionaryItemCWProxy {
  const _$DictionaryItemCWProxyImpl(this._value);

  final DictionaryItem _value;

  @override
  DictionaryItem value(String value) => this(value: value);

  @override
  DictionaryItem label(String label) => this(label: label);

  @override
  DictionaryItem description(String? description) =>
      this(description: description);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DictionaryItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DictionaryItem(...).copyWith(id: 12, name: "My name")
  /// ````
  DictionaryItem call({
    Object? value = const $CopyWithPlaceholder(),
    Object? label = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
  }) {
    return DictionaryItem(
      value: value == const $CopyWithPlaceholder()
          ? _value.value
          // ignore: cast_nullable_to_non_nullable
          : value as String,
      label: label == const $CopyWithPlaceholder()
          ? _value.label
          // ignore: cast_nullable_to_non_nullable
          : label as String,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
    );
  }
}

extension $DictionaryItemCopyWith on DictionaryItem {
  /// Returns a callable class that can be used as follows: `instanceOfDictionaryItem.copyWith(...)` or like so:`instanceOfDictionaryItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DictionaryItemCWProxy get copyWith => _$DictionaryItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryItem _$DictionaryItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('DictionaryItem', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['value', 'label']);
      final val = DictionaryItem(
        value: $checkedConvert('value', (v) => v as String),
        label: $checkedConvert('label', (v) => v as String),
        description: $checkedConvert('description', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$DictionaryItemToJson(DictionaryItem instance) =>
    <String, dynamic>{
      'value': instance.value,
      'label': instance.label,
      'description': ?instance.description,
    };
