import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';

class AiTutorComposer extends StatelessWidget {
  const AiTutorComposer({
    required this.controller,
    required this.onSend,
    required this.enabled,
    super.key,
  });

  final TextEditingController controller;
  final VoidCallback onSend;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: AppTheme.ink.withValues(alpha: 0.08),
            blurRadius: 18,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      padding: const EdgeInsets.fromLTRB(18, 6, 8, 6),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              enabled: enabled,
              textInputAction: TextInputAction.send,
              onSubmitted: enabled ? (_) => onSend() : null,
              minLines: 1,
              maxLines: 4,
              style: theme.textTheme.bodyMedium,
              decoration: InputDecoration(
                hintText: '快来和学习搭子对话吧',
                hintStyle: theme.textTheme.bodyMedium?.copyWith(
                  color: AppTheme.ink.withValues(alpha: 0.38),
                ),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(vertical: 10),
              ),
            ),
          ),
          Material(
            color: enabled ? AppTheme.skyBlue : AppTheme.skyBlue.withValues(alpha: 0.45),
            shape: const CircleBorder(),
            child: InkWell(
              onTap: enabled ? onSend : null,
              customBorder: const CircleBorder(),
              child: SizedBox(
                width: 44,
                height: 44,
                child: enabled
                    ? const Icon(Icons.arrow_upward_rounded, color: Colors.white)
                    : const Padding(
                        padding: EdgeInsets.all(12),
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Colors.white,
                        ),
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
