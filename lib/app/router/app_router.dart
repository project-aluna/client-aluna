import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'route_names.dart';
import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';
import '../theme/app_radius.dart';
import '../theme/app_shadows.dart';
import '../../core/widgets/app_button.dart';
import '../../core/widgets/app_text_field.dart';
import '../../core/widgets/app_card.dart';
import '../../core/widgets/app_selectors.dart';
import '../../core/widgets/app_loading.dart';
import '../../core/widgets/app_empty_state.dart';
import '../../core/widgets/app_error_view.dart';
import '../../core/widgets/app_feedback.dart';

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

/// A temporary screen to showcase and verify the implemented Design System tokens and Core UI Widgets.
class DesignSystemShowcaseScreen extends StatefulWidget {
  const DesignSystemShowcaseScreen({super.key});

  @override
  State<DesignSystemShowcaseScreen> createState() => _DesignSystemShowcaseScreenState();
}

class _DesignSystemShowcaseScreenState extends State<DesignSystemShowcaseScreen> {
  // Selector states
  int _moodScore = 3;
  int _energyLevel = 3;
  int _stressLevel = 2;
  List<int> _selectedDays = [1, 3, 5];
  bool _isGoalSelected = false;
  bool _isDailyCompleted = false;
  bool _isStepCompleted = false;

  final _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

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
              color: isDark ? AppColors.nightSurface : AppColors.butterCream,
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

            // BUTTONS
            Text('Buttons (AppButton)', style: theme.textTheme.titleLarge),
            const SizedBox(height: AppSpacing.s8),
            Wrap(
              spacing: AppSpacing.s8,
              runSpacing: AppSpacing.s8,
              children: [
                AppButton(
                  text: 'Primary Button',
                  onPressed: () => context.showAppSnackBar(message: 'Tombol Primary Ditekan!'),
                ),
                AppButton(
                  text: 'Secondary Button',
                  variant: AppButtonVariant.secondary,
                  onPressed: () => context.showAppSnackBar(message: 'Tombol Secondary Ditekan!'),
                ),
                AppButton(
                  text: 'Ghost Button',
                  variant: AppButtonVariant.ghost,
                  onPressed: () => context.showAppSnackBar(message: 'Tombol Ghost Ditekan!'),
                ),
                AppButton(
                  text: 'Soft Gradient',
                  variant: AppButtonVariant.softGradient,
                  onPressed: () => context.showAppSnackBar(message: 'Tombol Gradient Ditekan!'),
                ),
                AppButton.icon(
                  icon: LucideIcons.heart,
                  onPressed: () => context.showAppSnackBar(message: 'Tombol Icon Ditekan!'),
                ),
                AppButton(
                  text: 'Loading Primary',
                  isLoading: true,
                  onPressed: () {},
                ),
                AppButton(
                  text: 'Disabled Button',
                  isDisabled: true,
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.s24),

            // INPUTS
            Text('Inputs (AppTextField)', style: theme.textTheme.titleLarge),
            const SizedBox(height: AppSpacing.s8),
            AppTextField(
              controller: _textController,
              labelText: 'Routine Name',
              hintText: 'e.g. Minum air putih 500ml',
            ),
            const SizedBox(height: AppSpacing.s12),
            const AppTextField(
              isSearch: true,
              labelText: 'Cari Sesuatu',
              hintText: 'Cari rutinitas atau artikel...',
            ),
            const SizedBox(height: AppSpacing.s12),
            AppTextField(
              isTimeInput: true,
              labelText: 'Pilih Waktu',
              hintText: '07:00 AM',
              onTap: () => context.showAppSnackBar(message: 'Pilih Waktu Ditekan (Gunakan TimePicker)'),
            ),
            const SizedBox(height: AppSpacing.s12),
            const AppTextField(
              isMultiline: true,
              labelText: 'Catatan Refleksi',
              hintText: 'Tuliskan perasaanmu secara detail di sini...',
            ),
            const SizedBox(height: AppSpacing.s12),
            const AppTextField(
              labelText: 'Input dengan Error',
              hintText: 'Input salah...',
              errorText: 'Format input tidak sesuai. Mohon diperbaiki.',
            ),
            const SizedBox(height: AppSpacing.s24),

            // SELECTORS
            Text('Selectors & Chips', style: theme.textTheme.titleLarge),
            const SizedBox(height: AppSpacing.s8),
            Row(
              children: [
                AppChip(
                  label: 'Mindfulness',
                  icon: LucideIcons.compass,
                  isSelected: _isGoalSelected,
                  onTap: () {
                    setState(() {
                      _isGoalSelected = !_isGoalSelected;
                    });
                  },
                ),
                const SizedBox(width: AppSpacing.s8),
                AppChip(
                  label: 'Kesehatan',
                  isSelected: !_isGoalSelected,
                  onTap: () {
                    setState(() {
                      _isGoalSelected = !_isGoalSelected;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.s16),
            Text('Mood Selector', style: theme.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: AppSpacing.s8),
            MoodSelector(
              selectedScore: _moodScore,
              onSelected: (val) {
                setState(() {
                  _moodScore = val;
                });
                context.showAppSnackBar(message: 'Memilih Mood: $val');
              },
            ),
            const SizedBox(height: AppSpacing.s16),
            Text('Energy Selector', style: theme.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: AppSpacing.s8),
            EnergySelector(
              selectedLevel: _energyLevel,
              onSelected: (val) {
                setState(() {
                  _energyLevel = val;
                });
                context.showAppSnackBar(message: 'Memilih Energi: $val');
              },
            ),
            const SizedBox(height: AppSpacing.s16),
            Text('Stress Selector', style: theme.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: AppSpacing.s8),
            StressSelector(
              selectedLevel: _stressLevel,
              onSelected: (val) {
                setState(() {
                  _stressLevel = val;
                });
                context.showAppSnackBar(message: 'Memilih Stres: $val');
              },
            ),
            const SizedBox(height: AppSpacing.s16),
            Text('Day Selector', style: theme.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: AppSpacing.s8),
            DaySelector(
              selectedDays: _selectedDays,
              onChanged: (days) {
                setState(() {
                  _selectedDays = days;
                });
              },
            ),
            const SizedBox(height: AppSpacing.s24),

            // CARDS
            Text('Cards (AppCard & Variants)', style: theme.textTheme.titleLarge),
            const SizedBox(height: AppSpacing.s8),
            RoutineCard(
              title: 'Meditasi Pagi',
              time: '06:00 AM',
              category: 'Menenangkan',
              icon: LucideIcons.sunrise,
              onTap: () => context.showAppSnackBar(message: 'Detail Meditasi Pagi'),
            ),
            const SizedBox(height: AppSpacing.s12),
            DailyRoutineCard(
              title: 'Rutinitas Pagi Ringan',
              progressText: _isDailyCompleted ? '3/3 selesai' : '2/3 selesai',
              progressPercent: _isDailyCompleted ? 1.0 : 0.67,
              isCompleted: _isDailyCompleted,
              onToggleComplete: () {
                setState(() {
                  _isDailyCompleted = !_isDailyCompleted;
                });
              },
              onTap: () => context.showAppSnackBar(message: 'Detail Rutinitas Pagi'),
            ),
            const SizedBox(height: AppSpacing.s12),
            StepCard(
              title: 'Minum air hangat',
              isCompleted: _isStepCompleted,
              onToggle: () {
                setState(() {
                  _isStepCompleted = !_isStepCompleted;
                });
              },
            ),
            const SizedBox(height: AppSpacing.s12),
            const MoodCard(
              moodEmoji: '😊',
              moodName: 'Sangat Baik',
              energyScore: 4,
              stressScore: 1,
              note: 'Hari ini rasanya damai sekali, rutinitas pagi membantu memulai hari.',
            ),
            const SizedBox(height: AppSpacing.s12),
            const ReflectionCard(
              title: 'Refleksi Minggu Ini',
              insightText: 'Minggu ini kamu lebih konsisten melakukan meditasi pagi. Pertahankan langkah kecilmu!',
              completionPercent: '85%',
              averageMood: 4.2,
            ),
            const SizedBox(height: AppSpacing.s12),
            PremiumCard(
              onUpgradeTap: () => context.showAppSnackBar(message: 'Upgrade to premium flow!'),
            ),
            const SizedBox(height: AppSpacing.s12),
            EmptyStateCard(
              text: 'Belum ada rutinitas siang. Ketuk untuk menambah.',
              icon: LucideIcons.plusCircle,
              onTap: () => context.showAppSnackBar(message: 'Tambah rutinitas baru'),
            ),
            const SizedBox(height: AppSpacing.s24),

            // FEEDBACK COMPONENTS
            Text('Feedback & States', style: theme.textTheme.titleLarge),
            const SizedBox(height: AppSpacing.s8),
            const Text('Loading (AppLoading):'),
            const SizedBox(height: AppSpacing.s8),
            Container(
              padding: const EdgeInsets.symmetric(vertical: AppSpacing.s24),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.cocoaInk.withValues(alpha: 0.1)),
                borderRadius: AppRadius.card,
              ),
              child: const AppLoading(message: 'Sedang memuat kedamaian...'),
            ),
            const SizedBox(height: AppSpacing.s16),
            const Text('Empty State (AppEmptyState):'),
            const SizedBox(height: AppSpacing.s8),
            Container(
              padding: const EdgeInsets.symmetric(vertical: AppSpacing.s24),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.cocoaInk.withValues(alpha: 0.1)),
                borderRadius: AppRadius.card,
              ),
              child: AppEmptyState(
                icon: LucideIcons.sparkles,
                title: 'Belum Ada Jurnal',
                description: 'Catat mood dan pikiranmu hari ini untuk melihat grafik refleksi mingguan.',
                actionLabel: 'Buat Jurnal Baru',
                onActionPressed: () => context.showAppSnackBar(message: 'Buka form jurnal'),
              ),
            ),
            const SizedBox(height: AppSpacing.s16),
            const Text('Error View (AppErrorView):'),
            const SizedBox(height: AppSpacing.s8),
            Container(
              padding: const EdgeInsets.symmetric(vertical: AppSpacing.s24),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.cocoaInk.withValues(alpha: 0.1)),
                borderRadius: AppRadius.card,
              ),
              child: AppErrorView(
                onRetry: () => context.showAppSnackBar(message: 'Mencoba memuat ulang data...'),
              ),
            ),
            const SizedBox(height: AppSpacing.s16),
            AppButton(
              text: 'Tampilkan Error SnackBar',
              variant: AppButtonVariant.secondary,
              onPressed: () => context.showAppSnackBar(
                message: 'Koneksi internet bermasalah. Mohon coba beberapa saat lagi.',
                isError: true,
              ),
            ),
            const SizedBox(height: AppSpacing.s40),
          ],
        ),
      ),
    );
  }
}

