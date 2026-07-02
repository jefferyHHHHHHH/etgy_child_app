import 'package:etgy_openapi_client/etgy_openapi_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../auth/auth_controller.dart';
import '../my_comments_store.dart';

/// 判断当前登录儿童是否可删除该评论。
bool canDeleteOwnComment(WidgetRef ref, VideoComment comment) {
  if (ref.read(myCommentsStoreProvider.notifier).hasComment(comment.id)) {
    return true;
  }

  final userId = ref.read(authControllerProvider).user?.userId;
  return userId != null && comment.authorId == userId;
}
