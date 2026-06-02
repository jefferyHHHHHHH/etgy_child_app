import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../auth_controller.dart';
import '../auth_state.dart';

class DeviceBindPage extends ConsumerStatefulWidget {
  const DeviceBindPage({super.key});

  @override
  ConsumerState<DeviceBindPage> createState() => _DeviceBindPageState();
}

class _DeviceBindPageState extends ConsumerState<DeviceBindPage> {
  late final ProviderSubscription<AuthState> _authSubscription;

  @override
  void initState() {
    super.initState();
    _authSubscription = ref.listenManual(authControllerProvider, (
      previous,
      next,
    ) {
      final message = next.errorMessage;
      if (message != null && message.isNotEmpty) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(message)));
        ref.read(authControllerProvider.notifier).clearError();
      }
    });
  }

  @override
  void dispose() {
    _authSubscription.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authControllerProvider);

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
              onPressed: authState.isLoading
                  ? null
                  : () async {
                      await ref
                          .read(authControllerProvider.notifier)
                          .confirmDeviceBinding();
                    },
              child: authState.isLoading
                  ? const SizedBox(
                      width: 16,
                      height: 16,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Text('确认绑定'),
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
