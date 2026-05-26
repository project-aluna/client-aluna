import 'package:flutter/material.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_radius.dart';
import '../../app/theme/app_spacing.dart';
import '../../app/theme/app_typography.dart';

enum AppButtonVariant { primary, secondary, ghost, softGradient, icon }

class AppButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  final AppButtonVariant variant;
  final IconData? icon;
  final bool isLoading;
  final bool isDisabled;
  final double? width;
  final double? height;

  const AppButton({
    super.key,
    this.text,
    required this.onPressed,
    this.variant = AppButtonVariant.primary,
    this.icon,
    this.isLoading = false,
    this.isDisabled = false,
    this.width,
    this.height,
  }) : assert(
          variant == AppButtonVariant.icon || text != null,
          'Text is required for non-icon buttons',
        );

  const AppButton.icon({
    super.key,
    required IconData this.icon,
    required this.onPressed,
    this.isLoading = false,
    this.isDisabled = false,
    this.width,
    this.height,
  })  : text = null,
        variant = AppButtonVariant.icon;

  @override
  Widget build(BuildContext context) {
    final isActuallyDisabled = isDisabled || onPressed == null || isLoading;

    // Define colors depending on disabled state
    Color textColor;
    Color? backgroundColor;
    Border? border;
    Gradient? gradient;

    if (isActuallyDisabled) {
      textColor = AppColors.cocoaInk.withValues(alpha: 0.3);
      backgroundColor = AppColors.cocoaInk.withValues(alpha: 0.1);
      border = null;
      gradient = null;
    } else {
      switch (variant) {
        case AppButtonVariant.primary:
          backgroundColor = AppColors.roseClay;
          textColor = AppColors.butterCream;
          border = null;
          break;
        case AppButtonVariant.secondary:
          backgroundColor = Colors.transparent;
          textColor = AppColors.roseClay;
          border = Border.all(color: AppColors.roseClay, width: 1.5);
          break;
        case AppButtonVariant.ghost:
          backgroundColor = Colors.transparent;
          textColor = AppColors.sageBreeze;
          border = null;
          break;
        case AppButtonVariant.softGradient:
          gradient = AppColors.morningGlow;
          textColor = AppColors.cocoaInk;
          border = null;
          break;
        case AppButtonVariant.icon:
          backgroundColor = AppColors.butterCream;
          textColor = AppColors.cocoaInk;
          border = Border.all(color: AppColors.cocoaInk.withValues(alpha: 0.1), width: 1);
          break;
      }
    }

    final double defaultHeight = variant == AppButtonVariant.icon ? 48.0 : 52.0;
    final double defaultWidth = variant == AppButtonVariant.icon ? 48.0 : double.infinity;

    Widget content;
    if (isLoading) {
      content = SizedBox(
        height: 20,
        width: 20,
        child: CircularProgressIndicator(
          strokeWidth: 2.0,
          valueColor: AlwaysStoppedAnimation<Color>(textColor),
        ),
      );
    } else {
      if (variant == AppButtonVariant.icon) {
        content = Icon(icon, color: textColor, size: 20);
      } else {
        content = FittedBox(
          fit: BoxFit.scaleDown,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null) ...[
                Icon(icon, color: textColor, size: 18),
                const SizedBox(width: AppSpacing.s8),
              ],
              Text(
                text!,
                style: AppTypography.body.copyWith(
                  color: textColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        );
      }
    }

    Widget button = InkWell(
      onTap: isActuallyDisabled ? null : onPressed,
      borderRadius: variant == AppButtonVariant.icon ? AppRadius.pill : AppRadius.pill,
      child: Container(
        width: width ?? (variant == AppButtonVariant.icon ? defaultWidth : null),
        height: height ?? defaultHeight,
        padding: variant == AppButtonVariant.icon
            ? EdgeInsets.zero
            : const EdgeInsets.symmetric(horizontal: AppSpacing.s24),
        decoration: BoxDecoration(
          color: gradient == null ? backgroundColor : null,
          gradient: gradient,
          borderRadius: AppRadius.pill,
          border: border,
        ),
        alignment: Alignment.center,
        child: content,
      ),
    );

    // Apply constraints if width is double.infinity
    if (width == double.infinity) {
      return SizedBox(
        width: double.infinity,
        child: button,
      );
    }

    return button;
  }
}
