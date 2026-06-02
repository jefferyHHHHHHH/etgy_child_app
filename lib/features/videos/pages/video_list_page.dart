import 'package:etgy_openapi_client/etgy_openapi_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../app/router.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/widgets/playful_background.dart';
import '../video_controller.dart';

class VideoListPage extends ConsumerStatefulWidget {
  const VideoListPage({super.key});

  @override
  ConsumerState<VideoListPage> createState() => _VideoListPageState();
}

class _VideoListPageState extends ConsumerState<VideoListPage> {
  int _selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final categories = ['推荐', '专注力', '情绪管理', '运动游戏', '亲子互动'];
    final videos = ref.watch(videoListControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('学习视频'),
        actions: [
          IconButton(
            onPressed: () =>
                ref.read(videoListControllerProvider.notifier).refresh(),
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: PlayfulBackground(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('今天看什么？', style: theme.textTheme.titleLarge),
              const SizedBox(height: 4),
              Text(
                '精选内容帮你轻松成长，每天一点点进步。',
                style: theme.textTheme.bodyMedium,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 40,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final isSelected = index == _selectedCategoryIndex;
                    return ChoiceChip(
                      selected: isSelected,
                      onSelected: (_) {
                        setState(() {
                          _selectedCategoryIndex = index;
                        });
                      },
                      label: Text(categories[index]),
                    );
                  },
                  separatorBuilder: (_, _) => const SizedBox(width: 8),
                  itemCount: categories.length,
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: videos.when(
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (error, _) => Center(child: Text(error.toString())),
                  data: (items) {
                    if (items.isEmpty) {
                      return const Center(child: Text('暂无视频'));
                    }

                    return ListView.separated(
                      itemCount: items.length,
                      separatorBuilder: (_, __) => const SizedBox(height: 12),
                      itemBuilder: (context, index) {
                        final video = items[index];
                        return _VideoCard(
                          video: video,
                          onTap: () => context.push(
                            AppRoutes.videoPlayer,
                            extra: video,
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _VideoCard extends StatelessWidget {
  const _VideoCard({required this.video, required this.onTap});

  final Video video;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final coverUrl = _tryParseHttpUrl(video.coverUrl);
    final durationText = _formatDuration(video.duration);

    final subjectTag = video.subjectTag?.trim();
    final intro = video.intro?.trim();

    final tags = <String>[
      if (subjectTag != null && subjectTag.isNotEmpty) subjectTag,
      // ignore: use_null_aware_elements
      if (durationText != null) durationText,
    ];

    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: SizedBox(
                  width: 120,
                  height: 76,
                  child: coverUrl == null
                      ? _CoverPlaceholder(title: video.title)
                      : Image.network(
                          coverUrl.toString(),
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) =>
                              _CoverPlaceholder(title: video.title),
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return const Center(
                              child: CircularProgressIndicator(strokeWidth: 2),
                            );
                          },
                        ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      video.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleMedium,
                    ),
                    if (intro != null && intro.isNotEmpty) ...[
                      const SizedBox(height: 6),
                      Text(
                        intro,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                    if (tags.isNotEmpty) ...[
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        runSpacing: 6,
                        children: [
                          for (final tag in tags) _MetaPill(text: tag),
                        ],
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CoverPlaceholder extends StatelessWidget {
  const _CoverPlaceholder({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

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
      child: Stack(
        children: [
          const Positioned.fill(
            child: Center(
              child: Icon(
                Icons.smart_display_rounded,
                size: 54,
                color: AppTheme.skyBlue,
              ),
            ),
          ),
          Positioned(
            left: 12,
            right: 12,
            bottom: 12,
            child: Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}

class _MetaPill extends StatelessWidget {
  const _MetaPill({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(999),
        border: Border.all(color: AppTheme.ink.withValues(alpha: 0.08)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        child: Text(text, style: theme.textTheme.bodyMedium),
      ),
    );
  }
}

Uri? _tryParseHttpUrl(String? value) {
  if (!_isNotBlank(value)) return null;
  final uri = Uri.tryParse(value!.trim());
  if (uri == null) return null;
  if (!uri.hasScheme) return null;
  if (!uri.isScheme('http') && !uri.isScheme('https')) return null;
  return uri;
}

bool _isNotBlank(String? value) => value != null && value.trim().isNotEmpty;

String? _formatDuration(int? seconds) {
  if (seconds == null || seconds <= 0) return null;
  final d = Duration(seconds: seconds);
  final minutes = d.inMinutes;
  final remainingSeconds = d.inSeconds.remainder(60);
  return "${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}";
}
