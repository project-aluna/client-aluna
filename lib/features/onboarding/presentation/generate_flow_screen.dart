import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/theme/app_typography.dart';
import '../../../core/widgets/app_button.dart';

/// Placeholder: Generate first Daily Flow screen (Step 5 of Onboarding)
class GenerateFlowScreen extends StatefulWidget {
  const GenerateFlowScreen({super.key});

  @override
  State<GenerateFlowScreen> createState() => _GenerateFlowScreenState();
}

class _GenerateFlowScreenState extends State<GenerateFlowScreen> with SingleTickerProviderStateMixin {
  bool _isGenerating = true;
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2500),
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0.8, end: 1.2).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOutSine),
    );

    _generateFlow();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _generateFlow() async {
    // Simulate generating the first daily flow
    await Future.delayed(const Duration(seconds: 4));
    if (mounted) {
      setState(() {
        _isGenerating = false;
        _controller.stop();
        _controller.animateTo(1.0, duration: const Duration(milliseconds: 500), curve: Curves.easeOut);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.butterCream,
      body: SafeArea(
        child: Stack(
          children: [
            // Calming abstract background elements
            Center(
              child: AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Transform.scale(
                    scale: _animation.value,
                    child: child,
                  );
                },
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.sageBreeze.withValues(alpha: 0.2),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.roseClay.withValues(alpha: 0.1),
                        blurRadius: 80,
                        spreadRadius: 40,
                      )
                    ]
                  ),
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(AppSpacing.s24),
              child: Column(
                children: [
                  const Spacer(),
                  
                  // Center Content
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 800),
                    child: _isGenerating
                        ? Column(
                            key: const ValueKey('generating'),
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(height: 40),
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(20),
                                decoration: const BoxDecoration(
                                  color: AppColors.roseClay,
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  LucideIcons.sparkles,
                                  color: Colors.white,
                                  size: 48,
                                ),
                              ),
                              const SizedBox(height: AppSpacing.s32),
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
                  
                  const Spacer(),
                  
                  // Bottom Button (only visible when done)
                  AnimatedOpacity(
                    duration: const Duration(milliseconds: 500),
                    opacity: _isGenerating ? 0.0 : 1.0,
                    child: _isGenerating 
                        ? const SizedBox(height: 60)
                        : SizedBox(
                            width: double.infinity,
                            child: AppButton(
                              text: 'Masuk ke Aluna',
                              icon: LucideIcons.arrowRight,
                              onPressed: () => context.go('/today'),
                            ),
                          ),
                  ),
                  const SizedBox(height: AppSpacing.s16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
