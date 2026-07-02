import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../app/router.dart';
import '../../../core/errors/app_exception_mapper.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/widgets/playful_background.dart';
import '../live_controller.dart';
import '../widgets/live_room_card.dart';

class LiveListPage extends ConsumerStatefulWidget {
  const LiveListPage({super.key});

  @override
  ConsumerState<LiveListPage> createState() => _LiveListPageState();
}

class _LiveListPageState extends ConsumerState<LiveListPage> {
  LiveTab _tab = LiveTab.living;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lives = ref.watch(liveListControllerProvider(_tab));

    return Scaffold(
      appBar: AppBar(
        title: const Text('直播课堂'),
        actions: [
          IconButton(
            onPressed: () =>
                ref.read(liveListControllerProvider(_tab).notifier).refresh(),
            icon: const Icon(Icons.refresh_rounded),
          ),
        ],
      ),
      body: PlayfulBackground(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('精彩直播课堂', style: theme.textTheme.titleLarge),
                  const SizedBox(height: 4),
                  Text(
                    '和老师一起互动学习，不错过每一场成长时刻。',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: AppTheme.ink.withValues(alpha: 0.72),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
              child: SegmentedButton<LiveTab>(
                segments: const [
                  ButtonSegment(
                    value: LiveTab.living,
                    label: Text('直播中'),
                    icon: Icon(Icons.sensors_rounded, size: 18),
                  ),
                  ButtonSegment(
                    value: LiveTab.upcoming,
                    label: Text('即将开始'),
                    icon: Icon(Icons.event_rounded, size: 18),
                  ),
                  ButtonSegment(
                    value: LiveTab.ended,
                    label: Text('已结束'),
                    icon: Icon(Icons.history_rounded, size: 18),
                  ),
                ],
                selected: {_tab},
                onSelectionChanged: (selection) {
                  setState(() => _tab = selection.first);
                },
              ),
            ),
            Expanded(
              child: lives.when(
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error, _) => Center(
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Text(
                      AppExceptionMapper.from(error).message,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                data: (items) {
                  if (items.isEmpty) {
                    return _EmptyLiveView(tab: _tab);
                  }

                  return RefreshIndicator(
                    onRefresh: () => ref
                        .read(liveListControllerProvider(_tab).notifier)
                        .refresh(),
                    child: ListView.separated(
                      physics: const AlwaysScrollableScrollPhysics(),
                      padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
                      itemCount: items.length,
                      separatorBuilder: (_, _) => const SizedBox(height: 12),
                      itemBuilder: (context, index) {
                        final live = items[index];
                        final canWatch = liveRoomIsWatchable(live);

                        return LiveRoomCard(
                          live: live,
                          enabled: canWatch,
                          onTap: canWatch
                              ? () => context.push(
                                    AppRoutes.liveWatch,
                                    extra: live,
                                  )
                              : null,
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
    );
  }
}

class _EmptyLiveView extends StatelessWidget {
  const _EmptyLiveView({required this.tab});

  final LiveTab tab;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final message = switch (tab) {
      LiveTab.living => '当前没有正在进行的直播',
      LiveTab.upcoming => '暂时没有即将开始的直播',
      LiveTab.ended => '还没有已结束的直播记录',
    };

    return ListView(
      physics: const AlwaysScrollableScrollPhysics(),
      children: [
        const SizedBox(height: 72),
        Icon(
          Icons.live_tv_outlined,
          size: 56,
          color: AppTheme.skyBlue.withValues(alpha: 0.55),
        ),
        const SizedBox(height: 16),
        Center(
          child: Text(
            message,
            style: theme.textTheme.titleMedium?.copyWith(
              color: AppTheme.ink.withValues(alpha: 0.62),
            ),
          ),
        ),
      ],
    );
  }
}
