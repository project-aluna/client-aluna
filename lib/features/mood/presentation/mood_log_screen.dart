import 'package:flutter/material.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_typography.dart';

class MoodLogScreen extends StatelessWidget {
  const MoodLogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.butterCream,
      appBar: AppBar(
        title: Text('Mood Log', style: AppTypography.subheading),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Text(
          'Mood Log\n(Coming Soon)',
          textAlign: TextAlign.center,
          style: AppTypography.heading.copyWith(
            color: AppColors.cocoaInk,
          ),
        ),
      ),
    );
  }
}
