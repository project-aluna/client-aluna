import 'dart:ui';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/theme/app_typography.dart';
import '../../../core/widgets/app_button.dart';
import '../../../data/models/daily_flow_model.dart';

class RoutineDetailScreen extends StatefulWidget {
  final RoutineFlowModel? routineFlow;

  const RoutineDetailScreen({super.key, this.routineFlow});

  @override
  State<RoutineDetailScreen> createState() => _RoutineDetailScreenState();
}

class _RoutineDetailScreenState extends State<RoutineDetailScreen> {
  late RoutineFlowModel _routine;

  @override
  void initState() {
    super.initState();
    _routine = widget.routineFlow ?? const RoutineFlowModel(
      id: 'mock',
      routineId: 'mock',
      routineName: 'Rutinitas',
      steps: [],
    );
  }

  void _toggleStep(int index) {
    setState(() {
      final steps = List<FlowStepModel>.from(_routine.steps);
      final step = steps[index];
      steps[index] = step.copyWith(isCompleted: !step.isCompleted);
      
      bool allCompleted = steps.isNotEmpty && steps.every((s) => s.isCompleted);
      _routine = _routine.copyWith(steps: steps, isCompleted: allCompleted);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.butterCream,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              // Top AppBar
              SliverPersistentHeader(
                pinned: true,
                delegate: _SliverAppBarDelegate(
                  minHeight: MediaQuery.of(context).padding.top + 64,
                  maxHeight: MediaQuery.of(context).padding.top + 64,
                  child: Container(
                    color: AppColors.butterCream.withValues(alpha: 0.8),
                    child: ClipRRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: SafeArea(
                          bottom: false,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s20, vertical: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _buildIconButton(
                                  icon: LucideIcons.arrowLeft,
                                  onTap: () => context.pop(),
                                ),
                                Text(
                                  'Daily Routine',
                                  style: AppTypography.subheading.copyWith(color: AppColors.cocoaInk),
                                ),
                                _buildIconButton(
                                  icon: LucideIcons.moreVertical,
                                  onTap: () {},
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // Header Section
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(top: AppSpacing.s16, bottom: AppSpacing.s32),
                  child: Column(
                    children: [
                      Text(
                        _routine.routineName,
                        style: AppTypography.display.copyWith(
                          color: AppColors.cocoaInk,
                          fontSize: 32,
                        ),
                      ),
                      const SizedBox(height: AppSpacing.s8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(LucideIcons.clock, size: 16, color: AppColors.peachGlow),
                          const SizedBox(width: AppSpacing.s8),
                          Text(
                            '15 min', // Mock duration
                            style: AppTypography.body.copyWith(
                              color: AppColors.cocoaInk.withValues(alpha: 0.7),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: AppSpacing.s8),
                      Text(
                        'Mulai harimu dengan tenang dan fokus.',
                        style: AppTypography.body.copyWith(
                          color: AppColors.cocoaInk.withValues(alpha: 0.7),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Routine Steps
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(AppSpacing.s20, 0, AppSpacing.s20, 140),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return _buildStepItem(index);
                    },
                    childCount: _routine.steps.length,
                  ),
                ),
              ),
            ],
          ),

          // Bottom Action Area
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.fromLTRB(AppSpacing.s20, 32, AppSpacing.s20, MediaQuery.of(context).padding.bottom + 24),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.butterCream.withValues(alpha: 0.0),
                    AppColors.butterCream.withValues(alpha: 0.8),
                    AppColors.butterCream,
                  ],
                  stops: const [0.0, 0.4, 1.0],
                ),
              ),
              child: SizedBox(
                width: double.infinity,
                child: AppButton(
                  text: 'Selesai',
                  onPressed: () {
                    // Update state locally or in provider
                    context.pop();
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStepItem(int index) {
    final step = _routine.steps[index];
    final isCompleted = step.isCompleted;
    
    // Find the active step (first uncompleted step)
    final firstUncompletedIndex = _routine.steps.indexWhere((s) => !s.isCompleted);
    final isActive = !isCompleted && index == firstUncompletedIndex;
    final isUpcoming = !isCompleted && !isActive;

    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Timeline Line & Icon
          SizedBox(
            width: 48,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Connecting line
                if (index != _routine.steps.length - 1)
                  Positioned(
                    top: 24,
                    bottom: -24,
                    child: Container(
                      width: 2,
                      color: AppColors.peachGlow.withValues(alpha: 0.3),
                    ),
                  ),
                // Step Icon indicator
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: const EdgeInsets.only(top: 8),
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isCompleted 
                        ? AppColors.sageBreeze 
                        : (isActive ? AppColors.roseClay : AppColors.peachGlow.withValues(alpha: 0.2)),
                      boxShadow: isActive ? [
                        BoxShadow(
                          color: AppColors.roseClay.withValues(alpha: 0.4),
                          spreadRadius: 4,
                        )
                      ] : [],
                    ),
                    child: Icon(
                      isCompleted ? LucideIcons.check : LucideIcons.circle,
                      color: isCompleted ? Colors.white : (isActive ? Colors.white : AppColors.peachGlow),
                      size: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          const SizedBox(width: AppSpacing.s12),
          
          // Card Content
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: AppSpacing.s24),
              child: InkWell(
                onTap: () => _toggleStep(index),
                borderRadius: BorderRadius.circular(24),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  padding: const EdgeInsets.all(AppSpacing.s16),
                  decoration: BoxDecoration(
                    color: isUpcoming ? Colors.white.withValues(alpha: 0.7) : Colors.white,
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                      color: isActive ? AppColors.roseClay : (isCompleted ? AppColors.sageBreeze.withValues(alpha: 0.3) : Colors.transparent),
                      width: isActive ? 2 : 1,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.cocoaInk.withValues(alpha: isActive ? 0.08 : 0.03),
                        blurRadius: isActive ? 24 : 16,
                        offset: Offset(0, isActive ? 8 : 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        step.title,
                        style: AppTypography.subheading.copyWith(
                          color: AppColors.cocoaInk,
                          decoration: isCompleted ? TextDecoration.lineThrough : null,
                          decorationColor: AppColors.cocoaInk.withValues(alpha: 0.5),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Langkah kecil untuk progresmu.',
                        style: AppTypography.body.copyWith(
                          color: AppColors.cocoaInk.withValues(alpha: 0.6),
                        ),
                      ),
                      if (isActive)
                        Padding(
                          padding: const EdgeInsets.only(top: AppSpacing.s16),
                          child: InkWell(
                            onTap: () => _toggleStep(index),
                            borderRadius: BorderRadius.circular(100),
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s16, vertical: 8),
                              decoration: BoxDecoration(
                                color: AppColors.roseClay.withValues(alpha: 0.15),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(LucideIcons.play, size: 16, color: AppColors.roseClay),
                                  const SizedBox(width: 4),
                                  Text(
                                    'Mulai',
                                    style: AppTypography.caption.copyWith(
                                      color: AppColors.roseClay,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconButton({required IconData icon, required VoidCallback onTap}) {
    return Container(
      width: 40,
      height: 40,
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
          borderRadius: BorderRadius.circular(20),
          onTap: onTap,
          child: Icon(icon, color: AppColors.cocoaInk.withValues(alpha: 0.7), size: 20),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => math.max(maxHeight, minHeight);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
