import 'package:characters/characters.dart';

/// 客户端评论内容前置校验（第一层快速过滤，减轻后端压力）。
class CommentValidationResult {
  const CommentValidationResult({required this.isValid, this.message});

  final bool isValid;
  final String? message;
}

class CommentContentValidator {
  CommentContentValidator._();

  static const int minLength = 2;
  static const int maxLength = 200;

  /// 明显违规词/短语（与后端敏感词库保持大致一致的前置拦截）。
  static const List<String> _blockedTerms = [
    '法轮',
    '法轮功',
    '去死',
    '去死吧',
    '杀了你',
    '弄死',
    '傻逼',
    '操你',
    '妈的',
    '他妈',
    'nmsl',
    'cnm',
    'sb',
  ];

  static final RegExp _repeatedCharPattern = RegExp(r'(.)\1{4,}');

  static CommentValidationResult validate(String raw) {
    final text = raw.trim();

    if (text.isEmpty) {
      return const CommentValidationResult(
        isValid: false,
        message: '评论内容不能为空',
      );
    }

    if (text.length < minLength) {
      return const CommentValidationResult(
        isValid: false,
        message: '评论内容太短（至少 2 个字）',
      );
    }

    if (text.length > maxLength) {
      return const CommentValidationResult(
        isValid: false,
        message: '评论内容太长（最多 200 字）',
      );
    }

    final normalized = text.toLowerCase().replaceAll(RegExp(r'\s+'), '');
    for (final term in _blockedTerms) {
      if (normalized.contains(term.toLowerCase())) {
        return const CommentValidationResult(
          isValid: false,
          message: '评论包含不当内容，请修改后再发送',
        );
      }
    }

    if (_repeatedCharPattern.hasMatch(text)) {
      return const CommentValidationResult(
        isValid: false,
        message: '评论内容无效，请输入有意义的文字',
      );
    }

    final charCounts = <String, int>{};
    for (final char in text.characters) {
      charCounts[char] = (charCounts[char] ?? 0) + 1;
    }
    final maxRepeat = charCounts.values.fold<int>(0, (a, b) => a > b ? a : b);
    if (maxRepeat > text.length * 0.6 && text.length > 4) {
      return const CommentValidationResult(
        isValid: false,
        message: '评论内容无效，请输入有意义的文字',
      );
    }

    return const CommentValidationResult(isValid: true);
  }
}
