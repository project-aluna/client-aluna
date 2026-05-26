import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_spacing.dart';
import '../../app/theme/app_typography.dart';
import 'app_button.dart';

class AppErrorView extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback? onRetry;

  const AppErrorView({
    super.key,
    this.title = 'Terjadi Kesalahan',
    this.description = 'Gagal memuat data. Silakan periksa koneksi Anda dan coba lagi.',
    this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(AppSpacing.s24),
              decoration: BoxDecoration(
                color: AppColors.roseClay.withValues(alpha: 0.15),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                LucideIcons.alertTriangle,
                color: AppColors.roseClay,
                size: 48,
              ),
            ),
            const SizedBox(height: AppSpacing.s24),
            Text(
              title,
              style: AppTypography.heading.copyWith(
                color: AppColors.cocoaInk,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSpacing.s8),
            Text(
              description,
              style: AppTypography.body.copyWith(
                color: AppColors.cocoaInk.withValues(alpha: 0.6),
              ),
              textAlign: TextAlign.center,
            ),
            if (onRetry != null) ...[
              const SizedBox(height: AppSpacing.s24),
              AppButton(
                text: 'Coba Lagi',
                onPressed: onRetry,
                variant: AppButtonVariant.secondary,
                icon: LucideIcons.refreshCw,
                width: 180,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
