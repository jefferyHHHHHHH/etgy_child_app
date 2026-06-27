import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/ai_tutor_models.dart';
import 'ai_remote_data_source.dart';

final aiRepositoryProvider = Provider<AiRepository>((Ref ref) {
  return AiRepository(remote: ref.watch(aiRemoteDataSourceProvider));
});

class AiRepository {
  AiRepository({required this.remote});

  final AiRemoteDataSource remote;

  Future<AiChatResult> chat({
    required String message,
    int? conversationId,
    AiTutorMode mode = AiTutorMode.auto,
  }) {
    return remote.chat(
      message: message,
      conversationId: conversationId,
      mode: mode,
    );
  }

  Stream<AiStreamChunk> chatStream({
    required String message,
    int? conversationId,
    AiTutorMode mode = AiTutorMode.auto,
    CancelToken? cancelToken,
  }) {
    return remote.chatStream(
      message: message,
      conversationId: conversationId,
      mode: mode,
      cancelToken: cancelToken,
    );
  }

  Future<List<AiConversationSummary>> fetchConversations({
    int page = 1,
    int pageSize = 30,
  }) {
    return remote.fetchConversations(page: page, pageSize: pageSize);
  }

  Future<List<AiChatMessage>> fetchConversationMessages(int conversationId) {
    return remote.fetchConversationMessages(conversationId);
  }
}
