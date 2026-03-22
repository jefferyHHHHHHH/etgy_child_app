import 'package:etgy_openapi_client/etgy_openapi_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/errors/app_exception.dart';
import '../../../core/network/generated_openapi_provider.dart';

final videoRemoteDataSourceProvider = Provider<VideoRemoteDataSource>((
  Ref ref,
) {
  return OpenApiVideoRemoteDataSource(
    ref.watch(generatedOpenapiClientProvider),
  );
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

  Future<List<VideoComment>> fetchComments({
    required int videoId,
    int page = 1,
    int pageSize = 20,
  });

  Future<VideoComment> postComment({
    required int videoId,
    required String content,
  });

  Future<void> toggleLike({required int videoId});

  Future<void> toggleFavorite({required int videoId});

  Future<void> reportWatch({
    required int videoId,
    required int lastPositionSec,
    required int watchedSeconds,
    required bool completed,
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

  @override
  Future<List<VideoComment>> fetchComments({
    required int videoId,
    int page = 1,
    int pageSize = 20,
  }) async {
    final response = await _client.getVideosApi().apiVideosIdCommentsGet(
      id: videoId.toString(),
      page: page,
      pageSize: pageSize,
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

  @override
  Future<VideoComment> postComment({
    required int videoId,
    required String content,
  }) async {
    final response = await _client.getVideosApi().apiVideosIdCommentsPost(
      id: videoId.toString(),
      apiVideosIdCommentsPostRequest: ApiVideosIdCommentsPostRequest(
        content: content,
      ),
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

  @override
  Future<void> toggleLike({required int videoId}) async {
    await _client.getVideosApi().apiVideosIdLikePost(id: videoId.toString());
  }

  @override
  Future<void> toggleFavorite({required int videoId}) async {
    await _client.getVideosApi().apiVideosIdFavoritePost(
      id: videoId.toString(),
    );
  }

  @override
  Future<void> reportWatch({
    required int videoId,
    required int lastPositionSec,
    required int watchedSeconds,
    required bool completed,
  }) async {
    await _client.getVideosApi().apiVideosIdWatchPost(
      id: videoId.toString(),
      apiVideosIdWatchPostRequest: ApiVideosIdWatchPostRequest(
        lastPositionSec: lastPositionSec,
        watchedSeconds: watchedSeconds,
        completed: completed,
      ),
    );
  }
}
