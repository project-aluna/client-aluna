import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_radius.dart';
import '../../app/theme/app_spacing.dart';
import '../../app/theme/app_typography.dart';

/// Reusable Chip/Badge for Goal or Category selection.
class AppChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;
  final IconData? icon;

  const AppChip({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return RawChip(
      label: Text(label),
      labelStyle: AppTypography.caption.copyWith(
        color: isSelected ? AppColors.butterCream : AppColors.cocoaInk.withValues(alpha: 0.8),
        fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
      ),
      selected: isSelected,
      onPressed: onTap,
      backgroundColor: AppColors.butterCream,
      selectedColor: AppColors.roseClay,
      shape: const StadiumBorder(
        side: BorderSide(color: Colors.transparent),
      ),
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s12, vertical: AppSpacing.s8),
      avatar: icon != null
          ? Icon(
              icon,
              size: 16,
              color: isSelected ? AppColors.butterCream : AppColors.cocoaInk.withValues(alpha: 0.6),
            )
          : null,
      showCheckmark: false,
    );
  }
}

/// Selector for mood using 5 emojis.
class MoodSelector extends StatelessWidget {
  final int? selectedScore; // 1 to 5
  final ValueChanged<int> onSelected;

  const MoodSelector({
    super.key,
    this.selectedScore,
    required this.onSelected,
  });

  static const List<Map<String, String>> moodOptions = [
    {'emoji': '😢', 'label': 'Sangat Buruk'},
    {'emoji': '🙁', 'label': 'Buruk'},
    {'emoji': '😐', 'label': 'Biasa Saja'},
    {'emoji': '🙂', 'label': 'Baik'},
    {'emoji': '😊', 'label': 'Sangat Baik'},
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(moodOptions.length, (index) {
        final score = index + 1;
        final isSelected = selectedScore == score;
        final option = moodOptions[index];

        return GestureDetector(
          onTap: () => onSelected(score),
          child: Column(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut,
                padding: const EdgeInsets.all(AppSpacing.s12),
                decoration: BoxDecoration(
                  color: isSelected
                      ? AppColors.peachGlow.withValues(alpha: 0.25)
                      : AppColors.butterCream,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: isSelected ? AppColors.peachGlow : Colors.transparent,
                    width: 2,
                  ),
                ),
                transform: isSelected ? (Matrix4.identity()..scale(1.15)) : Matrix4.identity(),
                child: Text(
                  option['emoji']!,
                  style: const TextStyle(fontSize: 28),
                ),
              ),
              const SizedBox(height: AppSpacing.s8),
              Text(
                option['label']!,
                style: AppTypography.tinyLabel.copyWith(
                  color: isSelected ? AppColors.cocoaInk : AppColors.cocoaInk.withValues(alpha: 0.5),
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}

/// Selector for energy using 5 lightning levels.
class EnergySelector extends StatelessWidget {
  final int selectedLevel; // 1 to 5
  final ValueChanged<int> onSelected;

  const EnergySelector({
    super.key,
    required this.selectedLevel,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(5, (index) {
        final level = index + 1;
        final isSelected = selectedLevel == level;

        return GestureDetector(
          onTap: () => onSelected(level),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: const EdgeInsets.all(AppSpacing.s12),
            decoration: BoxDecoration(
              color: isSelected ? AppColors.peachGlow : AppColors.butterCream,
              shape: BoxShape.circle,
            ),
            child: Icon(
              LucideIcons.zap,
              color: isSelected ? Colors.white : AppColors.cocoaInk.withValues(alpha: 0.3),
              size: 24,
            ),
          ),
        );
      }),
    );
  }
}

/// Selector for stress using 5 levels.
class StressSelector extends StatelessWidget {
  final int selectedLevel; // 1 to 5
  final ValueChanged<int> onSelected;

  const StressSelector({
    super.key,
    required this.selectedLevel,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(5, (index) {
        final level = index + 1;
        final isSelected = selectedLevel == level;

        return GestureDetector(
          onTap: () => onSelected(level),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: const EdgeInsets.all(AppSpacing.s12),
            decoration: BoxDecoration(
              color: isSelected ? AppColors.roseClay : AppColors.butterCream,
              shape: BoxShape.circle,
            ),
            child: Icon(
              LucideIcons.alertCircle,
              color: isSelected ? Colors.white : AppColors.cocoaInk.withValues(alpha: 0.3),
              size: 24,
            ),
          ),
        );
      }),
    );
  }
}

/// Selector for days of the week (S, M, T, W, T, F, S).
class DaySelector extends StatelessWidget {
  final List<int> selectedDays; // list of day indexes (1 for Monday, 7 for Sunday)
  final ValueChanged<List<int>> onChanged;

  const DaySelector({
    super.key,
    required this.selectedDays,
    required this.onChanged,
  });

  static const List<String> dayLabels = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(dayLabels.length, (index) {
        final dayIndex = index + 1;
        final isSelected = selectedDays.contains(dayIndex);

        return GestureDetector(
          onTap: () {
            final List<int> updatedDays = List.from(selectedDays);
            if (updatedDays.contains(dayIndex)) {
              updatedDays.remove(dayIndex);
            } else {
              updatedDays.add(dayIndex);
            }
            onChanged(updatedDays);
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: isSelected ? AppColors.sageBreeze : AppColors.butterCream,
              shape: BoxShape.circle,
              border: Border.all(
                color: isSelected ? Colors.transparent : AppColors.cocoaInk.withValues(alpha: 0.1),
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              dayLabels[index],
              style: AppTypography.body.copyWith(
                color: isSelected ? Colors.white : AppColors.cocoaInk.withValues(alpha: 0.8),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      }),
    );
  }
}
