import 'package:flutter/material.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_typography.dart';

class TodayScreen extends StatelessWidget {
  const TodayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.butterCream,
      body: Center(
        child: Text(
          'Today Screen\n(Coming Soon)',
          textAlign: TextAlign.center,
          style: AppTypography.heading.copyWith(
            color: AppColors.cocoaInk,
          ),
        ),
      ),
    );
  }
}
