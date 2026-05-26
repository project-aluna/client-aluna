import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/theme/app_typography.dart';
import '../../../core/widgets/app_button.dart';

/// Placeholder: Choose lifestyle goals screen (Step 2 of Onboarding)
class GoalsScreen extends StatelessWidget {
  const GoalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.butterCream,
      appBar: AppBar(
        title: const Text('Pilih Tujuanmu'),
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
                'Apa yang ingin kamu capai?',
                style: AppTypography.heading.copyWith(
                  color: AppColors.cocoaInk,
                ),
              ),
              const SizedBox(height: AppSpacing.s8),
              Text(
                'Pilih maksimal 3 tujuan yang paling relevan untukmu.',
                style: AppTypography.body.copyWith(
                  color: AppColors.cocoaInk.withValues(alpha: 0.6),
                ),
              ),
              const SizedBox(height: AppSpacing.s24),

              // Placeholder for lifestyle goal cards
              Expanded(
                child: Center(
                  child: Text(
                    '🎯\n\nLifestyle goal cards\nakan ditampilkan di sini',
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
                  onPressed: () => context.go('/onboarding/routines'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
