import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/theme/app_theme.dart';
import '../ai_tutor_controller.dart';
import '../models/ai_tutor_models.dart' show AiConversationSummary;

String _formatUpdatedAt(DateTime value) {
  final local = value.toLocal();
  final month = local.month;
  final day = local.day;
  final hour = local.hour.toString().padLeft(2, '0');
  final minute = local.minute.toString().padLeft(2, '0');
  return '$month月$day日 $hour:$minute';
}

class AiConversationDrawer extends ConsumerWidget {
  const AiConversationDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(aiTutorControllerProvider);
    final controller = ref.read(aiTutorControllerProvider.notifier);
    final theme = Theme.of(context);

    return Drawer(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 16, 20, 8),
              child: Text('历史对话', style: theme.textTheme.titleLarge),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: OutlinedButton.icon(
                onPressed: () {
                  controller.startNewConversation();
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.add_comment_rounded),
                label: const Text('新建对话'),
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: state.isLoadingHistory
                  ? const Center(child: CircularProgressIndicator())
                  : state.history.isEmpty
                  ? Center(
                      child: Text(
                        '还没有历史记录',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: AppTheme.ink.withValues(alpha: 0.55),
                        ),
                      ),
                    )
                  : ListView.separated(
                      padding: const EdgeInsets.fromLTRB(12, 8, 12, 16),
                      itemCount: state.history.length,
                      separatorBuilder: (_, __) => const SizedBox(height: 8),
                      itemBuilder: (context, index) {
                        final item = state.history[index];
                        final selected = state.conversationId == item.id;
                        return _HistoryTile(
                          item: item,
                          selected: selected,
                          onTap: () async {
                            await controller.openConversation(item.id);
                            if (context.mounted) {
                              Navigator.of(context).pop();
                            }
                          },
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

class _HistoryTile extends StatelessWidget {
  const _HistoryTile({
    required this.item,
    required this.selected,
    required this.onTap,
  });

  final AiConversationSummary item;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Material(
      color: selected
          ? AppTheme.skyBlue.withValues(alpha: 0.12)
          : Colors.white,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    _formatUpdatedAt(item.updatedAt),
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: AppTheme.ink.withValues(alpha: 0.45),
                    ),
                  ),
                ],
              ),
              if (item.lastMessagePreview != null) ...[
                const SizedBox(height: 6),
                Text(
                  item.lastMessagePreview!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
