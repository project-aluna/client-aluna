import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/theme/app_typography.dart';
import '../../../core/widgets/app_button.dart';

/// Final Onboarding screen — Logo + overlay text with atmospheric animation
class GenerateFlowScreen extends StatefulWidget {
  const GenerateFlowScreen({super.key});

  @override
  State<GenerateFlowScreen> createState() => _GenerateFlowScreenState();
}

class _GenerateFlowScreenState extends State<GenerateFlowScreen>
    with TickerProviderStateMixin {
  bool _isGenerating = true;

  late AnimationController _pulseController;
  late Animation<double> _pulseAnimation;

  late AnimationController _fadeController;
  late Animation<double> _logoFade;
  late Animation<double> _textFade;

  @override
  void initState() {
    super.initState();

    // Pulsing glow animation (ambient, 8s loop)
    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 8),
    )..repeat(reverse: true);

    _pulseAnimation = Tween<double>(begin: 0.6, end: 1.0).animate(
      CurvedAnimation(parent: _pulseController, curve: Curves.easeInOutQuart),
    );

    // Fade-in sequence for logo and text
    _fadeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1800),
    );

    _logoFade = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _fadeController,
        curve: const Interval(0.0, 0.6, curve: Curves.easeOutCubic),
      ),
    );

    _textFade = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _fadeController,
        curve: const Interval(0.3, 1.0, curve: Curves.easeOutCubic),
      ),
    );

    // Start fade-in after a brief delay
    Future.delayed(const Duration(milliseconds: 300), () {
      if (mounted) _fadeController.forward();
    });

    _generateFlow();
  }

  @override
  void dispose() {
    _pulseController.dispose();
    _fadeController.dispose();
    super.dispose();
  }

  Future<void> _generateFlow() async {
    await Future.delayed(const Duration(seconds: 4));
    if (mounted) {
      setState(() {
        _isGenerating = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.butterCream,
      body: Stack(
        children: [
          // Base cloud background
          Container(
            color: AppColors.softCloud,
          ),

          // Floating blur blob — top right (apricot)
          Positioned(
            top: -100,
            right: -80,
            child: AnimatedBuilder(
              animation: _pulseAnimation,
              builder: (context, child) {
                return Opacity(
                  opacity: 0.5 * _pulseAnimation.value,
                  child: child,
                );
              },
              child: Container(
                width: 320,
                height: 320,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.peachGlow.withValues(alpha: 0.7),
                      blurRadius: 120,
                      spreadRadius: 80,
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Floating blur blob — bottom left (lavender)
          Positioned(
            bottom: -50,
            left: -50,
            child: AnimatedBuilder(
              animation: _pulseAnimation,
              builder: (context, child) {
                return Opacity(
                  opacity: 0.4 * (1.2 - _pulseAnimation.value),
                  child: child,
                );
              },
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.lavenderMist.withValues(alpha: 0.6),
                      blurRadius: 100,
                      spreadRadius: 50,
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Main content
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.s24),
              child: Column(
                children: [
                  const Spacer(flex: 2),

                  // Logo with fade-in
                  AnimatedBuilder(
                    animation: _logoFade,
                    builder: (context, child) {
                      return Opacity(
                        opacity: _logoFade.value,
                        child: Transform.translate(
                          offset: Offset(0, 20 * (1 - _logoFade.value)),
                          child: child,
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/images/icon-512.png',
                      width: 120,
                      height: 120,
                    ),
                  ),

                  const SizedBox(height: AppSpacing.s32),

                  // Overlay text with fade-in
                  AnimatedBuilder(
                    animation: _textFade,
                    builder: (context, child) {
                      return Opacity(
                        opacity: _textFade.value,
                        child: Transform.translate(
                          offset: Offset(0, 16 * (1 - _textFade.value)),
                          child: child,
                        ),
                      );
                    },
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 800),
                      child: _isGenerating
                          ? Column(
                              key: const ValueKey('generating'),
                              children: [
                                Text(
                                  'Menyiapkan ruang tenangmu...',
                                  textAlign: TextAlign.center,
                                  style: AppTypography.display.copyWith(
                                    color: AppColors.cocoaInk,
                                    fontSize: 28,
                                  ),
                                ),
                                const SizedBox(height: AppSpacing.s16),
                                Text(
                                  'Tarik napas dalam, hembuskan perlahan.',
                                  textAlign: TextAlign.center,
                                  style: AppTypography.body.copyWith(
                                    color: AppColors.cocoaInk.withValues(alpha: 0.6),
                                  ),
                                ),
                              ],
                            )
                          : Column(
                              key: const ValueKey('done'),
                              children: [
                                Text(
                                  'Semuanya sudah siap.',
                                  textAlign: TextAlign.center,
                                  style: AppTypography.display.copyWith(
                                    color: AppColors.cocoaInk,
                                    fontSize: 32,
                                    height: 1.2,
                                  ),
                                ),
                                const SizedBox(height: AppSpacing.s16),
                                Text(
                                  'Mari mulai harimu dengan langkah yang ringan.',
                                  textAlign: TextAlign.center,
                                  style: AppTypography.body.copyWith(
                                    color: AppColors.cocoaInk.withValues(alpha: 0.6),
                                  ),
                                ),
                              ],
                            ),
                    ),
                  ),

                  const Spacer(flex: 3),

                  // Bottom Button (fades in when done)
                  AnimatedOpacity(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeOutCubic,
                    opacity: _isGenerating ? 0.0 : 1.0,
                    child: AnimatedSlide(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeOutCubic,
                      offset: _isGenerating
                          ? const Offset(0, 0.3)
                          : Offset.zero,
                      child: SizedBox(
                        width: double.infinity,
                        child: AppButton(
                          text: 'Masuk ke Aluna',
                          onPressed: () => context.go('/today'),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSpacing.s16),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
