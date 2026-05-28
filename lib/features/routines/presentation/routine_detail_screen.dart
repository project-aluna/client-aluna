import 'package:flutter/material.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_typography.dart';

class RoutineDetailScreen extends StatelessWidget {
  const RoutineDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.butterCream,
      appBar: AppBar(
        title: Text('Routine Detail', style: AppTypography.subheading),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Text(
          'Routine Detail\n(Coming Soon)',
          textAlign: TextAlign.center,
          style: AppTypography.heading.copyWith(
            color: AppColors.cocoaInk,
          ),
        ),
      ),
    );
  }
}
