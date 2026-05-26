import 'package:flutter/material.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_radius.dart';
import '../../app/theme/app_spacing.dart';
import '../../app/theme/app_typography.dart';

/// Extension on [BuildContext] to easily show Aluna styled snackbars and sheets.
extension AppFeedbackContext on BuildContext {
  /// Show a beautiful, floating snackbar.
  void showAppSnackBar({
    required String message,
    bool isError = false,
    SnackBarAction? action,
    Duration duration = const Duration(seconds: 4),
  }) {
    final theme = Theme.of(this);
    final isDark = theme.brightness == Brightness.dark;

    ScaffoldMessenger.of(this).clearSnackBars();
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: AppTypography.body.copyWith(
            color: isError
                ? Colors.white
                : (isDark ? AppColors.cocoaInk : AppColors.butterCream),
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: isError
            ? Colors.red.shade400
            : (isDark ? AppColors.butterCream : AppColors.cocoaInk),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: AppRadius.small,
        ),
        margin: const EdgeInsets.all(AppSpacing.s16),
        duration: duration,
        action: action,
      ),
    );
  }
}
