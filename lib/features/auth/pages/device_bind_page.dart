import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../auth_controller.dart';

class DeviceBindPage extends ConsumerWidget {
  const DeviceBindPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('首次绑定设备')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('首次登录需要绑定当前设备。绑定后，账号状态将从“待激活”变为“活跃”。'),
            const SizedBox(height: 16),
            FilledButton(
              onPressed: () async {
                await ref
                    .read(authControllerProvider.notifier)
                    .confirmDeviceBinding();
              },
              child: const Text('确认绑定'),
            ),
            const SizedBox(height: 8),
            OutlinedButton(
              onPressed: () async {
                await ref.read(authControllerProvider.notifier).signOut();
              },
              child: const Text('退出登录'),
            ),
          ],
        ),
      ),
    );
  }
}
