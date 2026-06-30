import 'package:etgy_openapi_client/etgy_openapi_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../app/router.dart';
import '../../../core/errors/app_exception_mapper.dart';
import '../live_controller.dart';

class LiveListPage extends ConsumerStatefulWidget {
  const LiveListPage({super.key});

  @override
  ConsumerState<LiveListPage> createState() => _LiveListPageState();
}

class _LiveListPageState extends ConsumerState<LiveListPage> {
  LiveTab _tab = LiveTab.living;

  @override
  Widget build(BuildContext context) {
    final lives = ref.watch(liveListControllerProvider(_tab));

    return Scaffold(
      appBar: AppBar(
        title: const Text('直播课堂'),
        actions: [
          IconButton(
            onPressed: () =>
                ref.read(liveListControllerProvider(_tab).notifier).refresh(),
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
            child: SegmentedButton<LiveTab>(
              segments: const [
                ButtonSegment(
                  value: LiveTab.living,
                  label: Text('直播中'),
                ),
                ButtonSegment(
                  value: LiveTab.upcoming,
                  label: Text('即将开始'),
                ),
                ButtonSegment(
                  value: LiveTab.ended,
                  label: Text('已结束'),
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
                child: Text(AppExceptionMapper.from(error).message),
              ),
              data: (items) {
                if (items.isEmpty) {
                  return const Center(child: Text('暂无直播'));
                }

                return ListView.separated(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                  itemCount: items.length,
                  separatorBuilder: (_, _) => const SizedBox(height: 10),
                  itemBuilder: (context, index) {
                    final live = items[index];
                    final canWatch = live.status == LiveRoomStatusEnum.LIVING ||
                        live.status == LiveRoomStatusEnum.PUBLISHED;

                    return Card(
                      child: ListTile(
                        title: Text(live.title),
                        subtitle: Text(_statusLabel(live.status)),
                        trailing: canWatch
                            ? const Icon(Icons.play_circle_outline)
                            : null,
                        onTap: canWatch
                            ? () => context.push(AppRoutes.liveWatch, extra: live)
                            : null,
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  String _statusLabel(LiveRoomStatusEnum status) {
    switch (status) {
      case LiveRoomStatusEnum.LIVING:
        return '直播中';
      case LiveRoomStatusEnum.PUBLISHED:
        return '即将开始';
      case LiveRoomStatusEnum.FINISHED:
        return '已结束';
      case LiveRoomStatusEnum.PASSED:
        return '审核通过';
      case LiveRoomStatusEnum.REVIEW:
        return '审核中';
      case LiveRoomStatusEnum.DRAFT:
        return '草稿';
      case LiveRoomStatusEnum.REJECTED:
        return '已驳回';
      case LiveRoomStatusEnum.OFFLINE:
        return '已下架';
    }
  }
}
