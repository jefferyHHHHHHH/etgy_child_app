import 'dart:convert';

import 'package:etgy_openapi_client/etgy_openapi_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/storage/secure_storage_service.dart';

class MyCommentsState {
  const MyCommentsState({
    required this.comments,
    required this.isLoaded,
  });

  factory MyCommentsState.empty() => const MyCommentsState(
        comments: [],
        isLoaded: false,
      );

  final List<VideoComment> comments;
  final bool isLoaded;

  MyCommentsState copyWith({
    List<VideoComment>? comments,
    bool? isLoaded,
  }) {
    return MyCommentsState(
      comments: comments ?? this.comments,
      isLoaded: isLoaded ?? this.isLoaded,
    );
  }
}

final myCommentsStoreProvider =
    NotifierProvider<MyCommentsNotifier, MyCommentsState>(
  MyCommentsNotifier.new,
);

class MyCommentsNotifier extends Notifier<MyCommentsState> {
  static const String _storageKey = 'my_video_comments_v1';

  bool _loadScheduled = false;

  @override
  MyCommentsState build() {
    if (!_loadScheduled) {
      _loadScheduled = true;
      Future.microtask(_load);
    }
    return MyCommentsState.empty();
  }

  List<VideoComment> commentsForVideo(int videoId) {
    return state.comments.where((c) => c.videoId == videoId).toList();
  }

  bool hasComment(int commentId) {
    return state.comments.any((c) => c.id == commentId);
  }

  Future<void> addComment(VideoComment comment) async {
    final updated = [
      comment,
      ...state.comments.where((c) => c.id != comment.id),
    ];
    state = state.copyWith(comments: updated);
    await _persist();
  }

  Future<void> upsertComment(VideoComment comment) async {
    final replaced = state.comments.map((c) => c.id == comment.id ? comment : c).toList();
    final changed = replaced.any((c) => c.id == comment.id);
    final updated = changed ? replaced : [comment, ...replaced];
    state = state.copyWith(comments: updated);
    await _persist();
  }

  Future<void> clear() async {
    state = MyCommentsState(comments: const [], isLoaded: true);
    await ref.read(secureStorageServiceProvider).delete(key: _storageKey);
  }

  Future<void> _load() async {
    final raw = await ref.read(secureStorageServiceProvider).read(key: _storageKey);
    if (raw == null || raw.trim().isEmpty) {
      state = state.copyWith(isLoaded: true);
      return;
    }
    try {
      final list = jsonDecode(raw) as List<dynamic>;
      final comments = list
          .cast<Map<String, dynamic>>()
          .map(VideoComment.fromJson)
          .toList();
      state = MyCommentsState(comments: comments, isLoaded: true);
    } catch (_) {
      state = state.copyWith(isLoaded: true);
    }
  }

  Future<void> _persist() async {
    try {
      final raw = jsonEncode(state.comments.map((c) => c.toJson()).toList());
      await ref
          .read(secureStorageServiceProvider)
          .write(key: _storageKey, value: raw);
    } catch (_) {}
  }
}
