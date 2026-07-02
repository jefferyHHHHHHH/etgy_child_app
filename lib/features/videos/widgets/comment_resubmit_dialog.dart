import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';
import '../../../core/utils/comment_content_validator.dart';

Future<String?> showCommentResubmitDialog(
  BuildContext context, {
  required String initialContent,
}) {
  return showDialog<String>(
    context: context,
    builder: (context) =>
        _CommentResubmitDialog(initialContent: initialContent),
  );
}

class _CommentResubmitDialog extends StatefulWidget {
  const _CommentResubmitDialog({required this.initialContent});

  final String initialContent;

  @override
  State<_CommentResubmitDialog> createState() => _CommentResubmitDialogState();
}

class _CommentResubmitDialogState extends State<_CommentResubmitDialog> {
  late final TextEditingController _controller;
  String? _errorText;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialContent);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _submit() {
    final text = _controller.text.trim();
    final validation = CommentContentValidator.validate(text);
    if (!validation.isValid) {
      setState(() => _errorText = validation.message);
      return;
    }
    Navigator.of(context).pop(text);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AlertDialog(
      title: const Text('重新提交评论'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '可以修改原评论内容，提交后将重新进入审核。',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: AppTheme.ink.withValues(alpha: 0.62),
            ),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _controller,
            autofocus: true,
            minLines: 3,
            maxLines: 6,
            maxLength: CommentContentValidator.maxLength,
            decoration: InputDecoration(
              hintText: '写下你的评论',
              errorText: _errorText,
            ),
            textInputAction: TextInputAction.newline,
            onChanged: (_) {
              if (_errorText != null) {
                setState(() => _errorText = null);
              }
            },
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('取消'),
        ),
        FilledButton(onPressed: _submit, child: const Text('重新提交')),
      ],
    );
  }
}
