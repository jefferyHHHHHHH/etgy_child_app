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
        child: ListView(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
          children: [
            Text('今天看什么？', style: theme.textTheme.headlineMedium),
            const SizedBox(height: 6),
            Text('精选内容帮你轻松成长，每天一点点进步。', style: theme.textTheme.bodyMedium),
            const SizedBox(height: 14),
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
            const SizedBox(height: 14),
            videos.when(
              loading: () => const Padding(
                padding: EdgeInsets.only(top: 24),
                child: Center(child: CircularProgressIndicator()),
              ),
              error: (error, _) => Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Center(child: Text(error.toString())),
              ),
              data: (items) {
                if (items.isEmpty) {
                  return const Padding(
                    padding: EdgeInsets.only(top: 24),
                    child: Center(child: Text('暂无视频')),
                  );
                }

                return GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    childAspectRatio: 0.74,
                  ),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final video = items[index];
                    return _VideoCard(
                      video: video,
                      onTap: () =>
                          context.push(AppRoutes.videoPlayer, extra: video),
                    );
                  },
                );
              },
            ),
          ],
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
    final gradeRange = video.gradeRange?.trim();
    final intro = video.intro?.trim();

    final tags = <String>[
      if (subjectTag != null && subjectTag.isNotEmpty) subjectTag,
      if (gradeRange != null && gradeRange.isNotEmpty) gradeRange,
      // ignore: use_null_aware_elements
      if (durationText != null) durationText,
    ];

    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: coverUrl == null
                  ? _CoverPlaceholder(title: video.title)
                  : Image.network(
                      coverUrl.toString(),
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) =>
                          _CoverPlaceholder(title: video.title),
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return const Center(child: CircularProgressIndicator());
                      },
                    ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 12, 14, 14),
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
                    const SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (var i = 0; i < tags.length; i++) ...[
                            if (i != 0) const SizedBox(width: 8),
                            _MetaPill(text: tags[i]),
                          ],
                        ],
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
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
