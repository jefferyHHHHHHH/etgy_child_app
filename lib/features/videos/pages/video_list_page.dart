import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/theme/app_theme.dart';
import '../../../core/widgets/playful_background.dart';
import '../video_controller.dart';

class VideoListPage extends ConsumerWidget {
  const VideoListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final categories = ['推荐', '专注力', '情绪管理', '运动游戏', '亲子互动'];
    final videos = ref.watch(videoListControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('学习视频'),
        actions: [
          IconButton(
            onPressed: () => ref.read(videoListControllerProvider.notifier).refresh(),
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
                  final isSelected = index == 0;
                  return ChoiceChip(
                    selected: isSelected,
                    onSelected: (_) {},
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

                return Column(
                  children: items
                      .map(
                        (video) => Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: Card(
                            child: ListTile(
                              leading: Container(
                                width: 54,
                                height: 54,
                                decoration: BoxDecoration(
                                  color: AppTheme.skyBlue.withValues(alpha: 0.18),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: const Icon(Icons.smart_display_rounded, color: AppTheme.skyBlue),
                              ),
                              title: Text(video.title),
                              subtitle: Text(
                                (video.subjectTag ?? video.gradeRange ?? '').toString(),
                              ),
                              trailing: FilledButton(
                                onPressed: () {},
                                style: FilledButton.styleFrom(
                                  minimumSize: const Size(74, 40),
                                  backgroundColor: AppTheme.coral,
                                ),
                                child: const Text('播放'),
                              ),
                            ),
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
