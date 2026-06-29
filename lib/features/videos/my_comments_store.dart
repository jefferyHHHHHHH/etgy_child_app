import 'dart:convert';

import 'package:etgy_openapi_client/etgy_openapi_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/storage/secure_storage_service.dart';
import 'data/video_repository.dart';

class MyCommentsState {
  const MyCommentsState({
    required this.comments,
    required this.isLoaded,
    this.isRefreshing = false,
  });

  factory MyCommentsState.empty() => const MyCommentsState(
        comments: [],
        isLoaded: false,
      );

  final List<VideoComment> comments;
  final bool isLoaded;
  final bool isRefreshing;

  MyCommentsState copyWith({
    List<VideoComment>? comments,
    bool? isLoaded,
    bool? isRefreshing,
  }) {
    return MyCommentsState(
      comments: comments ?? this.comments,
      isLoaded: isLoaded ?? this.isLoaded,
      isRefreshing: isRefreshing ?? this.isRefreshing,
    );
  }
}

final myCommentsStoreProvider =
    NotifierProvider<MyCommentsNotifier, MyCommentsState>(
  MyCommentsNotifier.new,
);

class MyCommentsNotifier extends Notifier<MyCommentsState> {
  static const String _storageKey = 'my_video_comments_v1';

  int _loadGeneration = 0;
  bool _bootstrapScheduled = false;

  @override
  MyCommentsState build() {
    if (!_bootstrapScheduled) {
      _bootstrapScheduled = true;
      Future.microtask(_bootstrap);
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
    final updated = _mergeComments(
      [comment],
      state.comments,
    );
    state = state.copyWith(comments: updated, isLoaded: true);
    await _persist();
  }

  Future<void> upsertComment(VideoComment comment) async {
    state = state.copyWith(
      comments: _mergeComments([comment], state.comments),
      isLoaded: true,
    );
    await _persist();
  }

  Future<void> refreshFromServer() async {
    if (state.isRefreshing) return;

    state = state.copyWith(isRefreshing: true);
    try {
      final remote = await ref.read(videoRepositoryProvider).fetchMyComments(
            pageSize: 50,
          );
      state = state.copyWith(
        comments: _mergeComments(remote, state.comments),
        isLoaded: true,
        isRefreshing: false,
      );
      await _persist();
    } catch (_) {
      state = state.copyWith(isRefreshing: false);
    }
  }

  Future<void> refreshForVideo(int videoId) async {
    try {
      final remote = await ref.read(videoRepositoryProvider).fetchMyComments(
            videoId: videoId,
            pageSize: 50,
          );
      final others = state.comments.where((c) => c.videoId != videoId);
      state = state.copyWith(
        comments: _mergeComments(remote, others.toList()),
        isLoaded: true,
      );
      await _persist();
    } catch (_) {
      // 接口未部署或网络失败时保留本地缓存。
    }
  }

  Future<void> clear() async {
    state = const MyCommentsState(comments: [], isLoaded: true);
    await ref.read(secureStorageServiceProvider).delete(key: _storageKey);
  }

  Future<void> _bootstrap() async {
    await _loadFromStorage();
    await refreshFromServer();
  }

  Future<void> _loadFromStorage() async {
    final generation = ++_loadGeneration;
    final raw = await ref.read(secureStorageServiceProvider).read(key: _storageKey);
    if (generation != _loadGeneration) return;

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
      if (generation != _loadGeneration) return;

      state = state.copyWith(
        comments: _mergeComments(comments, state.comments),
        isLoaded: true,
      );
    } catch (_) {
      if (generation != _loadGeneration) return;
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

  static List<VideoComment> _mergeComments(
    List<VideoComment> primary,
    List<VideoComment> secondary,
  ) {
    final map = <int, VideoComment>{
      for (final comment in secondary) comment.id: comment,
    };
    for (final comment in primary) {
      map[comment.id] = comment;
    }

    final merged = map.values.toList()
      ..sort((a, b) => b.createdAt.compareTo(a.createdAt));
    return merged;
  }
}
