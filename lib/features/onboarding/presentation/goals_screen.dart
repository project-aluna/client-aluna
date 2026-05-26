import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/theme/app_typography.dart';
import '../../../core/widgets/app_button.dart';
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

  IconData _getIconForString(String iconName) {
    switch (iconName) {
      case 'moon':
        return LucideIcons.moon;
      case 'heart':
        return LucideIcons.heart;
      case 'compass':
        return LucideIcons.compass;
      case 'dumbbell':
        return LucideIcons.dumbbell;
      case 'sparkles':
        return LucideIcons.sparkles;
      case 'sparkle':
        return LucideIcons.sparkle;
      default:
        return LucideIcons.target;
    }
  }

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
      appBar: AppBar(
        title: const Text('Pilih Tujuanmu'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.s24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Apa yang ingin kamu capai?',
                style: AppTypography.heading.copyWith(
                  color: AppColors.cocoaInk,
                ),
              ),
              const SizedBox(height: AppSpacing.s8),
              Text(
                'Pilih maksimal $_maxSelection tujuan yang paling relevan untukmu.',
                style: AppTypography.body.copyWith(
                  color: AppColors.cocoaInk.withValues(alpha: 0.6),
                ),
              ),
              const SizedBox(height: AppSpacing.s24),

              Expanded(
                child: ListView.separated(
                  itemCount: goals.length,
                  separatorBuilder: (_, __) => const SizedBox(height: AppSpacing.s12),
                  itemBuilder: (context, index) {
                    final goal = goals[index];
                    final isSelected = _selectedIds.contains(goal.id);

                    return InkWell(
                      onTap: () => _toggleSelection(goal.id),
                      borderRadius: BorderRadius.circular(16),
                      child: Container(
                        padding: const EdgeInsets.all(AppSpacing.s16),
                        decoration: BoxDecoration(
                          color: isSelected ? AppColors.roseClay.withValues(alpha: 0.1) : Colors.white,
                          border: Border.all(
                            color: isSelected ? AppColors.roseClay : AppColors.cocoaInk.withValues(alpha: 0.1),
                            width: isSelected ? 2 : 1,
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: isSelected ? AppColors.roseClay : AppColors.butterCream,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                _getIconForString(goal.icon),
                                color: isSelected ? Colors.white : AppColors.cocoaInk,
                                size: 24,
                              ),
                            ),
                            const SizedBox(width: AppSpacing.s16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    goal.name,
                                    style: AppTypography.body.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.cocoaInk,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    goal.description,
                                    style: AppTypography.body.copyWith(
                                      fontSize: 12,
                                      color: AppColors.cocoaInk.withValues(alpha: 0.6),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            if (isSelected)
                              const Icon(LucideIcons.checkCircle2, color: AppColors.roseClay),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: AppSpacing.s16),
              SizedBox(
                width: double.infinity,
                child: AppButton(
                  text: 'Lanjut',
                  isDisabled: _selectedIds.isEmpty,
                  onPressed: () => context.go('/onboarding/routines'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
