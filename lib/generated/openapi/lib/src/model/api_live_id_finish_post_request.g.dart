// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_live_id_finish_post_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiLiveIdFinishPostRequestCWProxy {
  ApiLiveIdFinishPostRequest replayVideoId(int? replayVideoId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiLiveIdFinishPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiLiveIdFinishPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiLiveIdFinishPostRequest call({int? replayVideoId});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiLiveIdFinishPostRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiLiveIdFinishPostRequest.copyWith.fieldName(...)`
class _$ApiLiveIdFinishPostRequestCWProxyImpl
    implements _$ApiLiveIdFinishPostRequestCWProxy {
  const _$ApiLiveIdFinishPostRequestCWProxyImpl(this._value);

  final ApiLiveIdFinishPostRequest _value;

  @override
  ApiLiveIdFinishPostRequest replayVideoId(int? replayVideoId) =>
      this(replayVideoId: replayVideoId);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiLiveIdFinishPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiLiveIdFinishPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiLiveIdFinishPostRequest call({
    Object? replayVideoId = const $CopyWithPlaceholder(),
  }) {
    return ApiLiveIdFinishPostRequest(
      replayVideoId: replayVideoId == const $CopyWithPlaceholder()
          ? _value.replayVideoId
          // ignore: cast_nullable_to_non_nullable
          : replayVideoId as int?,
    );
  }
}

extension $ApiLiveIdFinishPostRequestCopyWith on ApiLiveIdFinishPostRequest {
  /// Returns a callable class that can be used as follows: `instanceOfApiLiveIdFinishPostRequest.copyWith(...)` or like so:`instanceOfApiLiveIdFinishPostRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiLiveIdFinishPostRequestCWProxy get copyWith =>
      _$ApiLiveIdFinishPostRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiLiveIdFinishPostRequest _$ApiLiveIdFinishPostRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiLiveIdFinishPostRequest', json, ($checkedConvert) {
  final val = ApiLiveIdFinishPostRequest(
    replayVideoId: $checkedConvert(
      'replayVideoId',
      (v) => (v as num?)?.toInt(),
    ),
  );
  return val;
});

Map<String, dynamic> _$ApiLiveIdFinishPostRequestToJson(
  ApiLiveIdFinishPostRequest instance,
) => <String, dynamic>{'replayVideoId': ?instance.replayVideoId};
