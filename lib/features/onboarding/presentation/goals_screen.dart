import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/theme/app_typography.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_card.dart';
import '../../../data/mock/mock_lifestyle_goals.dart';

/// Choose lifestyle goals screen (Step 2 of Onboarding)
class GoalsScreen extends StatefulWidget {
  const GoalsScreen({super.key});

  @override
  State<GoalsScreen> createState() => _GoalsScreenState();
}

class _GoalsScreenState extends State<GoalsScreen> {
  final List<String> _selectedIds = [];
  final int _maxSelection = 3;

  void _toggleSelection(String id) {
    setState(() {
      if (_selectedIds.contains(id)) {
        _selectedIds.remove(id);
      } else {
        if (_selectedIds.length < _maxSelection) {
          _selectedIds.add(id);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Maksimal memilih $_maxSelection tujuan'),
              behavior: SnackBarBehavior.floating,
              backgroundColor: AppColors.cocoaInk,
            ),
          );
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final goals = MockLifestyleGoals.goals;

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
                          'Apa yang ingin kamu fokuskan?',
                          textAlign: TextAlign.center,
                          style: AppTypography.display.copyWith(
                            color: AppColors.cocoaInk,
                            fontSize: 32,
                            height: 1.2,
                          ),
                        ),
                        const SizedBox(height: AppSpacing.s8),
                        Text(
                          'Pilih hingga $_maxSelection hal yang paling penting bagimu saat ini.',
                          textAlign: TextAlign.center,
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
                        final goal = goals[index];
                        final isSelected = _selectedIds.contains(goal.id);

                        return Padding(
                          padding: const EdgeInsets.only(bottom: AppSpacing.s16),
                          child: InkWell(
                            onTap: () => _toggleSelection(goal.id),
                            borderRadius: BorderRadius.circular(24),
                            child: AppCard(
                              backgroundColor: isSelected ? AppColors.roseClay.withValues(alpha: 0.1) : Colors.white,
                              border: Border.all(
                                color: isSelected ? AppColors.roseClay : Colors.transparent,
                                width: 1.5,
                              ),
                              padding: const EdgeInsets.all(AppSpacing.s20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          goal.icon,
                                          width: 28,
                                          height: 28,
                                        ),
                                        const SizedBox(width: AppSpacing.s12),
                                        Expanded(
                                          child: Text(
                                            goal.name,
                                            style: AppTypography.subheading.copyWith(
                                              color: AppColors.cocoaInk,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Icon(
                                    isSelected ? LucideIcons.checkCircle2 : LucideIcons.circle,
                                    color: isSelected ? AppColors.roseClay : AppColors.cocoaInk.withValues(alpha: 0.2),
                                    size: 24,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      childCount: goals.length,
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
                      AppColors.butterCream,
                      AppColors.butterCream,
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    // Progress Indicator (Dots)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildLine(false),
                        const SizedBox(width: 8),
                        _buildLine(true),
                        const SizedBox(width: 8),
                        _buildLine(false),
                        const SizedBox(width: 8),
                        _buildLine(false),
                      ],
                    ),
                    const SizedBox(height: AppSpacing.s24),
                    SizedBox(
                      width: double.infinity,
                      child: AppButton(
                        text: 'Lanjut',
                        isDisabled: _selectedIds.isEmpty,
                        onPressed: () => context.push('/onboarding/routines'),
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

  Widget _buildLine(bool isActive) {
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
