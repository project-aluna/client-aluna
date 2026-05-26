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

  IconData _getIconForString(String? iconName) {
    switch (iconName) {
      case 'sunrise':
        return LucideIcons.sunrise;
      case 'moon':
        return LucideIcons.moon;
      case 'sparkle':
        return LucideIcons.sparkle;
      case 'refresh-cw':
        return LucideIcons.refreshCw;
      default:
        return LucideIcons.list;
    }
  }

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
      appBar: AppBar(
        title: const Text('Pilih Rutinitas'),
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
                'Pilih rutinitas pertamamu',
                style: AppTypography.heading.copyWith(
                  color: AppColors.cocoaInk,
                ),
              ),
              const SizedBox(height: AppSpacing.s8),
              Text(
                'Kamu bisa mulai dengan salah satu template berikut.',
                style: AppTypography.body.copyWith(
                  color: AppColors.cocoaInk.withValues(alpha: 0.6),
                ),
              ),
              const SizedBox(height: AppSpacing.s24),

              Expanded(
                child: ListView.separated(
                  itemCount: routines.length,
                  separatorBuilder: (_, __) => const SizedBox(height: AppSpacing.s12),
                  itemBuilder: (context, index) {
                    final routine = routines[index];
                    final isSelected = _selectedRoutineId == routine.id;

                    return InkWell(
                      onTap: () => _selectRoutine(routine.id),
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
                                _getIconForString(routine.icon),
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
                                    routine.name,
                                    style: AppTypography.body.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.cocoaInk,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    '${routine.stepsCount} langkah • ${routine.estimatedDurationMinutes} mnt',
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
                  isDisabled: _selectedRoutineId == null,
                  onPressed: () => context.go('/onboarding/reminder'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
