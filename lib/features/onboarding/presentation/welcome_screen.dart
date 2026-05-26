import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/theme/app_typography.dart';
import '../../../core/widgets/app_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.butterCream,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.s24),
          child: Column(
            children: [
              const Spacer(),
              // Logo
              Image.asset(
                'assets/images/icon-512.png',
                width: 140,
                height: 140,
              ),
              const SizedBox(height: AppSpacing.s24),

              // Title
              Text(
                'Selamat datang\ndi Aluna',
                textAlign: TextAlign.center,
                style: AppTypography.display.copyWith(
                  color: AppColors.cocoaInk,
                ),
              ),
              const SizedBox(height: AppSpacing.s16),

              // Subtitle
              Text(
                'A softer way to get your life together.\nMari mulai perjalananmu menuju hari yang lebih teratur.',
                textAlign: TextAlign.center,
                style: AppTypography.body.copyWith(
                  color: AppColors.cocoaInk.withValues(alpha: 0.6),
                ),
              ),

              const Spacer(),

              // CTA Button
              SizedBox(
                width: double.infinity,
                child: AppButton(
                  text: 'Mulai Sekarang',
                  onPressed: () => context.go('/onboarding/goals'),
                ),
              ),
              const SizedBox(height: AppSpacing.s16),
            ],
          ),
        ),
      ),
    );
  }
}
