import 'package:freezed_annotation/freezed_annotation.dart';
import 'routine_step_model.dart';

part 'routine_model.freezed.dart';
part 'routine_model.g.dart';

@freezed
class RoutineModel with _$RoutineModel {
  const factory RoutineModel({
    required String id,
    @JsonKey(name: 'category_id') required String categoryId,
    required String name,
    String? description,
    String? icon,
    String? color,
    @JsonKey(name: 'estimated_duration_minutes') @Default(0) int estimatedDurationMinutes,
    @JsonKey(name: 'schedule_type') @Default('daily') String scheduleType,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
    @JsonKey(name: 'steps_count') @Default(0) int stepsCount,
    @JsonKey(name: 'schedule_days') @Default([]) List<String> scheduleDays,
    @Default([]) List<RoutineStepModel> steps,
  }) = _RoutineModel;

  factory RoutineModel.fromJson(Map<String, dynamic> json) =>
      _$RoutineModelFromJson(json);
}
