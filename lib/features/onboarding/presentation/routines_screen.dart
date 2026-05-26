import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/theme/app_typography.dart';
import '../../../core/widgets/app_button.dart';

/// Placeholder: Choose focus routines screen (Step 3 of Onboarding)
class RoutinesScreen extends StatelessWidget {
  const RoutinesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.butterCream,
      appBar: AppBar(
        title: const Text('Pilih Rutinitas'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.s24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Pilih rutinitas pertamamu',
                style: AppTypography.heading.copyWith(
                  color: AppColors.cocoaInk,
                ),
              ),
              const SizedBox(height: AppSpacing.s8),
              Text(
                'Kamu bisa mulai dengan salah satu template berikut.',
                style: AppTypography.body.copyWith(
                  color: AppColors.cocoaInk.withValues(alpha: 0.6),
                ),
              ),
              const SizedBox(height: AppSpacing.s24),

              // Placeholder for routine template cards
              Expanded(
                child: Center(
                  child: Text(
                    '📋\n\nRoutine template cards\nakan ditampilkan di sini\n\n• Soft Morning\n• Night Reset\n• Skincare Routine\n• Sunday Reset',
                    textAlign: TextAlign.center,
                    style: AppTypography.body.copyWith(
                      color: AppColors.cocoaInk.withValues(alpha: 0.4),
                    ),
                  ),
                ),
              ),

              SizedBox(
                width: double.infinity,
                child: AppButton(
                  text: 'Lanjut',
                  onPressed: () => context.go('/onboarding/reminder'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
