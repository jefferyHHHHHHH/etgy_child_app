import 'package:etgy_openapi_client/etgy_openapi_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'data/video_repository.dart';

final videoCommentsControllerProvider = AsyncNotifierProvider.autoDispose
    .family<VideoCommentsController, List<VideoComment>, int>(
  VideoCommentsController.new,
);

class VideoCommentsController extends AutoDisposeFamilyAsyncNotifier<List<VideoComment>, int> {
  static const int _pageSize = 20;

  @override
  Future<List<VideoComment>> build(int arg) async {
    return ref.read(videoRepositoryProvider).fetchComments(
          videoId: arg,
          page: 1,
          pageSize: _pageSize,
        );
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() {
      return ref.read(videoRepositoryProvider).fetchComments(
            videoId: arg,
            page: 1,
            pageSize: _pageSize,
          );
    });
  }

  Future<void> post(String content) async {
    final trimmed = content.trim();
    if (trimmed.isEmpty) return;

    final comment = await ref.read(videoRepositoryProvider).postComment(
          videoId: arg,
          content: trimmed,
        );

    final current = state.valueOrNull;
    if (current == null) {
      state = AsyncData([comment]);
      return;
    }

    state = AsyncData([comment, ...current]);
  }
}
