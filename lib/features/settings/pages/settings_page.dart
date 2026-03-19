import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../auth/auth_controller.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('设置')),
      body: ListView(
        children: [
          const ListTile(
            title: Text('账号安全'),
            subtitle: Text('密码修改、设备管理（待接入）'),
          ),
          const Divider(height: 1),
          ListTile(
            title: const Text('退出登录'),
            textColor: Colors.red,
            iconColor: Colors.red,
            leading: const Icon(Icons.logout),
            onTap: () async {
              await ref.read(authControllerProvider.notifier).signOut();
            },
          ),
        ],
      ),
    );
  }
}
