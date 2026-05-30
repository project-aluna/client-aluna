import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../../../app/router/route_names.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/theme/app_typography.dart';
import '../../../core/widgets/app_card.dart';
import '../../../data/models/daily_flow_model.dart';
import '../../../data/providers/repository_providers.dart';
import '../../../data/mock/mock_mood.dart';

// Provider for today's flow
final todayFlowProvider = FutureProvider<DailyFlowModel>((ref) {
  final repo = ref.watch(dailyFlowRepositoryProvider);
  return repo.getTodayFlow();
});

class TodayScreen extends ConsumerWidget {
  const TodayScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todayFlowAsync = ref.watch(todayFlowProvider);

    return Scaffold(
      backgroundColor: AppColors.butterCream,
      body: SafeArea(
        bottom: false,
        child: CustomScrollView(
          slivers: [
            // Top App Bar
            SliverToBoxAdapter(
              child: _buildHeader(),
            ),
            
            // Content
            SliverPadding(
              padding: const EdgeInsets.all(AppSpacing.s20),
              sliver: todayFlowAsync.when(
                data: (flow) => SliverList(
                  delegate: SliverChildListDelegate([
                    _buildProgressSection(flow),
                    const SizedBox(height: AppSpacing.s32),
                    _buildRoutineTimeline(context, flow),
                    const SizedBox(height: AppSpacing.s32),
                    _buildMoodLog(context),
                    const SizedBox(height: AppSpacing.s32),
                    _buildReflectionTeaser(),
                    const SizedBox(height: 100), // padding for bottom nav
                  ]),
                ),
                loading: () => const SliverFillRemaining(
                  child: Center(
                    child: CircularProgressIndicator(color: AppColors.sageBreeze),
                  ),
                ),
                error: (error, stack) => SliverFillRemaining(
                  child: Center(
                    child: Text('Terjadi kesalahan.', style: AppTypography.body),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    final now = DateTime.now();
    // Use Indonesian locale format manually or simply hardcode simple formatter if intl id isn't setup
    final List<String> weekdays = ['Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu', 'Minggu'];
    final List<String> months = ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'];
    
    final dayName = weekdays[now.weekday - 1];
    final monthName = months[now.month - 1];
    final dateString = '$dayName, ${now.day} $monthName';

    final hour = now.hour;
    String greeting = 'Halo, pelan-pelan saja hari ini.';
    if (hour >= 5 && hour < 12) {
      greeting = 'Pagi. Satu langkah kecil juga berarti.';
    } else if (hour >= 12 && hour < 18) {
      greeting = 'Semoga harimu terasa lebih ringan.';
    } else {
      greeting = 'Malam tiba. Waktunya istirahat sejenak.';
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s20, vertical: AppSpacing.s16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              children: [
                // Profile Avatar
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.sageBreeze.withValues(alpha: 0.5), width: 2),
                    color: AppColors.peachGlow.withValues(alpha: 0.3),
                  ),
                  child: const Center(
                    child: Icon(LucideIcons.user, color: AppColors.cocoaInk),
                  ),
                ),
                const SizedBox(width: AppSpacing.s16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        greeting,
                        style: AppTypography.subheading.copyWith(
                          color: AppColors.cocoaInk,
                          height: 1.2,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        dateString,
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
          // Calendar Button
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: AppColors.cocoaInk.withValues(alpha: 0.04),
                  blurRadius: 16,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(22),
                onTap: () {},
                child: const Icon(LucideIcons.calendar, color: AppColors.sageBreeze, size: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProgressSection(DailyFlowModel flow) {
    int totalSteps = 0;
    int completedSteps = 0;

    for (var routine in flow.routineFlows) {
      for (var step in routine.steps) {
        totalSteps++;
        if (step.isCompleted) completedSteps++;
      }
    }

    final progress = totalSteps == 0 ? 0.0 : (completedSteps / totalSteps);
    final percentage = (progress * 100).toInt();

    return AppCard(
      child: Row(
        children: [
          // Circular Progress
          SizedBox(
            width: 72,
            height: 72,
            child: Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: progress,
                  strokeWidth: 6,
                  backgroundColor: AppColors.butterCream,
                  color: AppColors.sageBreeze,
                  strokeCap: StrokeCap.round,
                ),
                Center(
                  child: Text(
                    '$percentage%',
                    style: AppTypography.subheading.copyWith(color: AppColors.cocoaInk),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: AppSpacing.s20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$completedSteps dari $totalSteps langkah kecil selesai hari ini.',
                  style: AppTypography.body.copyWith(
                    color: AppColors.cocoaInk,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Pelan-pelan saja, kamu melakukan hal yang hebat.',
                  style: AppTypography.caption.copyWith(
                    color: AppColors.cocoaInk.withValues(alpha: 0.6),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRoutineTimeline(BuildContext context, DailyFlowModel flow) {
    if (flow.routineFlows.isEmpty) {
      return AppCard(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: AppSpacing.s24),
          child: Column(
            children: [
              const Icon(LucideIcons.flower2, size: 48, color: AppColors.peachGlow),
              const SizedBox(height: AppSpacing.s16),
              Text(
                'Belum ada rutinitas hari ini.\nTarik napas panjang, tidak apa-apa.',
                textAlign: TextAlign.center,
                style: AppTypography.body.copyWith(color: AppColors.cocoaInk.withValues(alpha: 0.7)),
              ),
            ],
          ),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, bottom: AppSpacing.s16),
          child: Text(
            'Alur Harimu',
            style: AppTypography.subheading.copyWith(color: AppColors.cocoaInk),
          ),
        ),
        Stack(
          children: [
            // Vertical timeline line
            Positioned(
              left: 31,
              top: 24,
              bottom: 24,
              child: Container(
                width: 2,
                color: AppColors.peachGlow.withValues(alpha: 0.3),
              ),
            ),
            Column(
              children: flow.routineFlows.map((routineFlow) {
                final isCompleted = routineFlow.isCompleted;
                final isActive = !isCompleted; // Simplify active state for UI logic

                return Padding(
                  padding: const EdgeInsets.only(bottom: AppSpacing.s24),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Timeline dot
                      Container(
                        width: 64,
                        alignment: Alignment.center,
                        child: Container(
                          width: isActive ? 16 : 12,
                          height: isActive ? 16 : 12,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: isCompleted ? AppColors.sageBreeze : AppColors.peachGlow,
                            border: Border.all(
                              color: AppColors.butterCream,
                              width: 3,
                            ),
                            boxShadow: isActive ? [
                              BoxShadow(
                                color: AppColors.peachGlow.withValues(alpha: 0.4),
                                spreadRadius: 4,
                              )
                            ] : [],
                          ),
                        ),
                      ),
                      
                      // Routine Card
                      Expanded(
                        child: InkWell(
                          onTap: () => context.pushNamed(AppRouteNames.routineDetail, extra: routineFlow),
                          borderRadius: BorderRadius.circular(24),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.white.withValues(alpha: isCompleted ? 0.7 : 1.0),
                              borderRadius: BorderRadius.circular(24),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.cocoaInk.withValues(alpha: isActive ? 0.08 : 0.04),
                                  blurRadius: isActive ? 32 : 24,
                                  offset: Offset(0, isActive ? 12 : 8),
                                ),
                              ],
                              border: Border.all(
                                color: isActive ? AppColors.peachGlow.withValues(alpha: 0.3) : Colors.transparent,
                                width: 1,
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 48,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    color: isCompleted ? AppColors.sageBreeze.withValues(alpha: 0.2) : AppColors.peachGlow.withValues(alpha: 0.2),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    isCompleted ? LucideIcons.checkCircle2 : LucideIcons.coffee,
                                    color: isCompleted ? AppColors.sageBreeze : AppColors.peachGlow,
                                  ),
                                ),
                                const SizedBox(width: AppSpacing.s16),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        routineFlow.routineName,
                                        style: AppTypography.subheading.copyWith(
                                          color: AppColors.cocoaInk,
                                          fontSize: 17,
                                          decoration: isCompleted ? TextDecoration.lineThrough : null,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        '${routineFlow.startTime ?? "--:--"} • ${isCompleted ? 'Selesai' : 'Saatnya jeda sejenak'}',
                                        style: AppTypography.caption.copyWith(
                                          color: isCompleted ? AppColors.cocoaInk.withValues(alpha: 0.5) : AppColors.peachGlow,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                if (isActive)
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: const BoxDecoration(
                                      color: AppColors.cocoaInk,
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(LucideIcons.play, color: Colors.white, size: 18),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildMoodLog(BuildContext context) {
    if (MockMood.todayMood != null) {
      return AppCard(
        backgroundColor: AppColors.peachGlow.withValues(alpha: 0.1),
        border: Border.all(color: AppColors.peachGlow.withValues(alpha: 0.3)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: AppSpacing.s8),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: AppColors.peachGlow.withValues(alpha: 0.2),
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Icon(LucideIcons.heart, color: AppColors.peachGlow),
                ),
              ),
              const SizedBox(width: AppSpacing.s16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Perasaanmu hari ini',
                      style: AppTypography.caption.copyWith(color: AppColors.cocoaInk.withValues(alpha: 0.6)),
                    ),
                    Text(
                      MockMood.todayMood!,
                      style: AppTypography.subheading.copyWith(color: AppColors.cocoaInk),
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: const Icon(LucideIcons.edit2, color: AppColors.cocoaInk, size: 20),
                onPressed: () {
                  context.pushNamed(AppRouteNames.moodLog).then((_) {
                    // ignore: invalid_use_of_visible_for_testing_member
                    (context as Element).markNeedsBuild();
                  });
                },
              ),
            ],
          ),
        ),
      );
    }

    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Gimana perasaanmu saat ini?',
            style: AppTypography.subheading.copyWith(color: AppColors.cocoaInk),
          ),
          const SizedBox(height: AppSpacing.s24),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                context.pushNamed(AppRouteNames.moodLog).then((_) {
                  // ignore: invalid_use_of_visible_for_testing_member
                  (context as Element).markNeedsBuild();
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.cocoaInk,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                elevation: 0,
              ),
              child: Text(
                'Catat Mood',
                style: AppTypography.body.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _buildReflectionTeaser() {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(24),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s20, vertical: AppSpacing.s16),
        decoration: BoxDecoration(
          color: AppColors.sageBreeze.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: AppColors.sageBreeze.withValues(alpha: 0.2)),
        ),
        child: Row(
          children: [
            const Icon(LucideIcons.sparkles, color: AppColors.sageBreeze),
            const SizedBox(width: AppSpacing.s16),
            Expanded(
              child: Text(
                'Lihat catatan perjalanan minggu ini.',
                style: AppTypography.body.copyWith(color: AppColors.cocoaInk),
              ),
            ),
            const Icon(LucideIcons.chevronRight, color: AppColors.sageBreeze, size: 20),
          ],
        ),
      ),
    );
  }
}
