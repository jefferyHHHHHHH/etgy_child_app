import 'package:etgy_openapi_client/etgy_openapi_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'video_remote_data_source.dart';

final videoRepositoryProvider = Provider<VideoRepository>((Ref ref) {
  return VideoRepository(remote: ref.watch(videoRemoteDataSourceProvider));
});

class VideoRepository {
  VideoRepository({required this.remote});

  final VideoRemoteDataSource remote;

  Future<Video> fetchVideoById({required int videoId}) {
    return remote.fetchVideoById(videoId: videoId);
  }

  Future<String?> fetchVideoMediaUrl({required int videoId}) {
    return remote.fetchVideoMediaUrl(videoId: videoId);
  }

  Future<List<Video>> fetchPublicVideos({
    String? grade,
    String? subject,
    String sort = 'latest',
    int page = 1,
    int pageSize = 20,
    String? search,
  }) {
    return remote.fetchPublicVideos(
      grade: grade,
      subject: subject,
      sort: sort,
      page: page,
      pageSize: pageSize,
      search: search,
    );
  }

  Future<List<VideoComment>> fetchComments({
    required int videoId,
    int page = 1,
    int pageSize = 20,
  }) {
    return remote.fetchComments(
      videoId: videoId,
      page: page,
      pageSize: pageSize,
    );
  }

  Future<List<VideoComment>> fetchMyComments({
    int? videoId,
    int page = 1,
    int pageSize = 50,
  }) {
    return remote.fetchMyComments(
      videoId: videoId,
      page: page,
      pageSize: pageSize,
    );
  }

  Future<VideoComment> postComment({
    required int videoId,
    required String content,
  }) {
    return remote.postComment(videoId: videoId, content: content);
  }

  Future<void> toggleLike({required int videoId}) {
    return remote.toggleLike(videoId: videoId);
  }

  Future<void> toggleFavorite({required int videoId}) {
    return remote.toggleFavorite(videoId: videoId);
  }

  Future<void> reportWatch({
    required int videoId,
    required int lastPositionSec,
    required int watchedSeconds,
    required bool completed,
  }) {
    return remote.reportWatch(
      videoId: videoId,
      lastPositionSec: lastPositionSec,
      watchedSeconds: watchedSeconds,
      completed: completed,
    );
  }

  Future<void> deleteComment({required int commentId}) {
    return remote.deleteComment(commentId: commentId);
  }
}
