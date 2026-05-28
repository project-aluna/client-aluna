import 'package:flutter/material.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_typography.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.butterCream,
      appBar: AppBar(
        title: Text('Subscription', style: AppTypography.subheading),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Text(
          'Subscription\n(Coming Soon)',
          textAlign: TextAlign.center,
          style: AppTypography.heading.copyWith(
            color: AppColors.cocoaInk,
          ),
        ),
      ),
    );
  }
}
