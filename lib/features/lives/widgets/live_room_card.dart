import 'package:etgy_openapi_client/etgy_openapi_client.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';

class LiveRoomCard extends StatelessWidget {
  const LiveRoomCard({
    super.key,
    required this.live,
    required this.onTap,
    this.enabled = true,
  });

  final LiveRoom live;
  final VoidCallback? onTap;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final statusStyle = _LiveStatusStyle.from(live.status);
    final intro = live.intro?.trim();
    final anchorName = _nestedString(live.anchor, 'realName');
    final collegeName = _nestedString(live.college, 'name');
    final planRange = _formatPlanRange(live.planStartTime, live.planEndTime);
    final actualDuration = _formatActualDuration(live.actualStart, live.actualEnd);
    final countdown = _formatCountdown(live.planStartTime, live.status);

    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: enabled ? onTap : null,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _LiveCoverHeader(
              title: live.title,
              statusStyle: statusStyle,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 12, 14, 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    live.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleMedium,
                  ),
                  if (intro != null && intro.isNotEmpty) ...[
                    const SizedBox(height: 6),
                    Text(
                      intro,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: AppTheme.ink.withValues(alpha: 0.72),
                      ),
                    ),
                  ],
                  const SizedBox(height: 10),
                  _InfoRow(
                    icon: Icons.schedule_rounded,
                    text: planRange,
                  ),
                  if (countdown != null) ...[
                    const SizedBox(height: 6),
                    _InfoRow(
                      icon: Icons.hourglass_top_rounded,
                      text: countdown,
                      accent: statusStyle.accent,
                    ),
                  ],
                  if (actualDuration != null) ...[
                    const SizedBox(height: 6),
                    _InfoRow(
                      icon: Icons.timelapse_rounded,
                      text: actualDuration,
                    ),
                  ],
                  if (anchorName != null || collegeName != null) ...[
                    const SizedBox(height: 6),
                    _InfoRow(
                      icon: Icons.person_outline_rounded,
                      text: [
                        if (anchorName != null) anchorName,
                        if (collegeName != null) collegeName,
                      ].join(' · '),
                    ),
                  ],
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      _MetaPill(
                        text: statusStyle.label,
                        background: statusStyle.accent.withValues(alpha: 0.14),
                        foreground: statusStyle.accent,
                      ),
                      if (live.replayVideoId != null)
                        const _MetaPill(
                          text: '有回放',
                          background: Color(0x1A57E1B1),
                          foreground: AppTheme.mint,
                        ),
                      if (live.status == LiveRoomStatusEnum.LIVING)
                        const _MetaPill(
                          text: '点击进入',
                          background: Color(0x1AFF7F6A),
                          foreground: AppTheme.coral,
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _LiveCoverHeader extends StatelessWidget {
  const _LiveCoverHeader({
    required this.title,
    required this.statusStyle,
  });

  final String title;
  final _LiveStatusStyle statusStyle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      height: 108,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: statusStyle.gradient,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              right: -12,
              top: -18,
              child: Icon(
                Icons.live_tv_rounded,
                size: 112,
                color: Colors.white.withValues(alpha: 0.16),
              ),
            ),
            Positioned(
              left: 14,
              right: 14,
              bottom: 14,
              child: Row(
                children: [
                  _StatusBadge(style: statusStyle),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleMedium?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  if (statusStyle.showPlayIcon)
                    Icon(
                      Icons.play_circle_fill_rounded,
                      color: Colors.white.withValues(alpha: 0.92),
                      size: 30,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _StatusBadge extends StatelessWidget {
  const _StatusBadge({required this.style});

  final _LiveStatusStyle style;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.92),
        borderRadius: BorderRadius.circular(999),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (style.isLive) ...[
              Container(
                width: 8,
                height: 8,
                decoration: const BoxDecoration(
                  color: AppTheme.coral,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 6),
            ],
            Text(
              style.label,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: style.accent,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({
    required this.icon,
    required this.text,
    this.accent,
  });

  final IconData icon;
  final String text;
  final Color? accent;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = accent ?? AppTheme.ink.withValues(alpha: 0.55);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 16, color: color),
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            text,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: AppTheme.ink.withValues(alpha: 0.78),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

class _MetaPill extends StatelessWidget {
  const _MetaPill({
    required this.text,
    required this.background,
    required this.foreground,
  });

  final String text;
  final Color background;
  final Color foreground;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        child: Text(
          text,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: foreground,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}

class _LiveStatusStyle {
  const _LiveStatusStyle({
    required this.label,
    required this.accent,
    required this.gradient,
    this.isLive = false,
    this.showPlayIcon = false,
  });

  final String label;
  final Color accent;
  final List<Color> gradient;
  final bool isLive;
  final bool showPlayIcon;

  factory _LiveStatusStyle.from(LiveRoomStatusEnum status) {
    switch (status) {
      case LiveRoomStatusEnum.LIVING:
        return const _LiveStatusStyle(
          label: '直播中',
          accent: AppTheme.coral,
          gradient: [Color(0xFFFF8A72), Color(0xFFFF6A55)],
          isLive: true,
          showPlayIcon: true,
        );
      case LiveRoomStatusEnum.PUBLISHED:
        return const _LiveStatusStyle(
          label: '即将开始',
          accent: AppTheme.skyBlue,
          gradient: [Color(0xFF6FD0FF), Color(0xFF57C6FF)],
          showPlayIcon: true,
        );
      case LiveRoomStatusEnum.FINISHED:
        return _LiveStatusStyle(
          label: '已结束',
          accent: AppTheme.ink.withValues(alpha: 0.55),
          gradient: [
            AppTheme.ink.withValues(alpha: 0.42),
            AppTheme.ink.withValues(alpha: 0.28),
          ],
        );
      case LiveRoomStatusEnum.PASSED:
        return const _LiveStatusStyle(
          label: '审核通过',
          accent: AppTheme.mint,
          gradient: [Color(0xFF7AE8C0), Color(0xFF57E1B1)],
        );
      case LiveRoomStatusEnum.REVIEW:
        return const _LiveStatusStyle(
          label: '审核中',
          accent: AppTheme.banana,
          gradient: [Color(0xFFFFE08A), Color(0xFFFFD25E)],
        );
      case LiveRoomStatusEnum.REJECTED:
        return const _LiveStatusStyle(
          label: '已驳回',
          accent: Color(0xFFE34D4D),
          gradient: [Color(0xFFFF8A8A), Color(0xFFE34D4D)],
        );
      case LiveRoomStatusEnum.OFFLINE:
        return _LiveStatusStyle(
          label: '已下架',
          accent: AppTheme.ink.withValues(alpha: 0.45),
          gradient: [
            AppTheme.ink.withValues(alpha: 0.30),
            AppTheme.ink.withValues(alpha: 0.18),
          ],
        );
      case LiveRoomStatusEnum.DRAFT:
        return _LiveStatusStyle(
          label: '草稿',
          accent: AppTheme.ink.withValues(alpha: 0.45),
          gradient: [
            AppTheme.ink.withValues(alpha: 0.22),
            AppTheme.ink.withValues(alpha: 0.12),
          ],
        );
    }
  }
}

String? _nestedString(Object? obj, String key) {
  if (obj is Map) {
    final value = obj[key];
    if (value is String && value.trim().isNotEmpty) {
      return value.trim();
    }
  }
  return null;
}

String _formatPlanRange(DateTime start, DateTime end) {
  final localStart = start.toLocal();
  final localEnd = end.toLocal();
  final sameDay = localStart.year == localEnd.year &&
      localStart.month == localEnd.month &&
      localStart.day == localEnd.day;

  final startText =
      '${localStart.month}月${localStart.day}日 ${_two(localStart.hour)}:${_two(localStart.minute)}';
  final endText = sameDay
      ? '${_two(localEnd.hour)}:${_two(localEnd.minute)}'
      : '${localEnd.month}月${localEnd.day}日 ${_two(localEnd.hour)}:${_two(localEnd.minute)}';

  return '计划 $startText - $endText';
}

String? _formatActualDuration(DateTime? start, DateTime? end) {
  if (start == null || end == null) {
    return null;
  }

  final duration = end.difference(start);
  if (duration.isNegative) {
    return null;
  }

  final localStart = start.toLocal();
  final startText =
      '${localStart.month}月${localStart.day}日 ${_two(localStart.hour)}:${_two(localStart.minute)}';

  if (duration.inHours > 0) {
    return '实际直播 $startText 起，时长 ${duration.inHours} 小时 ${duration.inMinutes.remainder(60)} 分钟';
  }
  if (duration.inMinutes > 0) {
    return '实际直播 $startText 起，时长 ${duration.inMinutes} 分钟';
  }
  return '实际直播 $startText 起，时长 ${duration.inSeconds} 秒';
}

String? _formatCountdown(DateTime planStart, LiveRoomStatusEnum status) {
  if (status != LiveRoomStatusEnum.PUBLISHED) {
    return null;
  }

  final diff = planStart.difference(DateTime.now().toUtc());
  if (diff.isNegative) {
    return '已到计划开始时间，等待主播开播';
  }

  if (diff.inDays > 0) {
    return '距开始还有 ${diff.inDays} 天 ${diff.inHours.remainder(24)} 小时';
  }
  if (diff.inHours > 0) {
    return '距开始还有 ${diff.inHours} 小时 ${diff.inMinutes.remainder(60)} 分钟';
  }
  if (diff.inMinutes > 0) {
    return '距开始还有 ${diff.inMinutes} 分钟';
  }
  return '即将开始';
}

String _two(int value) => value.toString().padLeft(2, '0');

bool liveRoomIsWatchable(LiveRoom live) {
  return live.status == LiveRoomStatusEnum.LIVING ||
      live.status == LiveRoomStatusEnum.PUBLISHED;
}
