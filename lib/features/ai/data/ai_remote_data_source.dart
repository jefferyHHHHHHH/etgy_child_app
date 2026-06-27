import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:etgy_openapi_client/etgy_openapi_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/errors/app_exception.dart';
import '../../../core/network/generated_openapi_provider.dart';
import '../models/ai_tutor_models.dart';

final aiRemoteDataSourceProvider = Provider<AiRemoteDataSource>((Ref ref) {
  return OpenApiAiRemoteDataSource(ref.watch(generatedOpenapiClientProvider));
});

abstract class AiRemoteDataSource {
  Future<AiChatResult> chat({
    required String message,
    int? conversationId,
    AiTutorMode mode = AiTutorMode.auto,
  });

  Stream<AiStreamChunk> chatStream({
    required String message,
    int? conversationId,
    AiTutorMode mode = AiTutorMode.auto,
    CancelToken? cancelToken,
  });

  Future<List<AiConversationSummary>> fetchConversations({
    int page = 1,
    int pageSize = 30,
  });

  Future<List<AiChatMessage>> fetchConversationMessages(int conversationId);
}

class OpenApiAiRemoteDataSource implements AiRemoteDataSource {
  OpenApiAiRemoteDataSource(this._client);

  final EtgyOpenapiClient _client;

  AIApi get _api => _client.getAIApi();

  @override
  Future<AiChatResult> chat({
    required String message,
    int? conversationId,
    AiTutorMode mode = AiTutorMode.auto,
  }) async {
    final response = await _api.apiAiTutorChatPost(
      apiAiTutorChatPostRequest: ApiAiTutorChatPostRequest(
        message: message,
        conversationId: conversationId,
        mode: _requestMode(mode),
      ),
    );

    final data = response.data?.data;
    if (data == null) {
      throw const AppException(
        type: AppExceptionType.unknown,
        message: 'AI 服务返回为空，请稍后重试',
      );
    }

    return AiChatResult(
      conversationId: data.conversationId,
      answer: data.answer,
      riskTriggered: data.risk.triggered,
    );
  }

  @override
  Stream<AiStreamChunk> chatStream({
    required String message,
    int? conversationId,
    AiTutorMode mode = AiTutorMode.auto,
    CancelToken? cancelToken,
  }) async* {
    final modeValue = mode.apiValue ?? 'study';
    final body = <String, dynamic>{
      'message': message,
      if (conversationId != null) 'conversationId': conversationId,
      'mode': modeValue,
    };

    final response = await _client.dio.post<ResponseBody>(
      '/api/ai/tutor/chat/stream',
      data: body,
      cancelToken: cancelToken,
      options: Options(
        responseType: ResponseType.stream,
        headers: const {
          'Accept': 'text/event-stream',
          'Content-Type': 'application/json',
        },
        receiveTimeout: const Duration(minutes: 3),
        validateStatus: (status) => status != null && status < 500,
      ),
    );

    final statusCode = response.statusCode ?? 0;
    if (statusCode >= 400) {
      final errorBody = await _readStreamBody(response.data?.stream);
      throw AppException(
        type: AppExceptionType.server,
        statusCode: statusCode,
        message: _parseErrorMessage(errorBody) ?? 'AI 流式服务异常 ($statusCode)',
      );
    }

    final stream = response.data?.stream;
    if (stream == null) {
      throw const AppException(
        type: AppExceptionType.unknown,
        message: '无法建立流式连接',
      );
    }

    var buffer = '';
    var receivedChunks = false;

    await for (final chunk in stream.cast<List<int>>().transform(utf8.decoder)) {
      buffer += chunk.replaceAll('\r\n', '\n');

      while (true) {
        final separator = buffer.indexOf('\n\n');
        if (separator < 0) {
          break;
        }

        final block = buffer.substring(0, separator);
        buffer = buffer.substring(separator + 2);
        final event = _parseSseBlock(block);
        if (event != null) {
          receivedChunks = true;
          yield event;
        }
      }

      final lines = buffer.split('\n');
      if (lines.length > 1) {
        buffer = lines.removeLast();
        for (final line in lines) {
          final event = _parseSseBlock(line);
          if (event != null) {
            receivedChunks = true;
            yield event;
          }
        }
        buffer += '\n';
      }
    }

    if (buffer.trim().isNotEmpty) {
      final trailing = _parseSseBlock(buffer);
      if (trailing != null) {
        receivedChunks = true;
        yield trailing;
      }
    }

    if (!receivedChunks) {
      throw const AppException(
        type: AppExceptionType.unknown,
        message: '流式响应为空',
      );
    }
  }

  @override
  Future<List<AiConversationSummary>> fetchConversations({
    int page = 1,
    int pageSize = 30,
  }) async {
    final response = await _api.apiAiTutorConversationsGet(
      page: page,
      pageSize: pageSize,
    );

    final items = response.data?.data?.items;
    if (items == null) {
      throw const AppException(
        type: AppExceptionType.unknown,
        message: '获取会话列表失败',
      );
    }

    return items
        .map(
          (item) => AiConversationSummary(
            id: item.id,
            mode: AiTutorMode.fromApi(item.mode.value),
            updatedAt: item.updatedAt,
            lastMessagePreview: item.lastMessage?.content,
          ),
        )
        .toList(growable: false);
  }

  @override
  Future<List<AiChatMessage>> fetchConversationMessages(
    int conversationId,
  ) async {
    final response = await _api.apiAiTutorConversationsIdGet(
      id: conversationId.toString(),
    );

    final messages = response.data?.data?.messages;
    if (messages == null) {
      throw const AppException(
        type: AppExceptionType.unknown,
        message: '获取会话详情失败',
      );
    }

    return messages
        .map(
          (m) => AiChatMessage(
            id: m.id.toString(),
            role: _mapRole(m.role),
            content: m.content,
            createdAt: m.createdAt,
          ),
        )
        .where((m) => m.role != AiMessageRole.system)
        .toList(growable: false);
  }

  ApiAiTutorChatPostRequestModeEnum _requestMode(AiTutorMode mode) {
    return switch (mode) {
      AiTutorMode.study => ApiAiTutorChatPostRequestModeEnum.study,
      AiTutorMode.emotion => ApiAiTutorChatPostRequestModeEnum.emotion,
      AiTutorMode.auto => ApiAiTutorChatPostRequestModeEnum.study,
    };
  }

  AiMessageRole _mapRole(
    ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInnerRoleEnum role,
  ) {
    return switch (role) {
      ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInnerRoleEnum.USER =>
        AiMessageRole.user,
      ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInnerRoleEnum.ASSISTANT =>
        AiMessageRole.assistant,
      ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInnerRoleEnum.SYSTEM =>
        AiMessageRole.system,
    };
  }

  AiStreamChunk? _parseSseBlock(String rawBlock) {
    final block = rawBlock.trim();
    if (block.isEmpty) {
      return null;
    }

    String? eventType;
    final dataLines = <String>[];

    for (final line in block.split('\n')) {
      final trimmed = line.trim();
      if (trimmed.isEmpty || trimmed.startsWith(':')) {
        continue;
      }
      if (trimmed.startsWith('event:')) {
        eventType = trimmed.substring(6).trim();
        continue;
      }
      if (trimmed.startsWith('data:')) {
        dataLines.add(trimmed.substring(5).trim());
      }
    }

    if (dataLines.isEmpty) {
      return _parseSsePayload('', eventType: eventType);
    }

    return _parseSsePayload(dataLines.join('\n'), eventType: eventType);
  }

  AiStreamChunk? _parseSsePayload(
    String payload, {
    String? eventType,
  }) {
    final trimmed = payload.trim();
    if (trimmed.isEmpty && eventType == null) {
      return null;
    }

    if (trimmed == '[DONE]') {
      return const AiStreamChunk(text: '', done: true, event: 'done');
    }

    try {
      final json = jsonDecode(trimmed);
      if (json is! Map) {
        if (trimmed.isNotEmpty) {
          return AiStreamChunk(text: trimmed, event: eventType);
        }
        return null;
      }

      final map = json.map((k, v) => MapEntry(k.toString(), v));
      final event = map['event']?.toString() ?? eventType;
      final done = map['done'] == true ||
          event == 'done' ||
          event == 'message_end' ||
          event == 'text_complete';

      if (event == 'error') {
        final errorText = _extractStreamText(map);
        throw AppException(
          type: AppExceptionType.server,
          message: map['message']?.toString() ??
              (errorText.isNotEmpty ? errorText : 'AI 流式响应出错'),
        );
      }

      final text = _extractStreamText(map, event: event);
      final conversationId = _parseConversationId(
        map['conversationId'] ?? map['conversation_id'],
      );

      if (text.isEmpty && !done && conversationId == null) {
        return done
            ? AiStreamChunk(
                text: '',
                conversationId: conversationId,
                done: true,
                event: event,
              )
            : null;
      }

      return AiStreamChunk(
        text: text,
        conversationId: conversationId,
        done: done,
        event: event,
      );
    } catch (error) {
      if (error is AppException) {
        rethrow;
      }
      if (trimmed.isNotEmpty) {
        return AiStreamChunk(text: trimmed, event: eventType);
      }
      return null;
    }
  }

  String _extractStreamText(Map<String, dynamic> map, {String? event}) {
    if (map['code'] != null && map['data'] != null) {
      final inner = map['data'];
      if (inner is Map) {
        final nested = inner.map((k, v) => MapEntry(k.toString(), v));
        final nestedText = _extractStreamText(nested, event: event);
        if (nestedText.isNotEmpty) {
          return nestedText;
        }
      } else if (inner is String && inner.isNotEmpty) {
        return inner;
      }
    }

    for (final key in [
      'text',
      'answer',
      'content',
      'delta',
      'chunk',
      'message',
      'output',
    ]) {
      final value = map[key];
      if (value is String && value.isNotEmpty) {
        return value;
      }
    }

    final nested = map['data'];
    if (nested is Map) {
      final nestedMap = nested.map((k, v) => MapEntry(k.toString(), v));
      return _extractStreamText(nestedMap, event: event);
    }
    if (nested is String && nested.isNotEmpty) {
      return nested;
    }

    return '';
  }

  int? _parseConversationId(Object? raw) {
    if (raw is int) {
      return raw;
    }
    if (raw is String) {
      return int.tryParse(raw);
    }
    return null;
  }

  Future<String> _readStreamBody(Stream<List<int>>? stream) async {
    if (stream == null) {
      return '';
    }
    final chunks = <int>[];
    await for (final chunk in stream) {
      chunks.addAll(chunk);
    }
    return utf8.decode(chunks, allowMalformed: true);
  }

  String? _parseErrorMessage(String raw) {
    final trimmed = raw.trim();
    if (trimmed.isEmpty) {
      return null;
    }
    try {
      final json = jsonDecode(trimmed);
      if (json is Map) {
        final map = json.map((k, v) => MapEntry(k.toString(), v));
        return map['message']?.toString();
      }
    } catch (_) {
      return trimmed;
    }
    return trimmed;
  }
}
