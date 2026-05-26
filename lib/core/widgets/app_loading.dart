import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_spacing.dart';
import '../../app/theme/app_typography.dart';

class AppLoading extends StatefulWidget {
  final String? message;

  const AppLoading({
    super.key,
    this.message,
  });

  @override
  State<AppLoading> createState() => _AppLoadingState();
}

class _AppLoadingState extends State<AppLoading> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0.85, end: 1.15).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          ScaleTransition(
            scale: _animation,
            child: Container(
              padding: const EdgeInsets.all(AppSpacing.s20),
              decoration: BoxDecoration(
                color: AppColors.roseClay.withValues(alpha: 0.15),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                LucideIcons.heart, // Placeholder for Aluna logo symbol
                color: AppColors.roseClay,
                size: 40,
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.s24),
          SizedBox(
            width: 24,
            height: 24,
            child: CircularProgressIndicator(
              strokeWidth: 2.5,
              valueColor: const AlwaysStoppedAnimation<Color>(AppColors.roseClay),
              backgroundColor: AppColors.roseClay.withValues(alpha: 0.1),
            ),
          ),
          if (widget.message != null) ...[
            const SizedBox(height: AppSpacing.s16),
            Text(
              widget.message!,
              style: AppTypography.body.copyWith(
                color: AppColors.cocoaInk.withValues(alpha: 0.6),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
