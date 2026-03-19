import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../app/router.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/widgets/playful_background.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final entries = <_HomeEntry>[
      _HomeEntry('课程视频', Icons.smart_display_rounded, AppTheme.skyBlue, AppRoutes.videos),
      _HomeEntry('直播课堂', Icons.live_tv_rounded, AppTheme.coral, AppRoutes.lives),
      _HomeEntry('AI 学习搭子', Icons.auto_awesome_rounded, AppTheme.banana, AppRoutes.aiTutor),
      _HomeEntry('成长档案', Icons.favorite_rounded, AppTheme.mint, AppRoutes.profile),
    ];

    return Scaffold(
      body: PlayfulBackground(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(16, 14, 16, 24),
          children: [
            Text('今天也超棒', style: theme.textTheme.headlineMedium),
            const SizedBox(height: 6),
            Text('选择一个冒险，开始你的学习旅程吧！', style: theme.textTheme.bodyMedium),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: AppTheme.skyBlue,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                children: [
                  const Icon(Icons.emoji_events_rounded, color: Colors.white, size: 34),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      '连续学习 3 天，今天继续打卡拿徽章！',
                      style: theme.textTheme.titleMedium?.copyWith(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: entries.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 1.06,
              ),
              itemBuilder: (context, index) {
                final item = entries[index];
                return InkWell(
                  borderRadius: BorderRadius.circular(24),
                  onTap: () => context.push(item.route),
                  child: Ink(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
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
                              color: item.color.withValues(alpha: 0.2),
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
                );
              },
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
