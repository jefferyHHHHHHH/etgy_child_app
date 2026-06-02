import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/storage/secure_storage_service.dart';

class VideoEngagementStoreState {
  const VideoEngagementStoreState({
    required this.likedIds,
    required this.favoritedIds,
    required this.isLoaded,
  });

  factory VideoEngagementStoreState.empty() {
    return const VideoEngagementStoreState(
      likedIds: <int>{},
      favoritedIds: <int>{},
      isLoaded: false,
    );
  }

  final Set<int> likedIds;
  final Set<int> favoritedIds;
  final bool isLoaded;

  VideoEngagementStoreState copyWith({
    Set<int>? likedIds,
    Set<int>? favoritedIds,
    bool? isLoaded,
  }) {
    return VideoEngagementStoreState(
      likedIds: likedIds ?? this.likedIds,
      favoritedIds: favoritedIds ?? this.favoritedIds,
      isLoaded: isLoaded ?? this.isLoaded,
    );
  }
}

final videoEngagementStoreProvider =
    NotifierProvider<VideoEngagementStoreController, VideoEngagementStoreState>(
  VideoEngagementStoreController.new,
);

class VideoEngagementStoreController extends Notifier<VideoEngagementStoreState> {
  static const String _likedKey = 'videos.likedIds';
  static const String _favoritedKey = 'videos.favoritedIds';

  bool _loadScheduled = false;

  @override
  VideoEngagementStoreState build() {
    if (!_loadScheduled) {
      _loadScheduled = true;
      Future.microtask(_load);
    }

    return VideoEngagementStoreState.empty();
  }

  bool isLiked(int videoId) => state.likedIds.contains(videoId);

  bool isFavorited(int videoId) => state.favoritedIds.contains(videoId);

  Future<void> setLiked({required int videoId, required bool liked}) async {
    final next = {...state.likedIds};
    if (liked) {
      next.add(videoId);
    } else {
      next.remove(videoId);
    }

    state = state.copyWith(likedIds: next);
    await _persist();
  }

  Future<void> setFavorited({required int videoId, required bool favorited}) async {
    final next = {...state.favoritedIds};
    if (favorited) {
      next.add(videoId);
    } else {
      next.remove(videoId);
    }

    state = state.copyWith(favoritedIds: next);
    await _persist();
  }

  Future<void> clear() async {
    state = VideoEngagementStoreState.empty().copyWith(isLoaded: true);
    final storage = ref.read(secureStorageServiceProvider);
    await storage.delete(key: _likedKey);
    await storage.delete(key: _favoritedKey);
  }

  Future<void> _load() async {
    final storage = ref.read(secureStorageServiceProvider);

    final likedRaw = await storage.read(key: _likedKey);
    final favoritedRaw = await storage.read(key: _favoritedKey);

    final likedIds = _parseIdSet(likedRaw);
    final favoritedIds = _parseIdSet(favoritedRaw);

    state = VideoEngagementStoreState(
      likedIds: likedIds,
      favoritedIds: favoritedIds,
      isLoaded: true,
    );
  }

  Future<void> _persist() async {
    final storage = ref.read(secureStorageServiceProvider);

    await storage.write(
      key: _likedKey,
      value: jsonEncode(state.likedIds.toList()..sort()),
    );

    await storage.write(
      key: _favoritedKey,
      value: jsonEncode(state.favoritedIds.toList()..sort()),
    );
  }

  Set<int> _parseIdSet(String? raw) {
    if (raw == null || raw.trim().isEmpty) return <int>{};

    try {
      final decoded = jsonDecode(raw);
      if (decoded is! List) return <int>{};

      return decoded
          .whereType<num>()
          .map((e) => e.toInt())
          .where((id) => id > 0)
          .toSet();
    } catch (_) {
      return <int>{};
    }
  }
}
