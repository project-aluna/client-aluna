import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/theme/app_typography.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_loading.dart';

/// Placeholder: Generate first Daily Flow screen (Step 5 of Onboarding)
class GenerateFlowScreen extends StatefulWidget {
  const GenerateFlowScreen({super.key});

  @override
  State<GenerateFlowScreen> createState() => _GenerateFlowScreenState();
}

class _GenerateFlowScreenState extends State<GenerateFlowScreen> {
  bool _isGenerating = true;

  @override
  void initState() {
    super.initState();
    _generateFlow();
  }

  Future<void> _generateFlow() async {
    // Simulate generating the first daily flow
    await Future.delayed(const Duration(seconds: 3));
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.s24),
          child: Column(
            children: [
              const Spacer(),
              if (_isGenerating) ...[
                const AppLoading(
                  message: 'Menyiapkan Daily Flow pertamamu...',
                ),
              ] else ...[
                const Text(
                  '🎉',
                  style: TextStyle(fontSize: 64),
                ),
                const SizedBox(height: AppSpacing.s24),
                Text(
                  'Kamu siap!',
                  style: AppTypography.display.copyWith(
                    color: AppColors.cocoaInk,
                  ),
                ),
                const SizedBox(height: AppSpacing.s12),
                Text(
                  'Daily Flow pertamamu sudah siap.\nMulai hari ini dengan langkah kecil.',
                  textAlign: TextAlign.center,
                  style: AppTypography.body.copyWith(
                    color: AppColors.cocoaInk.withValues(alpha: 0.6),
                  ),
                ),
              ],
              const Spacer(),
              if (!_isGenerating)
                SizedBox(
                  width: double.infinity,
                  child: AppButton(
                    text: 'Mulai Harimu',
                    variant: AppButtonVariant.softGradient,
                    onPressed: () => context.go('/today'),
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
