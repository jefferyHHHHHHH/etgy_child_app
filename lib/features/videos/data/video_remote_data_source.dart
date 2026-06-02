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
  Future<Video> fetchVideoById({required int videoId});

  Future<String?> fetchVideoMediaUrl({required int videoId});

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
  Future<Video> fetchVideoById({required int videoId}) async {
    final response = await _client.getVideosApi().apiVideosIdGet(
          id: videoId.toString(),
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
  Future<String?> fetchVideoMediaUrl({required int videoId}) async {
    final response = await _client.getVideosApi().apiVideosIdMediaUrlsGet(
          id: videoId.toString(),
        );

    final data = response.data?.data;
    return _extractMediaUrl(data);
  }

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

  String? _extractMediaUrl(Object? data) {
    if (data == null) {
      return null;
    }
    if (data is String) {
      final value = data.trim();
      return value.isEmpty ? null : value;
    }
    if (data is Map) {
      final map = data.map((key, value) => MapEntry(key.toString(), value));
      const preferredKeys = [
        'videoUrl',
        'video_url',
        'url',
        'playUrl',
        'play_url',
        'mediaUrl',
        'media_url',
      ];
      for (final key in preferredKeys) {
        final value = map[key];
        if (value is String && value.trim().isNotEmpty) {
          return value.trim();
        }
      }

      for (final entry in map.entries) {
        if (entry.value is String && (entry.value as String).trim().isNotEmpty) {
          return (entry.value as String).trim();
        }
      }
    }
    return null;
  }
}
