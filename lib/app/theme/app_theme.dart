import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_radius.dart';
import 'app_typography.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: AppColors.roseClay,
      scaffoldBackgroundColor: AppColors.butterCream,
      colorScheme: const ColorScheme.light(
        primary: AppColors.roseClay,
        secondary: AppColors.lavenderMist,
        tertiary: AppColors.peachGlow,
        surface: Colors.white,
        error: Colors.redAccent,
        onPrimary: Colors.white,
        onSecondary: AppColors.cocoaInk,
        onSurface: AppColors.cocoaInk,
      ),
      
      // Text Theme
      textTheme: TextTheme(
        displayLarge: AppTypography.display,
        headlineLarge: AppTypography.heading,
        titleLarge: AppTypography.subheading,
        bodyLarge: AppTypography.body,
        bodyMedium: AppTypography.body.copyWith(fontSize: 13),
        bodySmall: AppTypography.caption,
        labelLarge: AppTypography.tinyLabel,
      ),

      // AppBar Theme
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.butterCream,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: AppTypography.heading.copyWith(color: AppColors.cocoaInk),
        iconTheme: const IconThemeData(color: AppColors.cocoaInk),
      ),

      // Card Theme
      cardTheme: const CardThemeData(
        color: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: AppRadius.card,
        ),
        margin: EdgeInsets.zero,
      ),

      // Input Decoration Theme (Fields)
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        border: OutlineInputBorder(
          borderRadius: AppRadius.input,
          borderSide: BorderSide(
            color: AppColors.cocoaInk.withValues(alpha: 0.08),
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: AppRadius.input,
          borderSide: BorderSide(
            color: AppColors.cocoaInk.withValues(alpha: 0.08),
            width: 1,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: AppRadius.input,
          borderSide: BorderSide(
            color: AppColors.peachGlow,
            width: 1.5,
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: AppRadius.input,
          borderSide: BorderSide(
            color: Colors.redAccent,
            width: 1,
          ),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: AppRadius.input,
          borderSide: BorderSide(
            color: Colors.redAccent,
            width: 1.5,
          ),
        ),
        labelStyle: AppTypography.body.copyWith(color: AppColors.cocoaInk.withValues(alpha: 0.6)),
        hintStyle: AppTypography.body.copyWith(color: AppColors.cocoaInk.withValues(alpha: 0.4)),
      ),

      // Elevated Button Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.roseClay,
          foregroundColor: Colors.white,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: const RoundedRectangleBorder(
            borderRadius: AppRadius.pill,
          ),
          textStyle: AppTypography.body.copyWith(fontWeight: FontWeight.w600),
        ),
      ),

      // Outlined Button Theme
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.roseClay,
          side: const BorderSide(color: AppColors.roseClay, width: 1.5),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: const RoundedRectangleBorder(
            borderRadius: AppRadius.pill,
          ),
          textStyle: AppTypography.body.copyWith(fontWeight: FontWeight.w600),
        ),
      ),

      // Text Button Theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.roseClay,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          textStyle: AppTypography.body.copyWith(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
