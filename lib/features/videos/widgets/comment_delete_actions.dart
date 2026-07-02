import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';

typedef CommentDeleteCallback = Future<void> Function();

/// 评论卡片右上角删除入口（按钮 + 长按）。
class CommentDeleteActions extends StatelessWidget {
  const CommentDeleteActions({
    required this.onDelete,
    super.key,
    this.compact = false,
  });

  final CommentDeleteCallback onDelete;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: '删除评论',
      visualDensity: compact ? VisualDensity.compact : VisualDensity.standard,
      padding: compact ? EdgeInsets.zero : null,
      constraints: compact ? const BoxConstraints(minWidth: 36, minHeight: 36) : null,
      onPressed: () => onDelete(),
      icon: Icon(
        Icons.delete_outline_rounded,
        size: compact ? 20 : 22,
        color: AppTheme.coral.withValues(alpha: 0.85),
      ),
    );
  }
}

/// 包裹评论内容，支持长按删除（作为删除按钮的补充）。
class CommentDeleteGestureWrapper extends StatelessWidget {
  const CommentDeleteGestureWrapper({
    required this.enabled,
    required this.onDelete,
    required this.child,
    super.key,
  });

  final bool enabled;
  final CommentDeleteCallback onDelete;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (!enabled) return child;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        onLongPress: onDelete,
        child: child,
      ),
    );
  }
}
