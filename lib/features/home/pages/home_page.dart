import 'package:etgy_openapi_client/etgy_openapi_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../app/router.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/widgets/playful_background.dart';
import '../../videos/video_controller.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final videos = ref.watch(videoListControllerProvider);

    final entries = <_HomeEntry>[
      _HomeEntry(
        '课程视频',
        Icons.smart_display_rounded,
        AppTheme.skyBlue,
        AppRoutes.videos,
      ),
      _HomeEntry(
        '直播课堂',
        Icons.live_tv_rounded,
        AppTheme.coral,
        AppRoutes.lives,
      ),
      _HomeEntry(
        'AI 学习搭子',
        Icons.auto_awesome_rounded,
        AppTheme.banana,
        AppRoutes.aiTutor,
      ),
      _HomeEntry(
        '成长档案',
        Icons.favorite_rounded,
        AppTheme.mint,
        AppRoutes.profile,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('益路同行'),
        actions: [
          IconButton(
            onPressed: () => context.push(AppRoutes.notifications),
            icon: const Icon(Icons.notifications_none_rounded),
          ),
          IconButton(
            onPressed: () =>
                ref.read(videoListControllerProvider.notifier).refresh(),
            icon: const Icon(Icons.refresh_rounded),
          ),
        ],
      ),
      body: PlayfulBackground(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(16, 14, 16, 16),
              sliver: SliverToBoxAdapter(
                child: _HeroCard(
                  title: '今天也超棒',
                  subtitle: '选择一个冒险，开始你的学习旅程吧！',
                  onPrimaryTap: () => context.push(AppRoutes.videos),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 18),
              sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('快速入口', style: theme.textTheme.titleLarge),
                    const SizedBox(height: 12),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: entries.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 12,
                            crossAxisSpacing: 12,
                            childAspectRatio: 1.06,
                          ),
                      itemBuilder: (context, index) {
                        return _HomeEntryCard(item: entries[index]);
                      },
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
              sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            '推荐学习',
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        TextButton(
                          onPressed: () => context.push(AppRoutes.videos),
                          child: const Text('查看全部'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 250),
                      child: videos.when(
                        loading: () => const Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Center(child: CircularProgressIndicator()),
                        ),
                        error: (e, _) => Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(e.toString()),
                        ),
                        data: (items) {
                          final show = items.take(6).toList(growable: false);
                          if (show.isEmpty) {
                            return const Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Text('暂无推荐内容'),
                            );
                          }

                          return SizedBox(
                            height: 210,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemCount: show.length,
                              separatorBuilder: (context, index) =>
                                  const SizedBox(width: 12),
                              itemBuilder: (context, index) {
                                final video = show[index];
                                return SizedBox(
                                  width: 260,
                                  child: _HomeVideoCard(
                                    video: video,
                                    onTap: () => context.push(
                                      AppRoutes.videoPlayer,
                                      extra: video,
                                    ),
                                  ),
                                );
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _HomeEntry {
  const _HomeEntry(this.title, this.icon, this.color, this.route);

  final String title;
  final IconData icon;
  final Color color;
  final String route;
}

class _HeroCard extends StatelessWidget {
  const _HeroCard({
    required this.title,
    required this.subtitle,
    required this.onPrimaryTap,
  });

  final String title;
  final String subtitle;
  final VoidCallback onPrimaryTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      clipBehavior: Clip.antiAlias,
      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppTheme.skyBlue.withValues(alpha: 0.22),
              AppTheme.mint.withValues(alpha: 0.18),
              Colors.white,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: theme.textTheme.headlineMedium),
                    const SizedBox(height: 6),
                    Text(subtitle, style: theme.textTheme.bodyMedium),
                    const SizedBox(height: 12),
                    FilledButton(
                      onPressed: onPrimaryTap,
                      child: const Text('开始学习'),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              Container(
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                ),
                child: const Icon(
                  Icons.auto_awesome_rounded,
                  color: AppTheme.coral,
                  size: 34,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _HomeEntryCard extends StatelessWidget {
  const _HomeEntryCard({required this.item});

  final _HomeEntry item;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () => context.push(item.route),
        child: Ink(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.white, item.color.withValues(alpha: 0.10)],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    color: item.color.withValues(alpha: 0.22),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(item.icon, color: item.color),
                ),
                const Spacer(),
                Text(item.title, style: theme.textTheme.titleMedium),
                const SizedBox(height: 4),
                Text('点击进入', style: theme.textTheme.bodyMedium),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _HomeVideoCard extends StatelessWidget {
  const _HomeVideoCard({required this.video, required this.onTap});

  final Video video;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cover = _tryParseHttpUrl(video.coverUrl);

    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: cover == null
                  ? const _HomeCoverPlaceholder()
                  : Image.network(
                      cover.toString(),
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) =>
                          const _HomeCoverPlaceholder(),
                    ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 10, 12, 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    video.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleMedium,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    (video.subjectTag ?? video.gradeRange ?? '').toString(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium,
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

class _HomeCoverPlaceholder extends StatelessWidget {
  const _HomeCoverPlaceholder();

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppTheme.skyBlue.withValues(alpha: 0.20),
            AppTheme.mint.withValues(alpha: 0.16),
            Colors.white,
          ],
        ),
      ),
      child: const Center(
        child: Icon(
          Icons.smart_display_rounded,
          size: 54,
          color: AppTheme.skyBlue,
        ),
      ),
    );
  }
}

Uri? _tryParseHttpUrl(String? value) {
  if (value == null || value.trim().isEmpty) return null;
  final uri = Uri.tryParse(value.trim());
  if (uri == null) return null;
  if (!uri.hasScheme) return null;
  if (!uri.isScheme('http') && !uri.isScheme('https')) return null;
  return uri;
}
