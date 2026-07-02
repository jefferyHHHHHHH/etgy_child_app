import 'package:etgy_openapi_client/etgy_openapi_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'data/video_repository.dart';
import 'my_comments_store.dart';

final videoCommentsControllerProvider = AsyncNotifierProvider.autoDispose
    .family<VideoCommentsController, List<VideoComment>, int>(
      VideoCommentsController.new,
    );

class VideoCommentsController
    extends AutoDisposeFamilyAsyncNotifier<List<VideoComment>, int> {
  static const int _pageSize = 20;

  @override
  Future<List<VideoComment>> build(int arg) async {
    await ref.read(myCommentsStoreProvider.notifier).refreshForVideo(arg);

    final items = await ref
        .read(videoRepositoryProvider)
        .fetchComments(videoId: arg, page: 1, pageSize: _pageSize);
    await _syncMyCommentStatuses(items);
    return items;
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await ref.read(myCommentsStoreProvider.notifier).refreshForVideo(arg);

      final items = await ref
          .read(videoRepositoryProvider)
          .fetchComments(videoId: arg, page: 1, pageSize: _pageSize);
      await _syncMyCommentStatuses(items);
      return items;
    });
  }

  Future<void> _syncMyCommentStatuses(List<VideoComment> serverComments) async {
    final store = ref.read(myCommentsStoreProvider.notifier);
    for (final comment in serverComments) {
      if (store.hasComment(comment.id)) {
        await store.upsertComment(comment);
      }
    }
  }

  Future<VideoComment> post(String content) async {
    final trimmed = content.trim();

    final comment = await ref
        .read(videoRepositoryProvider)
        .postComment(videoId: arg, content: trimmed);

    await ref.read(myCommentsStoreProvider.notifier).addComment(comment);

    // 低风险自动放行的评论会立即出现在公开区，刷新列表。
    if (comment.status == VideoCommentStatusEnum.APPROVED) {
      await refresh();
    }

    return comment;
  }

  Future<VideoComment> resubmitRejected({
    required VideoComment original,
    required String content,
  }) async {
    final comment = await post(content);
    await ref.read(myCommentsStoreProvider.notifier).removeComment(original.id);

    // 后端当前没有“编辑后重审”接口；新评论提交成功后尽量删除旧的未通过记录。
    try {
      await ref
          .read(videoRepositoryProvider)
          .deleteComment(commentId: original.id);
    } catch (_) {}

    return comment;
  }

  Future<void> delete(int commentId) async {
    await ref.read(videoRepositoryProvider).deleteComment(commentId: commentId);
    await ref.read(myCommentsStoreProvider.notifier).removeComment(commentId);
    await refresh();
  }
}
