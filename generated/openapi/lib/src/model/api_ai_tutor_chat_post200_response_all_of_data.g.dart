// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_ai_tutor_chat_post200_response_all_of_data.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiAiTutorChatPost200ResponseAllOfDataCWProxy {
  ApiAiTutorChatPost200ResponseAllOfData conversationId(int conversationId);

  ApiAiTutorChatPost200ResponseAllOfData risk(
    ApiAiTutorChatPost200ResponseAllOfDataRisk risk,
  );

  ApiAiTutorChatPost200ResponseAllOfData answer(String answer);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAiTutorChatPost200ResponseAllOfData(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAiTutorChatPost200ResponseAllOfData(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAiTutorChatPost200ResponseAllOfData call({
    int conversationId,
    ApiAiTutorChatPost200ResponseAllOfDataRisk risk,
    String answer,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiAiTutorChatPost200ResponseAllOfData.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiAiTutorChatPost200ResponseAllOfData.copyWith.fieldName(...)`
class _$ApiAiTutorChatPost200ResponseAllOfDataCWProxyImpl
    implements _$ApiAiTutorChatPost200ResponseAllOfDataCWProxy {
  const _$ApiAiTutorChatPost200ResponseAllOfDataCWProxyImpl(this._value);

  final ApiAiTutorChatPost200ResponseAllOfData _value;

  @override
  ApiAiTutorChatPost200ResponseAllOfData conversationId(int conversationId) =>
      this(conversationId: conversationId);

  @override
  ApiAiTutorChatPost200ResponseAllOfData risk(
    ApiAiTutorChatPost200ResponseAllOfDataRisk risk,
  ) => this(risk: risk);

  @override
  ApiAiTutorChatPost200ResponseAllOfData answer(String answer) =>
      this(answer: answer);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAiTutorChatPost200ResponseAllOfData(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAiTutorChatPost200ResponseAllOfData(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAiTutorChatPost200ResponseAllOfData call({
    Object? conversationId = const $CopyWithPlaceholder(),
    Object? risk = const $CopyWithPlaceholder(),
    Object? answer = const $CopyWithPlaceholder(),
  }) {
    return ApiAiTutorChatPost200ResponseAllOfData(
      conversationId: conversationId == const $CopyWithPlaceholder()
          ? _value.conversationId
          // ignore: cast_nullable_to_non_nullable
          : conversationId as int,
      risk: risk == const $CopyWithPlaceholder()
          ? _value.risk
          // ignore: cast_nullable_to_non_nullable
          : risk as ApiAiTutorChatPost200ResponseAllOfDataRisk,
      answer: answer == const $CopyWithPlaceholder()
          ? _value.answer
          // ignore: cast_nullable_to_non_nullable
          : answer as String,
    );
  }
}

extension $ApiAiTutorChatPost200ResponseAllOfDataCopyWith
    on ApiAiTutorChatPost200ResponseAllOfData {
  /// Returns a callable class that can be used as follows: `instanceOfApiAiTutorChatPost200ResponseAllOfData.copyWith(...)` or like so:`instanceOfApiAiTutorChatPost200ResponseAllOfData.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiAiTutorChatPost200ResponseAllOfDataCWProxy get copyWith =>
      _$ApiAiTutorChatPost200ResponseAllOfDataCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAiTutorChatPost200ResponseAllOfData
_$ApiAiTutorChatPost200ResponseAllOfDataFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ApiAiTutorChatPost200ResponseAllOfData', json, (
      $checkedConvert,
    ) {
      $checkKeys(
        json,
        requiredKeys: const ['conversationId', 'risk', 'answer'],
      );
      final val = ApiAiTutorChatPost200ResponseAllOfData(
        conversationId: $checkedConvert(
          'conversationId',
          (v) => (v as num).toInt(),
        ),
        risk: $checkedConvert(
          'risk',
          (v) => ApiAiTutorChatPost200ResponseAllOfDataRisk.fromJson(
            v as Map<String, dynamic>,
          ),
        ),
        answer: $checkedConvert('answer', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$ApiAiTutorChatPost200ResponseAllOfDataToJson(
  ApiAiTutorChatPost200ResponseAllOfData instance,
) => <String, dynamic>{
  'conversationId': instance.conversationId,
  'risk': instance.risk.toJson(),
  'answer': instance.answer,
};
