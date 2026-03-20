import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../live_controller.dart';

class LiveListPage extends ConsumerWidget {
  const LiveListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const tab = LiveTab.upcoming;
    final lives = ref.watch(liveListControllerProvider(tab));

    return Scaffold(
      appBar: AppBar(
        title: const Text('直播列表'),
        actions: [
          IconButton(
            onPressed: () => ref.read(liveListControllerProvider(tab).notifier).refresh(),
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: lives.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text(error.toString())),
        data: (items) {
          if (items.isEmpty) {
            return const Center(child: Text('暂无直播'));
          }
          return ListView.separated(
            itemCount: items.length,
            separatorBuilder: (_, _) => const Divider(height: 1),
            itemBuilder: (context, index) {
              final live = items[index];
              return ListTile(
                title: Text(live.title),
                subtitle: Text(live.status.name),
              );
            },
          );
        },
      ),
    );
  }
}
