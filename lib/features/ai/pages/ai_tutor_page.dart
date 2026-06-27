import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/theme/app_theme.dart';
import '../ai_tutor_controller.dart';
import '../widgets/ai_buddy_avatar.dart';
import '../widgets/ai_chat_bubble.dart';
import '../widgets/ai_conversation_drawer.dart';
import '../widgets/ai_tutor_composer.dart';

const _allSuggestions = [
  '这道题我不太会做，能帮帮我吗？',
  '今天学的课文能再讲讲吗？',
  '看视频时有一段没听懂怎么办？',
  '背诵有什么好方法吗？',
  '学习累了，想放松一下…',
  '能帮我复习一下今天的知识点吗？',
  '数学应用题从哪里入手？',
  '英语单词总是记不住怎么办？',
];

class AiTutorPage extends ConsumerStatefulWidget {
  const AiTutorPage({super.key});

  @override
  ConsumerState<AiTutorPage> createState() => _AiTutorPageState();
}

class _AiTutorPageState extends ConsumerState<AiTutorPage> {
  final _inputController = TextEditingController();
  final _scrollController = ScrollController();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _random = Random();
  late List<String> _suggestions;

  @override
  void initState() {
    super.initState();
    _suggestions = _pickSuggestions();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(aiTutorControllerProvider.notifier).loadHistory();
    });
  }

  @override
  void dispose() {
    _inputController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  List<String> _pickSuggestions() {
    final pool = List<String>.from(_allSuggestions)..shuffle(_random);
    return pool.take(4).toList(growable: false);
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!_scrollController.hasClients) {
        return;
      }
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 220),
        curve: Curves.easeOut,
      );
    });
  }

  Future<void> _send([String? preset]) async {
    final text = preset ?? _inputController.text;
    if (text.trim().isEmpty) {
      return;
    }
    _inputController.clear();
    await ref.read(aiTutorControllerProvider.notifier).sendMessage(text);
    _scrollToBottom();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(aiTutorControllerProvider);
    final controller = ref.read(aiTutorControllerProvider.notifier);
    final theme = Theme.of(context);

    ref.listen(aiTutorControllerProvider, (previous, next) {
      if (next.messages.length != (previous?.messages.length ?? 0) ||
          (next.messages.isNotEmpty &&
              previous?.messages.lastOrNull?.content !=
                  next.messages.lastOrNull?.content)) {
        _scrollToBottom();
      }
      if (next.errorMessage != null &&
          next.errorMessage != previous?.errorMessage) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(next.errorMessage!)),
        );
      }
    });

    return Scaffold(
      key: _scaffoldKey,
      drawer: const AiConversationDrawer(),
      body: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFEAF7FF),
              Color(0xFFF4FBFF),
              Color(0xFFF8FCFF),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(4, 4, 8, 0),
                child: Row(
                  children: [
                    const BackButton(),
                    Text('学习搭子', style: theme.textTheme.titleLarge),
                    const Spacer(),
                    IconButton(
                      tooltip: '历史对话',
                      onPressed: () => _scaffoldKey.currentState?.openDrawer(),
                      icon: const Icon(Icons.history_rounded),
                    ),
                    IconButton(
                      tooltip: '新建对话',
                      onPressed: controller.startNewConversation,
                      icon: const Icon(Icons.edit_outlined),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: state.hasMessages
                    ? ListView.separated(
                        controller: _scrollController,
                        padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                        itemCount: state.messages.length,
                        separatorBuilder: (_, __) => const SizedBox(height: 14),
                        itemBuilder: (context, index) {
                          return AiChatBubble(message: state.messages[index]);
                        },
                      )
                    : _WelcomePanel(
                        isThinking: state.isThinking,
                        suggestions: _suggestions,
                        onRefresh: () {
                          setState(() {
                            _suggestions = _pickSuggestions();
                          });
                        },
                        onSuggestionTap: _send,
                      ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: AiTutorComposer(
                  controller: _inputController,
                  enabled: !state.isSending,
                  onSend: () => _send(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _WelcomePanel extends StatelessWidget {
  const _WelcomePanel({
    required this.isThinking,
    required this.suggestions,
    required this.onRefresh,
    required this.onSuggestionTap,
  });

  final bool isThinking;
  final List<String> suggestions;
  final VoidCallback onRefresh;
  final ValueChanged<String> onSuggestionTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListView(
      padding: const EdgeInsets.fromLTRB(20, 8, 20, 16),
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ShaderMask(
                    shaderCallback: (bounds) => const LinearGradient(
                      colors: [Color(0xFF57C6FF), Color(0xFF57E1B1)],
                    ).createShader(bounds),
                    child: Text(
                      '你好呀~',
                      style: theme.textTheme.headlineMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    '我是你的学习搭子',
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    isThinking
                        ? '正在认真思考中…'
                        : '有不会的题目、想聊的心事，都可以告诉我哦~',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: AppTheme.ink.withValues(alpha: 0.62),
                      height: 1.45,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            const AiBuddyAvatar(size: 96),
          ],
        ),
        const SizedBox(height: 24),
        DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: AppTheme.ink.withValues(alpha: 0.06),
                blurRadius: 20,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(18, 18, 18, 8),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('你可能想问', style: theme.textTheme.titleMedium),
                        Text(
                          'PICKS FOR YOU',
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: AppTheme.ink.withValues(alpha: 0.35),
                            letterSpacing: 0.8,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    TextButton.icon(
                      onPressed: onRefresh,
                      icon: const Icon(Icons.refresh_rounded, size: 18),
                      label: const Text('换一批'),
                      style: TextButton.styleFrom(
                        foregroundColor: AppTheme.ink.withValues(alpha: 0.55),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                ...suggestions.map(
                  (text) => _SuggestionRow(
                    text: text,
                    onTap: () => onSuggestionTap(text),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _SuggestionRow extends StatelessWidget {
  const _SuggestionRow({
    required this.text,
    required this.onTap,
  });

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(14),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Row(
            children: [
              Icon(
                Icons.tag_rounded,
                size: 18,
                color: AppTheme.mint.withValues(alpha: 0.9),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  text,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: AppTheme.ink.withValues(alpha: 0.82),
                  ),
                ),
              ),
              Icon(
                Icons.chevron_right_rounded,
                color: AppTheme.ink.withValues(alpha: 0.28),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
