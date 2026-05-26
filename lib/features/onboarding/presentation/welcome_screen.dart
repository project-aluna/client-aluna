import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/theme/app_typography.dart';
import '../../../core/widgets/app_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.butterCream,
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            
            Expanded(
              flex: 3,
              child: Center(
                child: Image.asset(
                  'assets/images/icon-512.png',
                  width: 160,
                  height: 160,
                ),
              ),
            ),
            
            // Bottom Content Area
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s20, vertical: AppSpacing.s24),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    padding: const EdgeInsets.all(AppSpacing.s24),
                    decoration: BoxDecoration(
                      color: AppColors.butterCream.withValues(alpha: 0.5),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Ruang kecil untuk menata hari tanpa ekspektasi berlebih.',
                          textAlign: TextAlign.center,
                          style: AppTypography.display.copyWith(
                            color: AppColors.cocoaInk,
                            fontSize: 32,
                            height: 1.2,
                          ),
                        ),
                        const SizedBox(height: AppSpacing.s16),
                        Text(
                          'Bukan untuk jadi sempurna, cuma biar hari ini terasa lebih ringan.',
                          textAlign: TextAlign.center,
                          style: AppTypography.body.copyWith(
                            color: AppColors.cocoaInk.withValues(alpha: 0.6),
                          ),
                        ),
                        const SizedBox(height: AppSpacing.s32),
                        SizedBox(
                          width: double.infinity,
                          child: AppButton(
                            text: 'Mulai pelan-pelan',
                            onPressed: () => context.go('/onboarding/goals'),
                          ),
                        ),
                        const SizedBox(height: AppSpacing.s16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Sudah punya akun? ',
                              style: AppTypography.caption.copyWith(
                                color: AppColors.cocoaInk.withValues(alpha: 0.6),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                // TODO: Navigate to Login
                              },
                              child: Text(
                                'Masuk di sini',
                                style: AppTypography.caption.copyWith(
                                  color: AppColors.cocoaInk,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: AppSpacing.s16),
          ],
        ),
      ),
    );
  }
}
