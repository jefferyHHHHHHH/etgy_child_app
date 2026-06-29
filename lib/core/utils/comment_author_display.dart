import 'package:etgy_openapi_client/etgy_openapi_client.dart';

class CommentAuthorInfo {
  const CommentAuthorInfo({
    required this.displayName,
    this.roleLabel,
    this.subtitle,
  });

  final String displayName;
  final String? roleLabel;
  final String? subtitle;
}

class CommentAuthorDisplay {
  CommentAuthorDisplay._();

  static CommentAuthorInfo fromComment(VideoComment comment) {
    return fromAuthorObject(
      comment.author,
      fallbackAuthorId: comment.authorId,
    );
  }

  static CommentAuthorInfo fromAuthorObject(
    Object? author, {
    required int fallbackAuthorId,
  }) {
    final map = _asMap(author);
    if (map == null) {
      return CommentAuthorInfo(displayName: '用户 $fallbackAuthorId');
    }

    final username = _stringValue(map['username']);
    final role = _stringValue(map['role']);
    final childProfile = _asMap(map['childProfile']);

    String? realName;
    String? grade;
    String? school;
    if (childProfile != null) {
      realName = _stringValue(childProfile['realName']);
      grade = _stringValue(childProfile['grade']);
      school = _stringValue(childProfile['school']);
    }

    final displayName = (username?.isNotEmpty ?? false)
        ? username!
        : (realName?.isNotEmpty ?? false)
        ? realName!
        : '用户 $fallbackAuthorId';

    final subtitleParts = <String>[
      if (grade != null && grade.isNotEmpty) grade,
      if (school != null && school.isNotEmpty) school,
    ];

    return CommentAuthorInfo(
      displayName: displayName,
      roleLabel: _roleLabel(role),
      subtitle: subtitleParts.isEmpty ? null : subtitleParts.join(' · '),
    );
  }

  static String? _roleLabel(String? role) {
    return switch (role?.toUpperCase()) {
      'CHILD' => '小朋友',
      'VOLUNTEER' => '志愿者',
      'TEACHER' => '老师',
      'ADMIN' => '管理员',
      _ => null,
    };
  }

  static Map<String, dynamic>? _asMap(Object? value) {
    if (value is Map<String, dynamic>) return value;
    if (value is Map) {
      return value.map((key, val) => MapEntry(key.toString(), val));
    }
    return null;
  }

  static String? _stringValue(Object? value) {
    if (value is! String) return null;
    final trimmed = value.trim();
    return trimmed.isEmpty ? null : trimmed;
  }
}
