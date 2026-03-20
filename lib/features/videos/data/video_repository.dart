import 'package:etgy_openapi_client/etgy_openapi_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'video_remote_data_source.dart';

final videoRepositoryProvider = Provider<VideoRepository>((Ref ref) {
  return VideoRepository(remote: ref.watch(videoRemoteDataSourceProvider));
});

class VideoRepository {
  VideoRepository({required this.remote});

  final VideoRemoteDataSource remote;

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
}
