import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/theme/app_typography.dart';
import '../../../core/widgets/app_button.dart';
import '../../../data/mock/mock_routines.dart';

/// Choose focus routines screen (Step 3 of Onboarding)
class RoutinesScreen extends StatefulWidget {
  const RoutinesScreen({super.key});

  @override
  State<RoutinesScreen> createState() => _RoutinesScreenState();
}

class _RoutinesScreenState extends State<RoutinesScreen> {
  String? _selectedRoutineId;

  void _selectRoutine(String id) {
    setState(() {
      _selectedRoutineId = id;
    });
  }

  @override
  Widget build(BuildContext context) {
    final routines = MockRoutines.routines;

    return Scaffold(
      backgroundColor: AppColors.butterCream,
      body: SafeArea(
        child: Stack(
          children: [
            // Main Content
            CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(AppSpacing.s20, AppSpacing.s16, AppSpacing.s20, AppSpacing.s32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Back Button
                        IconButton(
                          icon: const Icon(LucideIcons.arrowLeft, color: AppColors.cocoaInk),
                          onPressed: () => context.pop(),
                          style: IconButton.styleFrom(
                            backgroundColor: AppColors.peachGlow.withValues(alpha: 0.3),
                          ),
                        ),
                        const SizedBox(height: AppSpacing.s24),
                        Text(
                          'Pilih titik awalmu.',
                          style: AppTypography.display.copyWith(
                            color: AppColors.cocoaInk,
                            fontSize: 32,
                            height: 1.2,
                          ),
                        ),
                        const SizedBox(height: AppSpacing.s8),
                        Text(
                          'Kita mulai dari satu rutinitas yang paling kamu butuhkan.',
                          style: AppTypography.body.copyWith(
                            color: AppColors.cocoaInk.withValues(alpha: 0.6),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.fromLTRB(AppSpacing.s20, 0, AppSpacing.s20, 140),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final routine = routines[index];
                        final isSelected = _selectedRoutineId == routine.id;

                        final desc = routine.description;

                        return Padding(
                          padding: const EdgeInsets.only(bottom: AppSpacing.s16),
                          child: InkWell(
                            onTap: () => _selectRoutine(routine.id),
                            borderRadius: BorderRadius.circular(24),
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              padding: const EdgeInsets.all(AppSpacing.s16),
                              decoration: BoxDecoration(
                                color: isSelected ? AppColors.sageBreeze.withValues(alpha: 0.2) : Colors.white,
                                border: Border.all(
                                  color: isSelected ? AppColors.sageBreeze : AppColors.peachGlow,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(24),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.cocoaInk.withValues(alpha: 0.02),
                                    blurRadius: 24,
                                    offset: const Offset(0, 8),
                                  ),
                                ],
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AnimatedContainer(
                                    duration: const Duration(milliseconds: 300),
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      color: isSelected ? AppColors.sageBreeze : AppColors.butterCream,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                      routine.icon ?? 'assets/icons/sparkle.png',
                                      width: 24,
                                      height: 24,
                                      color: isSelected ? Colors.white : AppColors.cocoaInk,
                                    ),
                                  ),
                                  const SizedBox(width: AppSpacing.s16),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          routine.name,
                                          style: AppTypography.subheading.copyWith(
                                            color: AppColors.cocoaInk,
                                            height: 1.2,
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                        Text(
                                          desc ?? '',
                                          style: AppTypography.caption.copyWith(
                                            color: AppColors.cocoaInk.withValues(alpha: 0.6),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      childCount: routines.length,
                    ),
                  ),
                ),
              ],
            ),
            
            // Sticky Bottom Area
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.fromLTRB(AppSpacing.s20, AppSpacing.s32, AppSpacing.s20, AppSpacing.s24),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColors.butterCream.withValues(alpha: 0.0),
                      AppColors.butterCream.withValues(alpha: 0.9),
                      AppColors.butterCream,
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    // Progress Indicator (Lines)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildLineDot(false),
                        const SizedBox(width: 8),
                        _buildLineDot(false),
                        const SizedBox(width: 8),
                        _buildLineDot(true),
                        const SizedBox(width: 8),
                        _buildLineDot(false),
                      ],
                    ),
                    const SizedBox(height: AppSpacing.s24),
                    SizedBox(
                      width: double.infinity,
                      child: AppButton(
                        text: 'Lanjut',
                        isDisabled: _selectedRoutineId == null,
                        onPressed: () => context.push('/onboarding/reminder'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLineDot(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOutCubic,
      width: isActive ? 40 : 24,
      height: 4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: isActive ? AppColors.cocoaInk : AppColors.peachGlow.withValues(alpha: 0.5),
      ),
    );
  }
}
