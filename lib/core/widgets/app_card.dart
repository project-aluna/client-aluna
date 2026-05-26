import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_radius.dart';
import '../../app/theme/app_spacing.dart';
import '../../app/theme/app_typography.dart';
import '../../app/theme/app_shadows.dart';

/// Base Card component utilizing Aluna design system spacing, radius, and shadows.
class AppCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final BoxBorder? border;
  final List<BoxShadow>? boxShadow;
  final BorderRadius? borderRadius;
  final double? width;
  final double? height;
  final Gradient? gradient;

  const AppCard({
    super.key,
    required this.child,
    this.padding,
    this.backgroundColor,
    this.border,
    this.boxShadow,
    this.borderRadius,
    this.width,
    this.height,
    this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: width,
      height: height,
      padding: padding ?? const EdgeInsets.all(AppSpacing.s20),
      decoration: BoxDecoration(
        color: gradient == null ? (backgroundColor ?? (isDark ? AppColors.nightSurface : Colors.white)) : null,
        gradient: gradient,
        borderRadius: borderRadius ?? AppRadius.card,
        border: border ?? Border.all(
          color: isDark ? AppColors.nightText.withValues(alpha: 0.05) : AppColors.cocoaInk.withValues(alpha: 0.05),
          width: 1,
        ),
        boxShadow: boxShadow ?? [AppShadows.softCardShadow],
      ),
      child: child,
    );
  }
}

/// Card showing Routine metadata.
class RoutineCard extends StatelessWidget {
  final String title;
  final String time;
  final String category;
  final IconData icon;
  final VoidCallback? onTap;

  const RoutineCard({
    super.key,
    required this.title,
    required this.time,
    required this.category,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: AppRadius.card,
      child: AppCard(
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(AppSpacing.s12),
              decoration: BoxDecoration(
                color: AppColors.lavenderMist.withValues(alpha: 0.15),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: AppColors.lavenderMist, size: 24),
            ),
            const SizedBox(width: AppSpacing.s16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTypography.subheading.copyWith(
                      color: AppColors.cocoaInk,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.s4),
                  Row(
                    children: [
                      Icon(
                        LucideIcons.clock,
                        color: AppColors.cocoaInk.withValues(alpha: 0.5),
                        size: 14,
                      ),
                      const SizedBox(width: AppSpacing.s4),
                      Text(
                        time,
                        style: AppTypography.caption.copyWith(
                          color: AppColors.cocoaInk.withValues(alpha: 0.6),
                        ),
                      ),
                      const SizedBox(width: AppSpacing.s12),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSpacing.s8,
                          vertical: AppSpacing.s4,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.sageBreeze.withValues(alpha: 0.15),
                          borderRadius: AppRadius.pill,
                        ),
                        child: Text(
                          category,
                          style: AppTypography.tinyLabel.copyWith(
                            color: AppColors.sageBreeze,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Icon(
              LucideIcons.chevronRight,
              color: AppColors.cocoaInk.withValues(alpha: 0.3),
            ),
          ],
        ),
      ),
    );
  }
}

/// Card showing Routine flow completion progress for the day.
class DailyRoutineCard extends StatelessWidget {
  final String title;
  final String progressText;
  final double progressPercent;
  final bool isCompleted;
  final VoidCallback? onToggleComplete;
  final VoidCallback? onTap;

  const DailyRoutineCard({
    super.key,
    required this.title,
    required this.progressText,
    required this.progressPercent,
    required this.isCompleted,
    this.onToggleComplete,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: AppRadius.card,
      child: AppCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: onToggleComplete,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isCompleted ? AppColors.sageBreeze : Colors.transparent,
                      border: Border.all(
                        color: isCompleted ? AppColors.sageBreeze : AppColors.cocoaInk.withValues(alpha: 0.2),
                        width: 2,
                      ),
                    ),
                    child: Icon(
                      LucideIcons.check,
                      color: isCompleted ? Colors.white : Colors.transparent,
                      size: 16,
                    ),
                  ),
                ),
                const SizedBox(width: AppSpacing.s16),
                Expanded(
                  child: Text(
                    title,
                    style: AppTypography.subheading.copyWith(
                      color: AppColors.cocoaInk,
                      decoration: isCompleted ? TextDecoration.lineThrough : null,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  progressText,
                  style: AppTypography.caption.copyWith(
                    color: AppColors.cocoaInk.withValues(alpha: 0.6),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.s16),
            ClipRRect(
              borderRadius: AppRadius.pill,
              child: LinearProgressIndicator(
                value: progressPercent,
                backgroundColor: AppColors.cocoaInk.withValues(alpha: 0.05),
                valueColor: const AlwaysStoppedAnimation<Color>(AppColors.sageBreeze),
                minHeight: 6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Compact checklist item card for individual sub-steps in a routine.
class StepCard extends StatelessWidget {
  final String title;
  final bool isCompleted;
  final VoidCallback? onToggle;

  const StepCard({
    super.key,
    required this.title,
    required this.isCompleted,
    this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onToggle,
      borderRadius: AppRadius.small,
      child: AppCard(
        padding: const EdgeInsets.all(AppSpacing.s12),
        borderRadius: AppRadius.small,
        child: Row(
          children: [
            Icon(
              isCompleted ? LucideIcons.checkCircle2 : LucideIcons.circle,
              color: isCompleted ? AppColors.sageBreeze : AppColors.cocoaInk.withValues(alpha: 0.3),
              size: 20,
            ),
            const SizedBox(width: AppSpacing.s12),
            Expanded(
              child: Text(
                title,
                style: AppTypography.body.copyWith(
                  color: AppColors.cocoaInk,
                  decoration: isCompleted ? TextDecoration.lineThrough : null,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Card showcasing daily Mood log snapshot.
class MoodCard extends StatelessWidget {
  final String moodEmoji;
  final String moodName;
  final int energyScore;
  final int stressScore;
  final String? note;
  final VoidCallback? onTap;

  const MoodCard({
    super.key,
    required this.moodEmoji,
    required this.moodName,
    required this.energyScore,
    required this.stressScore,
    this.note,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: AppRadius.card,
      child: AppCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  moodEmoji,
                  style: const TextStyle(fontSize: 32),
                ),
                const SizedBox(width: AppSpacing.s16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mood Hari Ini',
                        style: AppTypography.caption.copyWith(
                          color: AppColors.cocoaInk.withValues(alpha: 0.5),
                        ),
                      ),
                      Text(
                        moodName,
                        style: AppTypography.subheading.copyWith(
                          color: AppColors.cocoaInk,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.s16),
            Row(
              children: [
                _buildMetrics('Energy', energyScore),
                const SizedBox(width: AppSpacing.s24),
                _buildMetrics('Stress', stressScore),
              ],
            ),
            if (note != null && note!.isNotEmpty) ...[
              const SizedBox(height: AppSpacing.s12),
              Divider(color: AppColors.cocoaInk.withValues(alpha: 0.05)),
              const SizedBox(height: AppSpacing.s4),
              Text(
                '“$note”',
                style: AppTypography.body.copyWith(
                  color: AppColors.cocoaInk.withValues(alpha: 0.7),
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildMetrics(String label, int score) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTypography.caption.copyWith(
            color: AppColors.cocoaInk.withValues(alpha: 0.5),
          ),
        ),
        const SizedBox(height: AppSpacing.s4),
        Row(
          children: List.generate(5, (index) {
            final active = index < score;
            return Container(
              margin: const EdgeInsets.only(right: 2),
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: active
                    ? (label == 'Energy' ? AppColors.peachGlow : AppColors.roseClay)
                    : AppColors.cocoaInk.withValues(alpha: 0.1),
              ),
            );
          }),
        ),
      ],
    );
  }
}

/// Card for weekly Reflection insight summaries.
class ReflectionCard extends StatelessWidget {
  final String title;
  final String insightText;
  final String completionPercent;
  final double averageMood;
  final VoidCallback? onTap;

  const ReflectionCard({
    super.key,
    required this.title,
    required this.insightText,
    required this.completionPercent,
    required this.averageMood,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: AppRadius.card,
      child: AppCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: AppTypography.subheading.copyWith(
                    color: AppColors.cocoaInk,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  LucideIcons.sparkles,
                  color: AppColors.peachGlow,
                  size: 20,
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.s12),
            Text(
              insightText,
              style: AppTypography.body.copyWith(
                color: AppColors.cocoaInk.withValues(alpha: 0.8),
              ),
            ),
            const SizedBox(height: AppSpacing.s16),
            Row(
              children: [
                _buildInsightMetric('Completion', completionPercent),
                const SizedBox(width: AppSpacing.s24),
                _buildInsightMetric('Avg Mood', '${averageMood.toStringAsFixed(1)}/5.0'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInsightMetric(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTypography.caption.copyWith(
            color: AppColors.cocoaInk.withValues(alpha: 0.5),
          ),
        ),
        const SizedBox(height: AppSpacing.s4),
        Text(
          value,
          style: AppTypography.body.copyWith(
            color: AppColors.cocoaInk,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

/// Card promoting Premium features with a beautiful gradient styling.
class PremiumCard extends StatelessWidget {
  final VoidCallback? onUpgradeTap;

  const PremiumCard({
    super.key,
    this.onUpgradeTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppCard(
      gradient: AppColors.morningGlow,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: AppColors.cocoaInk,
                  borderRadius: AppRadius.pill,
                ),
                child: Row(
                  children: [
                    const Icon(LucideIcons.crown, color: AppColors.peachGlow, size: 14),
                    const SizedBox(width: AppSpacing.s4),
                    Text(
                      'PREMIUM',
                      style: AppTypography.tinyLabel.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.s16),
          Text(
            'Buka Semua Potensi Aluna',
            style: AppTypography.heading.copyWith(
              color: AppColors.cocoaInk,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: AppSpacing.s8),
          Text(
            'Dapatkan akses ke rutinitas tak terbatas, wawasan mingguan mendalam, dan tema visual premium.',
            style: AppTypography.body.copyWith(
              color: AppColors.cocoaInk.withValues(alpha: 0.8),
            ),
          ),
          const SizedBox(height: AppSpacing.s16),
          ElevatedButton(
            onPressed: onUpgradeTap,
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.cocoaInk,
              foregroundColor: Colors.white,
              shape: const StadiumBorder(),
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s20, vertical: 12),
            ),
            child: Text(
              'Pelajari Lebih Lanjut',
              style: AppTypography.body.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

/// Dashed Border Card used for placeholders/empty actions.
class EmptyStateCard extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback? onTap;

  const EmptyStateCard({
    super.key,
    required this.text,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: AppRadius.card,
      child: CustomPaint(
        painter: DashedBorderPainter(
          color: AppColors.cocoaInk.withValues(alpha: 0.15),
          radius: AppRadius.cardValue,
          strokeWidth: 1.5,
        ),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(AppSpacing.s32),
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: AppColors.cocoaInk.withValues(alpha: 0.3),
                size: 32,
              ),
              const SizedBox(height: AppSpacing.s12),
              Text(
                text,
                style: AppTypography.body.copyWith(
                  color: AppColors.cocoaInk.withValues(alpha: 0.5),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DashedBorderPainter extends CustomPainter {
  final Color color;
  final double radius;
  final double strokeWidth;

  DashedBorderPainter({
    required this.color,
    required this.radius,
    required this.strokeWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    final path = Path()
      ..addRRect(RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width, size.height),
        Radius.circular(radius),
      ));

    // Custom dashing code
    final dashWidth = 8.0;
    final dashSpace = 6.0;

    final dashPath = Path();
    double distance = 0.0;

    for (final PathMetric pathMetric in path.computeMetrics()) {
      while (distance < pathMetric.length) {
        final len = min(dashWidth, pathMetric.length - distance);
        dashPath.addPath(
          pathMetric.extractPath(distance, distance + len),
          Offset.zero,
        );
        distance += dashWidth + dashSpace;
      }
    }

    canvas.drawPath(dashPath, paint);
  }

  @override
  bool shouldRepaint(covariant DashedBorderPainter oldDelegate) {
    return oldDelegate.color != color ||
        oldDelegate.radius != radius ||
        oldDelegate.strokeWidth != strokeWidth;
  }
}
