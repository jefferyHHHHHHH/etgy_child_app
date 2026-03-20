import 'package:etgy_openapi_client/etgy_openapi_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'data/video_repository.dart';

final videoListControllerProvider = AsyncNotifierProvider.autoDispose<VideoListController, List<Video>>(
  VideoListController.new,
);

class VideoListController extends AutoDisposeAsyncNotifier<List<Video>> {
  @override
  Future<List<Video>> build() async {
    return ref.read(videoRepositoryProvider).fetchPublicVideos();
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => ref.read(videoRepositoryProvider).fetchPublicVideos());
  }
}
