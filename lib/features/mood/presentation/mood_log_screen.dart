import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

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
  int _moodScore = 1;
  double _energyScore = 3;
  double _stressScore = 2;
  final TextEditingController _noteController = TextEditingController();

  final List<Map<String, dynamic>> _moods = [
    {'label': 'Tenang', 'icon': Icons.spa_outlined, 'color': AppColors.sageBreeze},
    {'label': 'Senang', 'icon': Icons.sentiment_satisfied_outlined, 'color': AppColors.peachGlow},
    {'label': 'Lelah', 'icon': Icons.battery_0_bar_outlined, 'color': AppColors.cocoaInk},
    {'label': 'Sedih', 'icon': Icons.water_drop_outlined, 'color': AppColors.skyPowder},
    {'label': 'Gelisah', 'icon': Icons.tsunami_outlined, 'color': AppColors.roseClay},
  ];

  String _getSliderLabel(double value) {
    if (value <= 1.5) return 'Sangat Rendah';
    if (value <= 2.5) return 'Rendah';
    if (value <= 3.5) return 'Sedang';
    if (value <= 4.5) return 'Tinggi';
    return 'Sangat Tinggi';
  }

  void _saveMood() {
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
    return Scaffold(
      backgroundColor: AppColors.softCloud,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: AppColors.cocoaInk),
          onPressed: () => context.pop(),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Header
              Text(
                'Bagaimana perasaanmu?',
                style: AppTypography.display.copyWith(
                  color: AppColors.cocoaInk,
                  fontSize: 28,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSpacing.s8),
              Text(
                'Ambil nafas sejenak dan dengarkan dirimu.',
                style: AppTypography.body.copyWith(
                  color: AppColors.cocoaInk.withValues(alpha: 0.6),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSpacing.s32),
              
              // Mood Grid
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: AppSpacing.s16,
                  mainAxisSpacing: AppSpacing.s16,
                  childAspectRatio: 0.85,
                ),
                itemCount: _moods.length,
                itemBuilder: (context, index) {
                  final mood = _moods[index];
                  final isSelected = _moodScore == index + 1;
                  final moodColor = mood['color'] as Color;
                  
                  return GestureDetector(
                    onTap: () {
                      HapticFeedback.lightImpact();
                      setState(() => _moodScore = index + 1);
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      padding: const EdgeInsets.all(AppSpacing.s12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(
                          color: isSelected ? moodColor : AppColors.cocoaInk.withValues(alpha: 0.05),
                          width: isSelected ? 2 : 1,
                        ),
                        boxShadow: isSelected ? [
                          BoxShadow(
                            color: moodColor.withValues(alpha: 0.2),
                            blurRadius: 12,
                            offset: const Offset(0, 4),
                          )
                        ] : [],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              shape: index == 4 ? BoxShape.rectangle : BoxShape.circle,
                              borderRadius: index == 4 ? BorderRadius.circular(16) : null,
                              color: moodColor.withValues(alpha: 0.15),
                            ),
                            child: Icon(
                              mood['icon'] as IconData,
                              color: moodColor,
                              size: 24,
                            ),
                          ),
                          const SizedBox(height: AppSpacing.s12),
                          Text(
                            mood['label'] as String,
                            style: AppTypography.caption.copyWith(
                              color: AppColors.cocoaInk,
                              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: AppSpacing.s32),

              // Sliders Card
              Container(
                padding: const EdgeInsets.all(AppSpacing.s20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: AppColors.cocoaInk.withValues(alpha: 0.05)),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.cocoaInk.withValues(alpha: 0.03),
                      blurRadius: 24,
                      offset: const Offset(0, 8),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    // Energy
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Tingkat Energi', style: AppTypography.subheading.copyWith(color: AppColors.cocoaInk)),
                        Text(
                          _getSliderLabel(_energyScore),
                          style: AppTypography.caption.copyWith(color: AppColors.cocoaInk.withValues(alpha: 0.6)),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSpacing.s8),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: AppColors.sageBreeze,
                        inactiveTrackColor: AppColors.softCloud,
                        thumbColor: Colors.white,
                        trackHeight: 4,
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
                    const SizedBox(height: AppSpacing.s16),

                    // Stress
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Tingkat Stres', style: AppTypography.subheading.copyWith(color: AppColors.cocoaInk)),
                        Text(
                          _getSliderLabel(_stressScore),
                          style: AppTypography.caption.copyWith(color: AppColors.cocoaInk.withValues(alpha: 0.6)),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSpacing.s8),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: AppColors.roseClay,
                        inactiveTrackColor: AppColors.softCloud,
                        thumbColor: Colors.white,
                        trackHeight: 4,
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
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.s24),

              // Note
              TextField(
                controller: _noteController,
                maxLines: 3,
                style: AppTypography.body.copyWith(color: AppColors.cocoaInk),
                decoration: InputDecoration(
                  hintText: 'Catatan kecil (opsional)...',
                  hintStyle: AppTypography.body.copyWith(color: AppColors.cocoaInk.withValues(alpha: 0.4)),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.all(AppSpacing.s20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide: BorderSide(color: AppColors.cocoaInk.withValues(alpha: 0.05)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide: BorderSide(color: AppColors.cocoaInk.withValues(alpha: 0.05)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide: const BorderSide(color: AppColors.sageBreeze),
                  ),
                ),
              ),
              const SizedBox(height: AppSpacing.s32),
              
              // CTA Button
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: _saveMood,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.cocoaInk,
                    foregroundColor: Colors.white,
                    elevation: 4,
                    shadowColor: AppColors.cocoaInk.withValues(alpha: 0.3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(999),
                    ),
                  ),
                  child: Text(
                    'Simpan Perasaan',
                    style: AppTypography.subheading.copyWith(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: AppSpacing.s48),
            ],
          ),
        ),
      ),
    );
  }
}
