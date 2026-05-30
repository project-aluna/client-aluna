import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/theme/app_typography.dart';
import '../../../data/mock/mock_mood.dart';

class MoodLogScreen extends StatefulWidget {
  const MoodLogScreen({super.key});

  @override
  State<MoodLogScreen> createState() => _MoodLogScreenState();
}

class _MoodLogScreenState extends State<MoodLogScreen> {
  int _moodScore = 3;
  double _energyScore = 3;
  double _stressScore = 3;
  final TextEditingController _noteController = TextEditingController();

  final List<Map<String, dynamic>> _moods = [
    {'label': 'Sangat Buruk', 'icon': LucideIcons.frown, 'color': AppColors.cocoaInk},
    {'label': 'Buruk', 'icon': LucideIcons.meh, 'color': AppColors.roseClay},
    {'label': 'Biasa', 'icon': LucideIcons.smile, 'color': AppColors.sageBreeze},
    {'label': 'Baik', 'icon': LucideIcons.laugh, 'color': AppColors.skyPowder},
    {'label': 'Sangat Baik', 'icon': LucideIcons.sparkles, 'color': AppColors.peachGlow},
  ];

  void _saveMood() {
    // Save to mock storage
    MockMood.todayMood = _moods[_moodScore - 1]['label'] as String;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Perasaanmu berhasil dicatat.',
          style: AppTypography.body.copyWith(color: Colors.white),
        ),
        backgroundColor: AppColors.cocoaInk,
        behavior: SnackBarBehavior.floating,
      ),
    );

    context.pop();
  }

  @override
  void dispose() {
    _noteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentMoodColor = _moods[_moodScore - 1]['color'] as Color;

    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              currentMoodColor.withValues(alpha: 0.3),
              AppColors.butterCream,
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: IconButton(
                  icon: const Icon(LucideIcons.x, color: AppColors.cocoaInk),
                  onPressed: () => context.pop(),
                ),
                actions: [
                  TextButton(
                    onPressed: _saveMood,
                    child: Text(
                      'Simpan',
                      style: AppTypography.body.copyWith(
                        color: AppColors.cocoaInk,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: AppSpacing.s24),
                      Text(
                        'Bagaimana perasaanmu saat ini?',
                        style: AppTypography.heading.copyWith(color: AppColors.cocoaInk),
                      ),
                      const SizedBox(height: AppSpacing.s32),
                      
                      // Mood Selector
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(5, (index) {
                          final isSelected = _moodScore == index + 1;
                          final mood = _moods[index];
                          return GestureDetector(
                            onTap: () {
                              HapticFeedback.lightImpact();
                              setState(() => _moodScore = index + 1);
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: isSelected ? Colors.white : Colors.transparent,
                                shape: BoxShape.circle,
                                boxShadow: isSelected
                                    ? [
                                        BoxShadow(
                                          color: (mood['color'] as Color).withValues(alpha: 0.4),
                                          blurRadius: 20,
                                          spreadRadius: 2,
                                        )
                                      ]
                                    : [],
                              ),
                              child: Icon(
                                mood['icon'] as IconData,
                                size: 32,
                                color: isSelected ? (mood['color'] as Color) : AppColors.cocoaInk.withValues(alpha: 0.3),
                              ),
                            ),
                          );
                        }),
                      ),
                      const SizedBox(height: AppSpacing.s12),
                      Center(
                        child: AnimatedSwitcher(
                          duration: const Duration(milliseconds: 300),
                          child: Text(
                            _moods[_moodScore - 1]['label'] as String,
                            key: ValueKey(_moodScore),
                            style: AppTypography.subheading.copyWith(
                              color: currentMoodColor,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: AppSpacing.s48),

                      // Energy Slider
                      Text('Tingkat Energi', style: AppTypography.subheading.copyWith(color: AppColors.cocoaInk)),
                      const SizedBox(height: AppSpacing.s8),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: currentMoodColor,
                          inactiveTrackColor: Colors.white,
                          thumbColor: currentMoodColor,
                          trackHeight: 8,
                          overlayColor: currentMoodColor.withValues(alpha: 0.2),
                        ),
                        child: Slider(
                          value: _energyScore,
                          min: 1,
                          max: 5,
                          divisions: 4,
                          onChanged: (val) {
                            HapticFeedback.selectionClick();
                            setState(() => _energyScore = val);
                          },
                        ),
                      ),
                      const SizedBox(height: AppSpacing.s24),

                      // Stress Slider
                      Text('Tingkat Stres', style: AppTypography.subheading.copyWith(color: AppColors.cocoaInk)),
                      const SizedBox(height: AppSpacing.s8),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: AppColors.roseClay,
                          inactiveTrackColor: Colors.white,
                          thumbColor: AppColors.roseClay,
                          trackHeight: 8,
                          overlayColor: AppColors.roseClay.withValues(alpha: 0.2),
                        ),
                        child: Slider(
                          value: _stressScore,
                          min: 1,
                          max: 5,
                          divisions: 4,
                          onChanged: (val) {
                            HapticFeedback.selectionClick();
                            setState(() => _stressScore = val);
                          },
                        ),
                      ),
                      const SizedBox(height: AppSpacing.s48),

                      // Optional Note
                      Text('Catatan (Opsional)', style: AppTypography.subheading.copyWith(color: AppColors.cocoaInk)),
                      const SizedBox(height: AppSpacing.s12),
                      TextField(
                        controller: _noteController,
                        maxLines: 3,
                        decoration: InputDecoration(
                          hintText: 'Tuliskan apa yang ada di pikiranmu...',
                          hintStyle: AppTypography.body.copyWith(color: AppColors.cocoaInk.withValues(alpha: 0.4)),
                          filled: true,
                          fillColor: Colors.white.withValues(alpha: 0.6),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: AppSpacing.s48),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
