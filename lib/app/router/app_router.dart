import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'route_names.dart';
import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';
import '../theme/app_radius.dart';
import '../theme/app_shadows.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: AppRouteNames.today,
      builder: (context, state) => const DesignSystemShowcaseScreen(),
    ),
  ],
);

/// A temporary screen to showcase and verify the implemented Design System tokens.
class DesignSystemShowcaseScreen extends StatelessWidget {
  const DesignSystemShowcaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Aluna Design System'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSpacing.s16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Typography', style: theme.textTheme.titleLarge),
            const SizedBox(height: AppSpacing.s8),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(AppSpacing.s16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Display Large', style: theme.textTheme.displayLarge),
                    const SizedBox(height: AppSpacing.s8),
                    Text('Headline Large (Instrument Serif)', style: theme.textTheme.headlineLarge),
                    const SizedBox(height: AppSpacing.s8),
                    Text('Title Large (Plus Jakarta Sans)', style: theme.textTheme.titleLarge),
                    const SizedBox(height: AppSpacing.s8),
                    Text('Body Large: A softer way to get your life together.', style: theme.textTheme.bodyLarge),
                    const SizedBox(height: AppSpacing.s8),
                    Text('Caption: Small annotations and metadata.', style: theme.textTheme.bodySmall),
                    const SizedBox(height: AppSpacing.s8),
                    Text('LABEL LARGE (TINY LABEL)', style: theme.textTheme.labelLarge),
                  ],
                ),
              ),
            ),
            const SizedBox(height: AppSpacing.s24),
            Text('Colors & Gradients', style: theme.textTheme.titleLarge),
            const SizedBox(height: AppSpacing.s8),
            Wrap(
              spacing: AppSpacing.s8,
              runSpacing: AppSpacing.s8,
              children: [
                _buildColorChip('Rose Clay', AppColors.roseClay),
                _buildColorChip('Peach Glow', AppColors.peachGlow),
                _buildColorChip('Butter Cream', AppColors.butterCream, border: true),
                _buildColorChip('Lavender Mist', AppColors.lavenderMist),
                _buildColorChip('Sage Breeze', AppColors.sageBreeze),
                _buildColorChip('Sky Powder', AppColors.skyPowder),
                _buildColorChip('Cocoa Ink', AppColors.cocoaInk, darkText: true),
              ],
            ),
            const SizedBox(height: AppSpacing.s16),
            Text('Gradients', style: theme.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: AppSpacing.s8),
            Row(
              children: [
                Expanded(child: _buildGradientBox('Morning Glow', AppColors.morningGlow)),
                const SizedBox(width: AppSpacing.s8),
                Expanded(child: _buildGradientBox('Calm Evening', AppColors.calmEvening)),
              ],
            ),
            const SizedBox(height: AppSpacing.s8),
            Row(
              children: [
                Expanded(child: _buildGradientBox('Sky Calm', AppColors.skyCalm)),
                const SizedBox(width: AppSpacing.s8),
                Expanded(child: _buildGradientBox('Soft Wellness', AppColors.softWellness)),
              ],
            ),
            const SizedBox(height: AppSpacing.s24),
            Text('Buttons & Forms', style: theme.textTheme.titleLarge),
            const SizedBox(height: AppSpacing.s8),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Primary Button'),
            ),
            const SizedBox(height: AppSpacing.s8),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Secondary Button'),
            ),
            const SizedBox(height: AppSpacing.s8),
            TextButton(
              onPressed: () {},
              child: const Text('Ghost Button'),
            ),
            const SizedBox(height: AppSpacing.s16),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Enter your routine name...',
                labelText: 'Routine Name',
              ),
            ),
            const SizedBox(height: AppSpacing.s24),
            Text('Shadows & Surfaces', style: theme.textTheme.titleLarge),
            const SizedBox(height: AppSpacing.s8),
            Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: AppRadius.card,
                boxShadow: [AppShadows.softCardShadow],
              ),
              alignment: Alignment.center,
              child: Text('Soft Card Shadow', style: theme.textTheme.bodyLarge),
            ),
            const SizedBox(height: AppSpacing.s12),
            Container(
              height: 80,
              decoration: AppShadows.tintedSurface,
              alignment: Alignment.center,
              child: Text('Tinted Surface (Butter Cream)', style: theme.textTheme.bodyLarge),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildColorChip(String name, Color color, {bool border = false, bool darkText = false}) {
    return Container(
      width: 100,
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: AppRadius.small,
        border: border ? Border.all(color: AppColors.cocoaInk.withValues(alpha: 0.2)) : null,
      ),
      alignment: Alignment.center,
      child: Text(
        name,
        style: TextStyle(
          color: darkText ? Colors.white : AppColors.cocoaInk,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildGradientBox(String name, Gradient gradient) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: AppRadius.small,
      ),
      alignment: Alignment.center,
      child: Text(
        name,
        style: const TextStyle(
          color: AppColors.cocoaInk,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
    );
  }
}
