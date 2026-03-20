import 'package:etgy_openapi_client/etgy_openapi_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/errors/app_exception.dart';
import '../../../core/network/generated_openapi_provider.dart';

final videoRemoteDataSourceProvider = Provider<VideoRemoteDataSource>((Ref ref) {
  return OpenApiVideoRemoteDataSource(ref.watch(generatedOpenapiClientProvider));
});

abstract class VideoRemoteDataSource {
  Future<List<Video>> fetchPublicVideos({
    String? grade,
    String? subject,
    String sort = 'latest',
    int page = 1,
    int pageSize = 20,
    String? search,
  });
}

class OpenApiVideoRemoteDataSource implements VideoRemoteDataSource {
  OpenApiVideoRemoteDataSource(this._client);

  final EtgyOpenapiClient _client;

  @override
  Future<List<Video>> fetchPublicVideos({
    String? grade,
    String? subject,
    String sort = 'latest',
    int page = 1,
    int pageSize = 20,
    String? search,
  }) async {
    final response = await _client.getVideosApi().apiVideosGet(
          grade: grade,
          subject: subject,
          sort: sort,
          page: page,
          pageSize: pageSize,
          search: search,
        );

    final data = response.data?.data;
    if (data == null) {
      throw const AppException(
        type: AppExceptionType.unknown,
        message: '服务返回为空，请稍后重试',
      );
    }

    return data;
  }
}
