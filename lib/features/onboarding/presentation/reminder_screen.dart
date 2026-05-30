import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/theme/app_typography.dart';
import '../../../core/widgets/app_button.dart';

/// Select reminder preference screen (Step 4 of Onboarding)
class ReminderScreen extends StatefulWidget {
  const ReminderScreen({super.key});

  @override
  State<ReminderScreen> createState() => _ReminderScreenState();
}

class _ReminderScreenState extends State<ReminderScreen> {
  bool _isReminderEnabled = true;
  TimeOfDay _selectedTime = const TimeOfDay(hour: 8, minute: 30);

  Future<void> _selectTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: AppColors.cocoaInk,
              onPrimary: Colors.white,
              onSurface: AppColors.cocoaInk,
            ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
        _isReminderEnabled = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Format hour and minute to strictly 2 digits
    final String hourLabel = _selectedTime.hourOfPeriod.toString().padLeft(2, '0');
    final String minuteLabel = _selectedTime.minute.toString().padLeft(2, '0');
    final String periodLabel = _selectedTime.period == DayPeriod.am ? 'AM' : 'PM';
    final String otherPeriodLabel = _selectedTime.period == DayPeriod.am ? 'PM' : 'AM';

    return Scaffold(
      backgroundColor: AppColors.butterCream,
      body: SafeArea(
        child: Stack(
          children: [
            // Abstract Blur Effect Top Right
            Positioned(
              top: -100,
              right: -50,
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.sageBreeze.withValues(alpha: 0.3),
                ),
                child: BackdropFilter(
                  filter: _isReminderEnabled ? 
                      // Need a transparent container for BackdropFilter to work
                      const ColorFilter.mode(Colors.transparent, BlendMode.srcOver) : 
                      const ColorFilter.mode(Colors.transparent, BlendMode.srcOver),
                  child: Container(
                     decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       boxShadow: [
                         BoxShadow(
                           color: AppColors.peachGlow.withValues(alpha: 0.5),
                           blurRadius: 100,
                           spreadRadius: 50,
                         )
                       ]
                     ),
                  ),
                ),
              ),
            ),
            
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
                          'Kapan Aluna harus menyapamu?',
                          style: AppTypography.display.copyWith(
                            color: AppColors.cocoaInk,
                            fontSize: 32,
                            height: 1.2,
                          ),
                        ),
                        const SizedBox(height: AppSpacing.s8),
                        Text(
                          'Pilih waktu yang paling tenang untuk diingatkan.',
                          style: AppTypography.subheading.copyWith(
                            color: AppColors.cocoaInk.withValues(alpha: 0.6),
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s20),
                    child: Column(
                      children: [
                        // Time Picker Block
                        Center(
                          child: GestureDetector(
                            onTap: _selectTime,
                            child: AnimatedOpacity(
                              duration: const Duration(milliseconds: 300),
                              opacity: _isReminderEnabled ? 1.0 : 0.5,
                              child: Container(
                                width: double.infinity,
                                constraints: const BoxConstraints(maxWidth: 280),
                                padding: const EdgeInsets.all(AppSpacing.s32),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(24),
                                  border: Border.all(color: AppColors.peachGlow.withValues(alpha: 0.5)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColors.cocoaInk.withValues(alpha: 0.04),
                                      blurRadius: 24,
                                      offset: const Offset(0, 8),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Icon(LucideIcons.chevronUp, color: AppColors.cocoaInk.withValues(alpha: 0.2), size: 20),
                                    const SizedBox(height: 16),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.baseline,
                                      textBaseline: TextBaseline.alphabetic,
                                      children: [
                                        Text(
                                          hourLabel,
                                          style: AppTypography.display.copyWith(
                                            fontSize: 56,
                                            color: AppColors.cocoaInk,
                                            height: 1,
                                            letterSpacing: -2,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                          child: Text(
                                            ':',
                                            style: AppTypography.display.copyWith(
                                              fontSize: 40,
                                              color: AppColors.cocoaInk.withValues(alpha: 0.5),
                                              height: 1,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          minuteLabel,
                                          style: AppTypography.display.copyWith(
                                            fontSize: 56,
                                            color: AppColors.cocoaInk,
                                            height: 1,
                                            letterSpacing: -2,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 16),
                                    Icon(LucideIcons.chevronDown, color: AppColors.cocoaInk.withValues(alpha: 0.2), size: 20),
                                    
                                    const SizedBox(height: 24),
                                    // AM / PM Toggle Display
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                      decoration: BoxDecoration(
                                        color: AppColors.butterCream,
                                        borderRadius: BorderRadius.circular(24),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            periodLabel,
                                            style: AppTypography.caption.copyWith(
                                              color: AppColors.cocoaInk,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.symmetric(horizontal: 12),
                                            width: 1,
                                            height: 12,
                                            color: AppColors.cocoaInk.withValues(alpha: 0.2),
                                          ),
                                          Text(
                                            otherPeriodLabel,
                                            style: AppTypography.caption.copyWith(
                                              color: AppColors.cocoaInk.withValues(alpha: 0.4),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        
                        const SizedBox(height: AppSpacing.s32),
                        
                        // Notification Toggle Card
                        Container(
                          padding: const EdgeInsets.all(AppSpacing.s20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(24),
                            border: Border.all(color: AppColors.peachGlow.withValues(alpha: 0.5)),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.cocoaInk.withValues(alpha: 0.04),
                                blurRadius: 24,
                                offset: const Offset(0, 8),
                              ),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: AppColors.roseClay.withValues(alpha: 0.1),
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(LucideIcons.bellRing, color: AppColors.cocoaInk, size: 20),
                              ),
                              const SizedBox(width: AppSpacing.s16),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Notifikasi Lembut',
                                          style: AppTypography.subheading.copyWith(
                                            color: AppColors.cocoaInk,
                                            height: 1.2,
                                          ),
                                        ),
                                        Switch(
                                          value: _isReminderEnabled,
                                          onChanged: (val) {
                                            setState(() {
                                              _isReminderEnabled = val;
                                            });
                                          },
                                          activeThumbColor: Colors.white,
                                          activeTrackColor: AppColors.cocoaInk,
                                          inactiveThumbColor: Colors.white,
                                          inactiveTrackColor: AppColors.peachGlow,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      'Jangan khawatir, pengingat kami selalu terasa seperti bisikan lembut.',
                                      style: AppTypography.body.copyWith(
                                        color: AppColors.cocoaInk.withValues(alpha: 0.7),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 140),
                      ],
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
                        _buildLineDot(false),
                        const SizedBox(width: 8),
                        _buildLineDot(true),
                      ],
                    ),
                    const SizedBox(height: AppSpacing.s24),
                    SizedBox(
                      width: double.infinity,
                      child: AppButton(
                        text: 'Lanjut',
                        icon: LucideIcons.arrowRight,
                        onPressed: () => context.push('/onboarding/generate'),
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
