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

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 8),
    )..repeat(reverse: true);
    
    _animation = Tween<double>(begin: 0.9, end: 1.1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOutSine)
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.butterCream,
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            
            // Visual Area with Blobs
            Expanded(
              flex: 3,
              child: Center(
                child: SizedBox(
                  width: 280,
                  height: 280,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      // Blob 1
                      AnimatedBuilder(
                        animation: _animation,
                        builder: (context, child) {
                          return Transform.scale(
                            scale: _animation.value,
                            child: child,
                          );
                        },
                        child: Container(
                          width: 240,
                          height: 240,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.roseClay.withValues(alpha: 0.4),
                          ),
                        ),
                      ),
                      // Blob 2 (Offset and different scale)
                      AnimatedBuilder(
                        animation: _animation,
                        builder: (context, child) {
                          return Transform.scale(
                            scale: 2.0 - _animation.value,
                            child: child,
                          );
                        },
                        child: Transform.translate(
                          offset: const Offset(-20, 20),
                          child: Container(
                            width: 200,
                            height: 200,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.sageBreeze.withValues(alpha: 0.3),
                            ),
                          ),
                        ),
                      ),
                      // Blur Effect over blobs
                      Positioned.fill(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                          child: Container(
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                      // Central container or image
                      Image.asset(
                        'assets/images/icon-512.png',
                        width: 160,
                        height: 160,
                      ),
                    ],
                  ),
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
