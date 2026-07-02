import 'package:etgy_openapi_client/etgy_openapi_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/errors/app_exception_mapper.dart';
import '../../../core/theme/app_theme.dart';
import '../data/video_repository.dart';
import '../my_comments_store.dart';
import '../video_controller.dart';
import '../widgets/comment_delete_actions.dart';
import '../widgets/comment_delete_dialog.dart';
import '../widgets/comment_resubmit_dialog.dart';

class MyCommentsPage extends ConsumerWidget {
  const MyCommentsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(myCommentsStoreProvider);
    final videosAsync = ref.watch(videoListControllerProvider);

    final videoTitleMap = videosAsync.whenData(
      (list) => {for (final v in list) v.id: v.title},
    );

    Future<void> onRefresh() =>
        ref.read(myCommentsStoreProvider.notifier).refreshFromServer();

    return Scaffold(
      appBar: AppBar(
        title: const Text('我的评论'),
        actions: [
          IconButton(
            onPressed: state.isRefreshing ? null : onRefresh,
            icon: state.isRefreshing
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.refresh_rounded),
          ),
        ],
      ),
      body: !state.isLoaded
          ? const Center(child: CircularProgressIndicator())
          : RefreshIndicator(
              onRefresh: onRefresh,
              child: state.comments.isEmpty
                  ? ListView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      children: [const SizedBox(height: 120), _EmptyView()],
                    )
                  : ListView.separated(
                      physics: const AlwaysScrollableScrollPhysics(),
                      padding: const EdgeInsets.fromLTRB(16, 14, 16, 24),
                      itemCount: state.comments.length,
                      separatorBuilder: (_, _) => const SizedBox(height: 10),
                      itemBuilder: (context, index) {
                        final comment = state.comments[index];
                        final videoTitle =
                            videoTitleMap.valueOrNull?[comment.videoId];
                        return _MyCommentCard(
                          comment: comment,
                          videoTitle: videoTitle,
                          onResubmit: () async {
                            final content = await showCommentResubmitDialog(
                              context,
                              initialContent: comment.content,
                            );
                            if (content == null || !context.mounted) return;

                            try {
                              final newComment = await ref
                                  .read(videoRepositoryProvider)
                                  .postComment(
                                    videoId: comment.videoId,
                                    content: content,
                                  );
                              await ref
                                  .read(myCommentsStoreProvider.notifier)
                                  .addComment(newComment);
                              await ref
                                  .read(myCommentsStoreProvider.notifier)
                                  .removeComment(comment.id);

                              try {
                                await ref
                                    .read(videoRepositoryProvider)
                                    .deleteComment(commentId: comment.id);
                              } catch (_) {}

                              if (!context.mounted) return;
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    _commentSubmissionMessage(newComment),
                                  ),
                                  duration: const Duration(seconds: 3),
                                ),
                              );
                            } catch (error) {
                              if (!context.mounted) return;
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    AppExceptionMapper.from(error).message,
                                  ),
                                ),
                              );
                            }
                          },
                          onDelete: () async {
                            final confirmed = await showCommentDeleteDialog(
                              context,
                            );
                            if (!confirmed || !context.mounted) return;

                            try {
                              await ref
                                  .read(videoRepositoryProvider)
                                  .deleteComment(commentId: comment.id);
                              await ref
                                  .read(myCommentsStoreProvider.notifier)
                                  .removeComment(comment.id);
                              if (!context.mounted) return;
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('评论已删除')),
                              );
                            } catch (error) {
                              if (!context.mounted) return;
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    AppExceptionMapper.from(error).message,
                                  ),
                                ),
                              );
                            }
                          },
                        );
                      },
                    ),
            ),
    );
  }
}

class _EmptyView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.chat_bubble_outline_rounded,
            size: 64,
            color: AppTheme.ink.withValues(alpha: 0.18),
          ),
          const SizedBox(height: 16),
          Text(
            '还没有发表过评论',
            style: theme.textTheme.titleMedium?.copyWith(
              color: AppTheme.ink.withValues(alpha: 0.40),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            '去视频下面说点什么吧～',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: AppTheme.ink.withValues(alpha: 0.30),
            ),
          ),
        ],
      ),
    );
  }
}

class _MyCommentCard extends StatelessWidget {
  const _MyCommentCard({
    required this.comment,
    required this.videoTitle,
    required this.onResubmit,
    required this.onDelete,
  });

  final VideoComment comment;
  final String? videoTitle;
  final Future<void> Function() onResubmit;
  final Future<void> Function() onDelete;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final status = comment.status;
    final isRejected = status == VideoCommentStatusEnum.REJECTED;
    final isPending = status == VideoCommentStatusEnum.PENDING;

    String statusText() {
      return switch (status) {
        VideoCommentStatusEnum.PENDING => '待审核',
        VideoCommentStatusEnum.APPROVED => '已通过',
        VideoCommentStatusEnum.REJECTED => '未通过',
      };
    }

    Color statusColor() {
      return switch (status) {
        VideoCommentStatusEnum.PENDING => AppTheme.banana,
        VideoCommentStatusEnum.APPROVED => AppTheme.mint,
        VideoCommentStatusEnum.REJECTED => AppTheme.coral,
      };
    }

    IconData statusIcon() {
      return switch (status) {
        VideoCommentStatusEnum.PENDING => Icons.hourglass_top_rounded,
        VideoCommentStatusEnum.APPROVED => Icons.check_circle_outline_rounded,
        VideoCommentStatusEnum.REJECTED => Icons.cancel_outlined,
      };
    }

    return CommentDeleteGestureWrapper(
      enabled: true,
      onDelete: onDelete,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: isRejected
              ? BorderSide(
                  color: AppTheme.coral.withValues(alpha: 0.35),
                  width: 1,
                )
              : BorderSide.none,
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ── 视频标题 ──────────────────────────────────────
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.smart_display_rounded,
                    size: 16,
                    color: AppTheme.ink.withValues(alpha: 0.45),
                  ),
                  const SizedBox(width: 6),
                  Expanded(
                    child: Text(
                      videoTitle != null
                          ? videoTitle!
                          : '视频 #${comment.videoId}',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: AppTheme.ink.withValues(alpha: 0.55),
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  CommentDeleteActions(onDelete: onDelete),
                ],
              ),
              const SizedBox(height: 10),

              // ── 评论内容 ──────────────────────────────────────
              Text(comment.content, style: theme.textTheme.bodyMedium),

              // ── 审核意见（仅 REJECTED 显示）──────────────────
              if (isRejected &&
                  (comment.rejectReason?.isNotEmpty ?? false)) ...[
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: AppTheme.coral.withValues(alpha: 0.08),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.info_outline_rounded,
                        size: 14,
                        color: AppTheme.coral.withValues(alpha: 0.80),
                      ),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Text(
                          '审核意见：${comment.rejectReason}',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: AppTheme.coral.withValues(alpha: 0.85),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],

              const SizedBox(height: 10),

              // ── 底部：时间 + 状态标签 ─────────────────────────
              Row(
                children: [
                  Icon(
                    Icons.access_time_rounded,
                    size: 13,
                    color: AppTheme.ink.withValues(alpha: 0.40),
                  ),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      _formatDateTime(comment.createdAt),
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: AppTheme.ink.withValues(alpha: 0.45),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: statusColor().withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(99),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(statusIcon(), size: 13, color: statusColor()),
                        const SizedBox(width: 4),
                        Text(
                          statusText(),
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: statusColor(),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              if (isPending) ...[
                const SizedBox(height: 6),
                Text(
                  '你的评论已提交，正在等待审核，审核通过后将对所有人可见',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: AppTheme.ink.withValues(alpha: 0.38),
                  ),
                ),
              ],
              if (isRejected) ...[
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: FilledButton.icon(
                    onPressed: onResubmit,
                    icon: const Icon(Icons.edit_note_rounded, size: 18),
                    label: const Text('重新提交'),
                    style: FilledButton.styleFrom(
                      minimumSize: const Size(0, 38),
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

String _formatDateTime(DateTime dt) {
  final local = dt.toLocal();
  final mm = local.month.toString().padLeft(2, '0');
  final dd = local.day.toString().padLeft(2, '0');
  final hh = local.hour.toString().padLeft(2, '0');
  final mi = local.minute.toString().padLeft(2, '0');
  return '$mm-$dd $hh:$mi';
}

String _commentSubmissionMessage(VideoComment comment) {
  return switch (comment.status) {
    VideoCommentStatusEnum.APPROVED => '评论已重新发布 ✓',
    VideoCommentStatusEnum.REJECTED =>
      comment.rejectReason?.isNotEmpty == true
          ? '评论仍未通过：${comment.rejectReason}'
          : '评论仍未通过审核',
    VideoCommentStatusEnum.PENDING => '评论已重新提交，正在审核中 ✓',
  };
}
