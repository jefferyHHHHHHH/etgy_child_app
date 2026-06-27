enum AiTutorMode {
  auto,
  study,
  emotion;

  String get label => switch (this) {
    AiTutorMode.auto => '智能识别',
    AiTutorMode.study => '学习答疑',
    AiTutorMode.emotion => '心情树洞',
  };

  String? get apiValue => switch (this) {
    AiTutorMode.auto => null,
    AiTutorMode.study => 'study',
    AiTutorMode.emotion => 'emotion',
  };

  static AiTutorMode fromApi(String? raw) => switch (raw?.toUpperCase()) {
    'STUDY' => AiTutorMode.study,
    'EMOTION' => AiTutorMode.emotion,
    _ => AiTutorMode.auto,
  };
}

enum AiMessageRole { user, assistant, system }

class AiChatMessage {
  const AiChatMessage({
    required this.id,
    required this.role,
    required this.content,
    this.createdAt,
    this.isStreaming = false,
  });

  final String id;
  final AiMessageRole role;
  final String content;
  final DateTime? createdAt;
  final bool isStreaming;

  AiChatMessage copyWith({
    String? content,
    bool? isStreaming,
  }) {
    return AiChatMessage(
      id: id,
      role: role,
      content: content ?? this.content,
      createdAt: createdAt,
      isStreaming: isStreaming ?? this.isStreaming,
    );
  }
}

class AiConversationSummary {
  const AiConversationSummary({
    required this.id,
    required this.mode,
    required this.updatedAt,
    this.lastMessagePreview,
  });

  final int id;
  final AiTutorMode mode;
  final DateTime updatedAt;
  final String? lastMessagePreview;
}

class AiChatResult {
  const AiChatResult({
    required this.conversationId,
    required this.answer,
    this.riskTriggered = false,
  });

  final int conversationId;
  final String answer;
  final bool riskTriggered;
}

class AiStreamChunk {
  const AiStreamChunk({
    required this.text,
    this.conversationId,
    this.done = false,
    this.event,
  });

  final String text;
  final int? conversationId;
  final bool done;
  final String? event;
}

/// Matches video timestamp refs like `[02:20 -> 02:22]`.
final RegExp aiVideoTimestampPattern = RegExp(
  r'\[\d{1,2}:\d{2}\s*->\s*\d{1,2}:\d{2}\]',
);
