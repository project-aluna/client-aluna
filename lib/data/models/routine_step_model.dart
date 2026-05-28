import 'package:freezed_annotation/freezed_annotation.dart';

part 'routine_step_model.freezed.dart';
part 'routine_step_model.g.dart';

@freezed
class RoutineStepModel with _$RoutineStepModel {
  const factory RoutineStepModel({
    required String id,
    required String title,
    String? description,
    String? icon,
    @JsonKey(name: 'estimated_duration_minutes') @Default(5) int estimatedDurationMinutes,
    @JsonKey(name: 'sort_order') @Default(1) int sortOrder,
    @JsonKey(name: 'is_optional') @Default(false) bool isOptional,
  }) = _RoutineStepModel;

  factory RoutineStepModel.fromJson(Map<String, dynamic> json) =>
      _$RoutineStepModelFromJson(json);
}
