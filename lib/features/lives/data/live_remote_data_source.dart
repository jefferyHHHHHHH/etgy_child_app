import 'package:etgy_openapi_client/etgy_openapi_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/errors/app_exception.dart';
import '../../../core/errors/app_exception_mapper.dart';
import '../../../core/network/generated_openapi_provider.dart';

final liveRemoteDataSourceProvider = Provider<LiveRemoteDataSource>((Ref ref) {
  return OpenApiLiveRemoteDataSource(ref.watch(generatedOpenapiClientProvider));
});

abstract class LiveRemoteDataSource {
  Future<List<LiveRoom>> fetchPublicLives({
    required String tab,
    int page = 1,
    int pageSize = 20,
    int? collegeId,
    String? search,
  });

  Future<LiveRoom> fetchLiveDetail({required int id});

  Future<ApiLiveIdAgoraRtcTokenPost200ResponseAllOfData> fetchAgoraRtcToken({
    required int id,
  });
}

class OpenApiLiveRemoteDataSource implements LiveRemoteDataSource {
  OpenApiLiveRemoteDataSource(this._client);

  final EtgyOpenapiClient _client;

  @override
  Future<List<LiveRoom>> fetchPublicLives({
    required String tab,
    int page = 1,
    int pageSize = 20,
    int? collegeId,
    String? search,
  }) async {
    try {
      final trimmedSearch = search?.trim();
      final response = await _client.getLiveApi().apiLiveGet(
            tab: tab,
            page: page,
            pageSize: pageSize,
            collegeId: collegeId,
            search: (trimmedSearch == null || trimmedSearch.isEmpty)
                ? null
                : trimmedSearch,
          );

      final paged = response.data?.data;
      if (paged == null) {
        throw const AppException(
          type: AppExceptionType.unknown,
          message: '服务返回为空，请稍后重试',
        );
      }

      return paged.items;
    } catch (error) {
      throw AppExceptionMapper.from(error);
    }
  }

  @override
  Future<LiveRoom> fetchLiveDetail({required int id}) async {
    try {
      final response =
          await _client.getLiveApi().apiLiveIdGet(id: id.toString());
      final data = response.data?.data;
      if (data == null) {
        throw const AppException(
          type: AppExceptionType.unknown,
          message: '服务返回为空，请稍后重试',
        );
      }

      return data;
    } catch (error) {
      throw AppExceptionMapper.from(error);
    }
  }

  @override
  Future<ApiLiveIdAgoraRtcTokenPost200ResponseAllOfData> fetchAgoraRtcToken({
    required int id,
  }) async {
    try {
      final response = await _client
          .getLiveApi()
          .apiLiveIdAgoraRtcTokenPost(id: id.toString());
      final data = response.data?.data;
      if (data == null) {
        throw const AppException(
          type: AppExceptionType.unknown,
          message: '获取直播凭证失败，请稍后重试',
        );
      }

      return data;
    } catch (error) {
      throw AppExceptionMapper.from(error);
    }
  }
}
