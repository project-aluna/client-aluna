import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/theme/app_typography.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_text_field.dart';

/// Select reminder preference screen (Step 4 of Onboarding)
class ReminderScreen extends StatefulWidget {
  const ReminderScreen({super.key});

  @override
  State<ReminderScreen> createState() => _ReminderScreenState();
}

class _ReminderScreenState extends State<ReminderScreen> {
  bool _isReminderEnabled = true;
  TimeOfDay _selectedTime = const TimeOfDay(hour: 7, minute: 0);

  Future<void> _selectTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: AppColors.roseClay,
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
    final timeString = _selectedTime.format(context);

    return Scaffold(
      backgroundColor: AppColors.butterCream,
      appBar: AppBar(
        title: const Text('Atur Pengingat'),
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
                'Mau diingatkan kapan?',
                style: AppTypography.heading.copyWith(
                  color: AppColors.cocoaInk,
                ),
              ),
              const SizedBox(height: AppSpacing.s8),
              Text(
                'Kami akan mengirim pengingat lembut agar kamu tetap on track.',
                style: AppTypography.body.copyWith(
                  color: AppColors.cocoaInk.withValues(alpha: 0.6),
                ),
              ),
              const SizedBox(height: AppSpacing.s40),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Aktifkan Pengingat',
                    style: AppTypography.body.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.cocoaInk,
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
                    activeTrackColor: AppColors.roseClay,
                    inactiveThumbColor: Colors.white,
                    inactiveTrackColor: AppColors.cocoaInk.withValues(alpha: 0.2),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.s24),

              AnimatedOpacity(
                duration: const Duration(milliseconds: 300),
                opacity: _isReminderEnabled ? 1.0 : 0.5,
                child: AppTextField(
                  isTimeInput: true,
                  labelText: 'Waktu Pengingat',
                  hintText: timeString,
                  onTap: _isReminderEnabled ? _selectTime : null,
                ),
              ),

              const Spacer(),

              SizedBox(
                width: double.infinity,
                child: AppButton(
                  text: 'Lanjut',
                  onPressed: () => context.go('/onboarding/generate'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
