import 'package:etgy_openapi_client/etgy_openapi_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../app/router.dart';
import '../../../core/models/user_profile.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/widgets/playful_background.dart';
import '../../auth/auth_controller.dart';
import '../../videos/data/video_repository.dart';
import '../../videos/my_comments_store.dart';
import '../../videos/video_controller.dart';
import '../../videos/video_engagement_store.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final auth = ref.watch(authControllerProvider);
    final profile = auth.user;

    final store = ref.watch(videoEngagementStoreProvider);
    final likedIds = store.likedIds;
    final favoritedIds = store.favoritedIds;

    final videos = ref.watch(videoListControllerProvider);
    final myCommentsCount = ref.watch(
      myCommentsStoreProvider.select((s) => s.comments.length),
    );

    return Scaffold(
      appBar: AppBar(title: const Text('个人资料')),
      body: PlayfulBackground(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(16, 14, 16, 24),
          children: [
            _ProfileHeaderCard(profile: profile),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: _StatCard(
                    title: '点赞',
                    value: likedIds.length,
                    icon: Icons.thumb_up_rounded,
                    color: AppTheme.skyBlue,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _StatCard(
                    title: '收藏',
                    value: favoritedIds.length,
                    icon: Icons.bookmark_rounded,
                    color: AppTheme.coral,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _StatCard(
                    title: '评论',
                    value: myCommentsCount,
                    icon: Icons.chat_bubble_outline_rounded,
                    color: AppTheme.mint,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            _MyCommentsPreviewCard(
              commentCount: myCommentsCount,
              onTap: () => context.push(AppRoutes.myComments),
            ),
            const SizedBox(height: 16),
            Text('我的收藏', style: theme.textTheme.titleLarge),
            const SizedBox(height: 10),
            _VideoSection(
              kind: _SectionKind.favorited,
              ids: favoritedIds,
              videos: videos,
              onOpen: (video) => context.push(AppRoutes.videoPlayer, extra: video),
              onToggle: (video) async {
                try {
                  await ref
                      .read(videoRepositoryProvider)
                      .toggleFavorite(videoId: video.id);
                  await ref
                      .read(videoEngagementStoreProvider.notifier)
                      .setFavorited(videoId: video.id, favorited: false);
                } catch (_) {
                  if (!context.mounted) return;
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('取消收藏失败，请稍后重试')),
                  );
                }
              },
            ),
            const SizedBox(height: 16),
            Text('我的点赞', style: theme.textTheme.titleLarge),
            const SizedBox(height: 10),
            _VideoSection(
              kind: _SectionKind.liked,
              ids: likedIds,
              videos: videos,
              onOpen: (video) => context.push(AppRoutes.videoPlayer, extra: video),
              onToggle: (video) async {
                try {
                  await ref.read(videoRepositoryProvider).toggleLike(videoId: video.id);
                  await ref
                      .read(videoEngagementStoreProvider.notifier)
                      .setLiked(videoId: video.id, liked: false);
                } catch (_) {
                  if (!context.mounted) return;
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('取消点赞失败，请稍后重试')),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfileHeaderCard extends StatelessWidget {
  const _ProfileHeaderCard({required this.profile});

  final UserProfile? profile;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final name = (profile?.name ?? '').trim();

    Widget infoLine(String label, String value) {
      return Row(
        children: [
          SizedBox(
            width: 56,
            child: Text(
              label,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: AppTheme.ink.withValues(alpha: 0.60),
              ),
            ),
          ),
          Expanded(
            child: Text(
              value.isEmpty ? '—' : value,
              style: theme.textTheme.bodyMedium,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      );
    }

    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    color: AppTheme.skyBlue.withValues(alpha: 0.18),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.person_rounded, color: AppTheme.skyBlue),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    name.isEmpty ? '未设置姓名' : name,
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            infoLine('学校', profile?.school ?? ''),
            const SizedBox(height: 6),
            infoLine('年级', profile?.grade ?? ''),
          ],
        ),
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  const _StatCard({
    required this.title,
    required this.value,
    required this.icon,
    required this.color,
  });

  final String title;
  final int value;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
        child: Row(
          children: [
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.18),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: color, size: 20),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: theme.textTheme.bodyMedium),
                  const SizedBox(height: 2),
                  Text(
                    value.toString(),
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum _SectionKind { liked, favorited }

class _VideoSection extends StatelessWidget {
  const _VideoSection({
    required this.kind,
    required this.ids,
    required this.videos,
    required this.onOpen,
    required this.onToggle,
  });

  final _SectionKind kind;
  final Set<int> ids;
  final AsyncValue<List<Video>> videos;
  final void Function(Video video) onOpen;
  final Future<void> Function(Video video) onToggle;

  @override
  Widget build(BuildContext context) {
    if (ids.isEmpty) {
      return const _EmptyHint(text: '暂无内容');
    }

    return videos.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => Text(e.toString()),
      data: (items) {
        final picked = items.where((v) => ids.contains(v.id)).toList();
        if (picked.isEmpty) {
          return const _EmptyHint(text: '暂未找到对应视频（可能不在当前列表页）');
        }

        final show = picked.take(10).toList(growable: false);
        return Column(
          children: show
              .map(
                (v) => Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: _VideoTile(
                    video: v,
                    kind: kind,
                    onOpen: () => onOpen(v),
                    onToggle: () => onToggle(v),
                  ),
                ),
              )
              .toList(growable: false),
        );
      },
    );
  }
}

class _VideoTile extends StatelessWidget {
  const _VideoTile({
    required this.video,
    required this.kind,
    required this.onOpen,
    required this.onToggle,
  });

  final Video video;
  final _SectionKind kind;
  final VoidCallback onOpen;
  final Future<void> Function() onToggle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final trailingIcon = switch (kind) {
      _SectionKind.liked => Icons.thumb_up_off_alt_rounded,
      _SectionKind.favorited => Icons.bookmark_remove_rounded,
    };

    final subtitle = (video.subjectTag ?? video.gradeRange ?? '').toString().trim();

    return Card(
      child: InkWell(
        onTap: onOpen,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 10, 8, 10),
          child: Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: AppTheme.ink.withValues(alpha: 0.05),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const Icon(Icons.smart_display_rounded),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      video.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleMedium,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle.isEmpty ? '—' : subtitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: AppTheme.ink.withValues(alpha: 0.60),
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                tooltip: '移除',
                icon: Icon(trailingIcon),
                onPressed: () async {
                  await onToggle();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _EmptyHint extends StatelessWidget {
  const _EmptyHint({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14, 14, 14, 14),
        child: Text(text),
      ),
    );
  }
}

class _MyCommentsPreviewCard extends StatelessWidget {
  const _MyCommentsPreviewCard({
    required this.commentCount,
    required this.onTap,
  });

  final int commentCount;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(14, 12, 12, 12),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: AppTheme.mint.withValues(alpha: 0.18),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.chat_bubble_outline_rounded,
                  color: AppTheme.mint,
                  size: 20,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('我的评论', style: theme.textTheme.titleMedium),
                    const SizedBox(height: 2),
                    Text(
                      commentCount == 0 ? '还没有评论，快去发表吧～' : '共 $commentCount 条评论',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: AppTheme.ink.withValues(alpha: 0.55),
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(
                Icons.chevron_right_rounded,
                color: AppTheme.ink,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
