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
        title: '课程视频',
        icon: Icons.smart_display_rounded,
        background: const Color(0xFFE8F4FF),
        accent: const Color(0xFF4AA3FF),
        route: AppRoutes.videos,
      ),
      _HomeEntry(
        title: '直播课堂',
        icon: Icons.live_tv_rounded,
        background: const Color(0xFFFFF0EC),
        accent: const Color(0xFFFF7A59),
        route: AppRoutes.lives,
      ),
      _HomeEntry(
        title: '学习搭子',
        icon: Icons.auto_awesome_rounded,
        background: const Color(0xFFFFF8E6),
        accent: const Color(0xFFF4B400),
        route: AppRoutes.aiTutor,
      ),
      _HomeEntry(
        title: '成长档案',
        icon: Icons.favorite_rounded,
        background: const Color(0xFFECFFF7),
        accent: const Color(0xFF32C48D),
        route: AppRoutes.profile,
      ),
    ];

    return Scaffold(
      body: PlayfulBackground(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(16, 14, 16, 18),
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
                            height: 232,
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
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
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
                            mainAxisExtent: 100,
                          ),
                      itemBuilder: (context, index) {
                        return _HomeEntryCard(item: entries[index]);
                      },
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
  const _HomeEntry({
    required this.title,
    required this.icon,
    required this.background,
    required this.accent,
    required this.route,
  });

  final String title;
  final IconData icon;
  final Color background;
  final Color accent;
  final String route;
}

class _HomeEntryCard extends StatelessWidget {
  const _HomeEntryCard({required this.item});

  final _HomeEntry item;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: InkWell(
        onTap: () => context.push(item.route),
        child: Ink(
          decoration: BoxDecoration(
            color: item.background,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: item.accent.withValues(alpha: 0.18),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(item.icon, size: 22, color: item.accent),
                ),
                const Spacer(),
                Text(item.title, style: theme.textTheme.titleMedium),
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
              padding: const EdgeInsets.fromLTRB(12, 8, 12, 10),
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
