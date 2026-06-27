import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/errors/app_exception.dart';
import '../../core/errors/app_exception_mapper.dart';
import 'ai_tutor_state.dart';
import 'data/ai_repository.dart';
import 'models/ai_tutor_models.dart';

final aiTutorControllerProvider =
    NotifierProvider<AiTutorController, AiTutorState>(AiTutorController.new);

class AiTutorController extends Notifier<AiTutorState> {
  CancelToken? _streamCancelToken;
  int _messageSeq = 0;

  @override
  AiTutorState build() {
    ref.onDispose(() {
      _streamCancelToken?.cancel();
    });
    return const AiTutorState();
  }

  void setMode(AiTutorMode mode) {
    state = state.copyWith(mode: mode, clearError: true);
  }

  void startNewConversation() {
    _streamCancelToken?.cancel();
    state = AiTutorState(mode: state.mode, history: state.history);
  }

  Future<void> loadHistory() async {
    state = state.copyWith(isLoadingHistory: true, clearError: true);
    try {
      final history = await ref.read(aiRepositoryProvider).fetchConversations();
      state = state.copyWith(history: history, isLoadingHistory: false);
    } catch (error) {
      state = state.copyWith(
        isLoadingHistory: false,
        errorMessage: AppExceptionMapper.from(error).message,
      );
    }
  }

  Future<void> openConversation(int conversationId) async {
    state = state.copyWith(isSending: true, clearError: true);
    try {
      final messages = await ref
          .read(aiRepositoryProvider)
          .fetchConversationMessages(conversationId);
      state = state.copyWith(
        conversationId: conversationId,
        messages: messages,
        isSending: false,
      );
    } catch (error) {
      state = state.copyWith(
        isSending: false,
        errorMessage: AppExceptionMapper.from(error).message,
      );
    }
  }

  Future<void> sendMessage(String raw) async {
    final text = raw.trim();
    if (text.isEmpty || state.isSending) {
      return;
    }

    final userMessage = AiChatMessage(
      id: _nextId(),
      role: AiMessageRole.user,
      content: text,
      createdAt: DateTime.now(),
    );

    final assistantId = _nextId();
    final assistantPlaceholder = AiChatMessage(
      id: assistantId,
      role: AiMessageRole.assistant,
      content: '',
      isStreaming: true,
      createdAt: DateTime.now(),
    );

    state = state.copyWith(
      messages: [...state.messages, userMessage, assistantPlaceholder],
      isSending: true,
      isThinking: true,
      clearError: true,
    );

    _streamCancelToken?.cancel();
    _streamCancelToken = CancelToken();

    try {
      await _sendWithStream(text, assistantId);
    } catch (error) {
      final message = AppExceptionMapper.from(error).message;
      _replaceAssistant(
        assistantId,
        content: answerOrPlaceholder(state, assistantId),
        isStreaming: false,
      );
      state = state.copyWith(
        isSending: false,
        isThinking: false,
        errorMessage: message,
      );
    }
  }

  String answerOrPlaceholder(AiTutorState current, String assistantId) {
    final existing = current.messages
        .where((m) => m.id == assistantId)
        .map((m) => m.content.trim())
        .firstOrNull;
    if (existing != null && existing.isNotEmpty) {
      return existing;
    }
    return '暂时没有收到回复，请稍后再试。';
  }

  Future<void> _sendWithStream(String text, String assistantId) async {
    final repository = ref.read(aiRepositoryProvider);
    var answer = '';
    int? conversationId = state.conversationId;

    await for (final chunk in repository.chatStream(
      message: text,
      conversationId: state.conversationId,
      mode: state.mode,
      cancelToken: _streamCancelToken,
    )) {
      if (chunk.conversationId != null) {
        conversationId = chunk.conversationId;
      }

      if (chunk.text.isNotEmpty) {
        answer += chunk.text;
        state = state.copyWith(
          isThinking: false,
          conversationId: conversationId,
          messages: _updateAssistant(assistantId, answer, isStreaming: !chunk.done),
        );
      } else if (chunk.done) {
        state = state.copyWith(
          conversationId: conversationId,
          messages: _updateAssistant(assistantId, answer, isStreaming: false),
        );
      }
    }

    _replaceAssistant(
      assistantId,
      content: answer,
      isStreaming: false,
      removeIfEmpty: false,
    );

    if (answer.isEmpty) {
      throw const AppException(
        type: AppExceptionType.unknown,
        message: '未收到 AI 回复，请稍后再试',
      );
    }

    state = state.copyWith(
      isSending: false,
      isThinking: false,
      conversationId: conversationId,
    );
  }

  List<AiChatMessage> _updateAssistant(
    String assistantId,
    String content, {
    required bool isStreaming,
  }) {
    return state.messages
        .map(
          (m) => m.id == assistantId
              ? m.copyWith(content: content, isStreaming: isStreaming)
              : m,
        )
        .toList(growable: false);
  }

  void _replaceAssistant(
    String assistantId, {
    required String content,
    required bool isStreaming,
    bool removeIfEmpty = false,
  }) {
    if (removeIfEmpty && content.isEmpty) {
      state = state.copyWith(
        messages: state.messages.where((m) => m.id != assistantId).toList(),
      );
      return;
    }

    state = state.copyWith(
      messages: _updateAssistant(assistantId, content, isStreaming: isStreaming),
    );
  }

  String _nextId() {
    _messageSeq += 1;
    return 'msg_$_messageSeq';
  }
}
