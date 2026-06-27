import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';
import '../models/ai_tutor_models.dart';
import 'ai_buddy_avatar.dart';

class AiChatBubble extends StatelessWidget {
  const AiChatBubble({
    required this.message,
    super.key,
  });

  final AiChatMessage message;

  @override
  Widget build(BuildContext context) {
    final isUser = message.role == AiMessageRole.user;

    if (isUser) {
      return Align(
        alignment: Alignment.centerRight,
        child: _UserBubble(message: message),
      );
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const AiBuddyAvatar(size: 36),
        const SizedBox(width: 8),
        Expanded(child: _AssistantBubble(message: message)),
      ],
    );
  }
}

class _UserBubble extends StatelessWidget {
  const _UserBubble({required this.message});

  final AiChatMessage message;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.sizeOf(context).width * 0.72,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppTheme.skyBlue,
              AppTheme.skyBlue.withValues(alpha: 0.88),
            ],
          ),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(18),
            topRight: Radius.circular(18),
            bottomLeft: Radius.circular(18),
            bottomRight: Radius.circular(6),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(14, 10, 14, 10),
          child: _AiMessageBody(
            text: message.content,
            isUser: true,
            isStreaming: message.isStreaming,
          ),
        ),
      ),
    );
  }
}

class _AssistantBubble extends StatelessWidget {
  const _AssistantBubble({required this.message});

  final AiChatMessage message;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(6),
          topRight: Radius.circular(18),
          bottomLeft: Radius.circular(18),
          bottomRight: Radius.circular(18),
        ),
        boxShadow: [
          BoxShadow(
            color: AppTheme.ink.withValues(alpha: 0.06),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14, 10, 14, 10),
        child: _AiMessageBody(
          text: message.content,
          isUser: false,
          isStreaming: message.isStreaming,
        ),
      ),
    );
  }
}

class _AiMessageBody extends StatelessWidget {
  const _AiMessageBody({
    required this.text,
    required this.isUser,
    required this.isStreaming,
  });

  final String text;
  final bool isUser;
  final bool isStreaming;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = isUser ? Colors.white : AppTheme.ink.withValues(alpha: 0.9);

    if (text.isEmpty && isStreaming) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _ThinkingDots(color: color),
          const SizedBox(width: 8),
          Text(
            '正在思考中…',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: color.withValues(alpha: 0.65),
            ),
          ),
        ],
      );
    }

    return Text.rich(
      TextSpan(children: _buildSpans(text, theme, color)),
      style: theme.textTheme.bodyMedium?.copyWith(color: color, height: 1.5),
    );
  }

  List<InlineSpan> _buildSpans(
    String value,
    ThemeData theme,
    Color defaultColor,
  ) {
    final spans = <InlineSpan>[];
    var start = 0;

    for (final match in aiVideoTimestampPattern.allMatches(value)) {
      if (match.start > start) {
        spans.add(TextSpan(text: value.substring(start, match.start)));
      }

      final stamp = match.group(0) ?? '';
      spans.add(
        WidgetSpan(
          alignment: PlaceholderAlignment.middle,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 2),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              color: AppTheme.mint.withValues(alpha: 0.25),
              borderRadius: BorderRadius.circular(999),
            ),
            child: Text(
              stamp,
              style: theme.textTheme.labelSmall?.copyWith(
                color: AppTheme.ink.withValues(alpha: 0.8),
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      );
      start = match.end;
    }

    if (start < value.length) {
      spans.add(TextSpan(text: value.substring(start)));
    }

    if (isStreaming) {
      spans.add(
        TextSpan(
          text: ' ▍',
          style: TextStyle(color: defaultColor.withValues(alpha: 0.5)),
        ),
      );
    }

    return spans;
  }
}

class _ThinkingDots extends StatefulWidget {
  const _ThinkingDots({required this.color});

  final Color color;

  @override
  State<_ThinkingDots> createState() => _ThinkingDotsState();
}

class _ThinkingDotsState extends State<_ThinkingDots>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, _) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(3, (index) {
            final phase = (_controller.value * 3 - index).clamp(0.0, 1.0);
            return Container(
              width: 7,
              height: 7,
              margin: const EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
                color: widget.color.withValues(alpha: 0.35 + phase * 0.55),
                shape: BoxShape.circle,
              ),
            );
          }),
        );
      },
    );
  }
}
