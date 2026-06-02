import 'package:etgy_openapi_client/etgy_openapi_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../app/router.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/widgets/playful_background.dart';
import '../../videos/data/video_repository.dart';
import '../../videos/video_controller.dart';
import '../../videos/video_engagement_store.dart';

class FavoritesPage extends ConsumerWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final store = ref.watch(videoEngagementStoreProvider);
    final favorites = store.favoritedIds;
    final videos = ref.watch(videoListControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('收藏'),
        actions: [
          IconButton(
            tooltip: '刷新',
            onPressed: () => ref.read(videoListControllerProvider.notifier).refresh(),
            icon: const Icon(Icons.refresh_rounded),
          ),
        ],
      ),
      body: PlayfulBackground(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(16, 14, 16, 24),
          children: [
            Text('我的收藏', style: theme.textTheme.titleLarge),
            const SizedBox(height: 10),
            if (favorites.isEmpty)
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(14),
                  child: Text('还没有收藏，去学习视频里收藏一个吧！'),
                ),
              )
            else
              videos.when(
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (e, _) => Text(e.toString()),
                data: (items) {
                  final picked = items.where((v) => favorites.contains(v.id)).toList();
                  if (picked.isEmpty) {
                    return const Card(
                      child: Padding(
                        padding: EdgeInsets.all(14),
                        child: Text('暂未找到对应视频（可能不在当前列表页）'),
                      ),
                    );
                  }

                  return Column(
                    children: picked
                        .map(
                          (v) => Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: _FavoriteTile(
                              video: v,
                              onOpen: () => context.push(AppRoutes.videoPlayer, extra: v),
                              onRemove: () async {
                                try {
                                  await ref
                                      .read(videoRepositoryProvider)
                                      .toggleFavorite(videoId: v.id);
                                  await ref
                                      .read(videoEngagementStoreProvider.notifier)
                                      .setFavorited(videoId: v.id, favorited: false);
                                } catch (_) {
                                  if (!context.mounted) return;
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(content: Text('取消收藏失败，请稍后重试')),
                                  );
                                }
                              },
                            ),
                          ),
                        )
                        .toList(growable: false),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}

class _FavoriteTile extends StatelessWidget {
  const _FavoriteTile({
    required this.video,
    required this.onOpen,
    required this.onRemove,
  });

  final Video video;
  final VoidCallback onOpen;
  final Future<void> Function() onRemove;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
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
                tooltip: '取消收藏',
                icon: const Icon(Icons.bookmark_remove_rounded),
                onPressed: () async {
                  await onRemove();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
