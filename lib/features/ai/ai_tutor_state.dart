import 'models/ai_tutor_models.dart';

class AiTutorState {
  const AiTutorState({
    this.messages = const [],
    this.conversationId,
    this.mode = AiTutorMode.auto,
    this.isSending = false,
    this.isThinking = false,
    this.errorMessage,
    this.history = const [],
    this.isLoadingHistory = false,
  });

  final List<AiChatMessage> messages;
  final int? conversationId;
  final AiTutorMode mode;
  final bool isSending;
  final bool isThinking;
  final String? errorMessage;
  final List<AiConversationSummary> history;
  final bool isLoadingHistory;

  bool get hasMessages => messages.isNotEmpty;

  AiTutorState copyWith({
    List<AiChatMessage>? messages,
    int? conversationId,
    bool clearConversationId = false,
    AiTutorMode? mode,
    bool? isSending,
    bool? isThinking,
    String? errorMessage,
    bool clearError = false,
    List<AiConversationSummary>? history,
    bool? isLoadingHistory,
  }) {
    return AiTutorState(
      messages: messages ?? this.messages,
      conversationId: clearConversationId
          ? null
          : (conversationId ?? this.conversationId),
      mode: mode ?? this.mode,
      isSending: isSending ?? this.isSending,
      isThinking: isThinking ?? this.isThinking,
      errorMessage: clearError ? null : (errorMessage ?? this.errorMessage),
      history: history ?? this.history,
      isLoadingHistory: isLoadingHistory ?? this.isLoadingHistory,
    );
  }
}
