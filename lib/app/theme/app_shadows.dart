import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_radius.dart';

class AppShadows {
  AppShadows._();

  static final BoxShadow softCardShadow = BoxShadow(
    color: AppColors.cocoaInk.withValues(alpha: 0.06),
    offset: const Offset(0, 8),
    blurRadius: 24,
    spreadRadius: -4,
  );

  static final BoxShadow floatingButtonShadow = BoxShadow(
    color: AppColors.cocoaInk.withValues(alpha: 0.12),
    offset: const Offset(0, 6),
    blurRadius: 16,
    spreadRadius: -2,
  );

  static final BoxShadow subtleGlowShadow = BoxShadow(
    color: AppColors.peachGlow.withValues(alpha: 0.15),
    offset: const Offset(0, 4),
    blurRadius: 12,
    spreadRadius: 2,
  );

  // Reusable Surface BoxDecorations
  static final BoxDecoration tintedSurface = BoxDecoration(
    color: AppColors.butterCream,
    borderRadius: AppRadius.card,
    border: Border.all(
      color: AppColors.cocoaInk.withValues(alpha: 0.04),
      width: 1,
    ),
  );

  static final BoxDecoration gradientSurface = BoxDecoration(
    gradient: AppColors.morningGlow,
    borderRadius: AppRadius.card,
  );

  static final BoxDecoration darkSurface = BoxDecoration(
    color: AppColors.nightSurface,
    borderRadius: AppRadius.card,
  );
}
