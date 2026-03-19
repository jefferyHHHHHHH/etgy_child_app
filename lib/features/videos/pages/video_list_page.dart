import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';
import '../../../core/widgets/playful_background.dart';

class VideoListPage extends StatelessWidget {
  const VideoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final categories = ['推荐', '专注力', '情绪管理', '运动游戏', '亲子互动'];
    final cards = [
      _VideoCardData('快乐专注训练营', '12 分钟', AppTheme.skyBlue, Icons.psychology_alt_rounded),
      _VideoCardData('情绪小火车', '8 分钟', AppTheme.coral, Icons.sentiment_satisfied_alt_rounded),
      _VideoCardData('家庭互动挑战', '15 分钟', AppTheme.mint, Icons.diversity_3_rounded),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('学习视频')),
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
            ...cards.map(
              (item) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: Row(
                      children: [
                        Container(
                          width: 76,
                          height: 76,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: item.color.withValues(alpha: 0.22),
                          ),
                          child: Icon(item.icon, color: item.color, size: 34),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(item.title, style: theme.textTheme.titleMedium),
                              const SizedBox(height: 6),
                              Row(
                                children: [
                                  const Icon(Icons.schedule_rounded, size: 16),
                                  const SizedBox(width: 4),
                                  Text(item.duration, style: theme.textTheme.bodyMedium),
                                ],
                              ),
                            ],
                          ),
                        ),
                        FilledButton(
                          onPressed: () {},
                          style: FilledButton.styleFrom(
                            minimumSize: const Size(74, 40),
                            backgroundColor: AppTheme.coral,
                          ),
                          child: const Text('播放'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _VideoCardData {
  const _VideoCardData(this.title, this.duration, this.color, this.icon);

  final String title;
  final String duration;
  final Color color;
  final IconData icon;
}
