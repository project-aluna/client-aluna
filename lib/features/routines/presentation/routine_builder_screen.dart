import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/theme/app_typography.dart';
import '../../../data/mock/mock_routines.dart';
import '../../../data/models/routine_model.dart';
import '../../../data/models/routine_step_model.dart';

class RoutineBuilderScreen extends StatefulWidget {
  const RoutineBuilderScreen({super.key});

  @override
  State<RoutineBuilderScreen> createState() => _RoutineBuilderScreenState();
}

class _RoutineBuilderScreenState extends State<RoutineBuilderScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  
  String _selectedIcon = 'assets/icons/sun.png';
  Color _selectedColor = AppColors.roseClay;
  TimeOfDay _selectedTime = const TimeOfDay(hour: 7, minute: 0);
  
  final List<String> _selectedDays = ['monday', 'tuesday', 'wednesday', 'thursday', 'friday'];
  final List<RoutineStepModel> _steps = [];

  final List<String> _availableIcons = [
    'assets/icons/sun.png',
    'assets/icons/moon.png',
    'assets/icons/skincare.png',
    'assets/icons/journal.png',
    'assets/icons/yoga.png',
    'assets/icons/book.png',
    'assets/icons/coffee.png',
    'assets/icons/water-bottle.png',
  ];

  final List<Color> _availableColors = [
    AppColors.roseClay,
    AppColors.peachGlow,
    AppColors.lavenderMist,
    AppColors.sageBreeze,
    AppColors.skyPowder,
  ];

  final List<String> _daysOfWeek = [
    'monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday'
  ];

  void _saveRoutine() {
    if (_formKey.currentState!.validate()) {
      if (MockRoutines.routines.length >= 3) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Limit versi gratis tercapai (Maks 3 rutinitas). Upgrade untuk menambah lagi.',
              style: AppTypography.body.copyWith(color: Colors.white),
            ),
            backgroundColor: AppColors.cocoaInk,
            behavior: SnackBarBehavior.floating,
          ),
        );
        return;
      }

      final newRoutine = RoutineModel(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        categoryId: 'cat_custom',
        name: _nameController.text,
        icon: _selectedIcon,
        color: '#${_selectedColor.toARGB32().toRadixString(16).substring(2, 8).toUpperCase()}',
        scheduleType: 'custom',
        scheduleDays: _selectedDays,
        startTime: '${_selectedTime.hour.toString().padLeft(2, '0')}:${_selectedTime.minute.toString().padLeft(2, '0')}',
        isActive: true,
        stepsCount: _steps.length,
        steps: _steps,
        estimatedDurationMinutes: _steps.fold(0, (sum, step) => sum + step.estimatedDurationMinutes),
      );

      setState(() {
        MockRoutines.routines.add(newRoutine);
      });

      context.pop();
    }
  }

  void _addStep() {
    final stepId = DateTime.now().millisecondsSinceEpoch.toString();
    setState(() {
      _steps.add(RoutineStepModel(
        id: stepId,
        title: 'Langkah Baru',
        icon: 'assets/icons/sparkle.png', // Fallback for new steps
        estimatedDurationMinutes: 5,
        sortOrder: _steps.length + 1,
      ));
    });
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.butterCream,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(LucideIcons.arrowLeft, color: AppColors.cocoaInk),
          onPressed: () => context.pop(),
        ),
        title: Text('Buat Rutinitas', style: AppTypography.subheading.copyWith(color: AppColors.cocoaInk)),
        actions: [
          TextButton(
            onPressed: _saveRoutine,
            child: Text(
              'Simpan',
              style: AppTypography.body.copyWith(color: AppColors.roseClay, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(AppSpacing.s20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Name Input
                    TextFormField(
                      controller: _nameController,
                      style: AppTypography.heading.copyWith(color: AppColors.cocoaInk, fontSize: 24),
                      decoration: InputDecoration(
                        hintText: 'Nama Rutinitas',
                        hintStyle: AppTypography.heading.copyWith(color: AppColors.cocoaInk.withValues(alpha: 0.3), fontSize: 24),
                        border: InputBorder.none,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Nama rutinitas tidak boleh kosong';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: AppSpacing.s24),

                    // Icon Selection
                    Text('Ikon', style: AppTypography.subheading.copyWith(color: AppColors.cocoaInk)),
                    const SizedBox(height: AppSpacing.s12),
                    SizedBox(
                      height: 60,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: _availableIcons.length,
                        separatorBuilder: (context, index) => const SizedBox(width: AppSpacing.s12),
                        itemBuilder: (context, index) {
                          final iconPath = _availableIcons[index];
                          final isSelected = _selectedIcon == iconPath;
                          return GestureDetector(
                            onTap: () => setState(() => _selectedIcon = iconPath),
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                color: isSelected ? AppColors.roseClay.withValues(alpha: 0.1) : Colors.white,
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                  color: isSelected ? AppColors.roseClay : Colors.transparent,
                                  width: 2,
                                ),
                              ),
                              child: Center(
                                child: Image.asset(
                                  iconPath,
                                  width: 28,
                                  height: 28,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: AppSpacing.s24),

                    // Color Selection
                    Text('Warna Tema', style: AppTypography.subheading.copyWith(color: AppColors.cocoaInk)),
                    const SizedBox(height: AppSpacing.s12),
                    SizedBox(
                      height: 48,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: _availableColors.length,
                        separatorBuilder: (context, index) => const SizedBox(width: AppSpacing.s12),
                        itemBuilder: (context, index) {
                          final color = _availableColors[index];
                          final isSelected = _selectedColor == color;
                          return GestureDetector(
                            onTap: () => setState(() => _selectedColor = color),
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              width: 48,
                              height: 48,
                              decoration: BoxDecoration(
                                color: color,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: isSelected ? AppColors.cocoaInk : Colors.transparent,
                                  width: 3,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: AppSpacing.s24),

                    // Time Selection
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Waktu Mulai', style: AppTypography.subheading.copyWith(color: AppColors.cocoaInk)),
                        GestureDetector(
                          onTap: () async {
                            final time = await showTimePicker(
                              context: context,
                              initialTime: _selectedTime,
                            );
                            if (time != null) {
                              setState(() => _selectedTime = time);
                            }
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              '${_selectedTime.hour.toString().padLeft(2, '0')}:${_selectedTime.minute.toString().padLeft(2, '0')}',
                              style: AppTypography.body.copyWith(color: AppColors.cocoaInk, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSpacing.s24),

                    // Days Selection
                    Text('Jadwal Hari', style: AppTypography.subheading.copyWith(color: AppColors.cocoaInk)),
                    const SizedBox(height: AppSpacing.s12),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: _daysOfWeek.map((day) {
                        final isSelected = _selectedDays.contains(day);
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              if (isSelected) {
                                _selectedDays.remove(day);
                              } else {
                                _selectedDays.add(day);
                              }
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              color: isSelected ? AppColors.sageBreeze : Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              day.substring(0, 3).toUpperCase(),
                              style: AppTypography.caption.copyWith(
                                color: isSelected ? Colors.white : AppColors.cocoaInk,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: AppSpacing.s32),

                    // Steps Header
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Langkah-langkah', style: AppTypography.subheading.copyWith(color: AppColors.cocoaInk)),
                        IconButton(
                          icon: const Icon(LucideIcons.plus, color: AppColors.roseClay),
                          onPressed: _addStep,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Steps List
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s20),
              sliver: SliverReorderableList(
                itemCount: _steps.length,
                onReorderItem: (oldIndex, newIndex) {
                  setState(() {
                    final step = _steps.removeAt(oldIndex);
                    _steps.insert(newIndex, step);
                  });
                },
                itemBuilder: (context, index) {
                  final step = _steps[index];
                  return Container(
                    key: ValueKey(step.id),
                    margin: const EdgeInsets.only(bottom: AppSpacing.s12),
                    padding: const EdgeInsets.all(AppSpacing.s16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        ReorderableDragStartListener(
                          index: index,
                          child: const Icon(LucideIcons.gripVertical, color: Colors.grey),
                        ),
                        const SizedBox(width: AppSpacing.s12),
                        Expanded(
                          child: Text(step.title, style: AppTypography.body.copyWith(color: AppColors.cocoaInk)),
                        ),
                        Text('${step.estimatedDurationMinutes}m', style: AppTypography.caption.copyWith(color: Colors.grey)),
                        IconButton(
                          icon: const Icon(LucideIcons.x, color: Colors.redAccent, size: 18),
                          onPressed: () {
                            setState(() => _steps.removeAt(index));
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 100)), // Bottom padding
          ],
        ),
      ),
    );
  }
}
