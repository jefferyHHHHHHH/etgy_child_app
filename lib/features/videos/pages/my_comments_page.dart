import 'package:etgy_openapi_client/etgy_openapi_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/theme/app_theme.dart';
import '../my_comments_store.dart';
import '../video_controller.dart';

class MyCommentsPage extends ConsumerWidget {
  const MyCommentsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(myCommentsStoreProvider);
    final videosAsync = ref.watch(videoListControllerProvider);

    final videoTitleMap = videosAsync.whenData(
      (list) => {for (final v in list) v.id: v.title},
    );

    return Scaffold(
      appBar: AppBar(title: const Text('我的评论')),
      body: !state.isLoaded
          ? const Center(child: CircularProgressIndicator())
          : state.comments.isEmpty
              ? _EmptyView()
              : ListView.separated(
                  padding: const EdgeInsets.fromLTRB(16, 14, 16, 24),
                  itemCount: state.comments.length,
                  separatorBuilder: (_, _) => const SizedBox(height: 10),
                  itemBuilder: (context, index) {
                    final comment = state.comments[index];
                    final videoTitle = videoTitleMap.valueOrNull?[comment.videoId];
                    return _MyCommentCard(
                      comment: comment,
                      videoTitle: videoTitle,
                    );
                  },
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
  });

  final VideoComment comment;
  final String? videoTitle;

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

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: isRejected
            ? BorderSide(color: AppTheme.coral.withValues(alpha: 0.35), width: 1)
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
              ],
            ),
            const SizedBox(height: 10),

            // ── 评论内容 ──────────────────────────────────────
            Text(
              comment.content,
              style: theme.textTheme.bodyMedium,
            ),

            // ── 审核意见（仅 REJECTED 显示）──────────────────
            if (isRejected && (comment.rejectReason?.isNotEmpty ?? false)) ...[
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
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
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
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
          ],
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
