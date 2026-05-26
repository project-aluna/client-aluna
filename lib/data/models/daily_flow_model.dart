import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_flow_model.freezed.dart';
part 'daily_flow_model.g.dart';

@freezed
class DailyFlowModel with _$DailyFlowModel {
  const factory DailyFlowModel({
    required String id,
    required String date,
    @JsonKey(name: 'routine_flows') @Default([]) List<RoutineFlowModel> routineFlows,
  }) = _DailyFlowModel;

  factory DailyFlowModel.fromJson(Map<String, dynamic> json) =>
      _$DailyFlowModelFromJson(json);
}

@freezed
class RoutineFlowModel with _$RoutineFlowModel {
  const factory RoutineFlowModel({
    required String id,
    @JsonKey(name: 'routine_id') required String routineId,
    @JsonKey(name: 'routine_name') required String routineName,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'is_completed') @Default(false) bool isCompleted,
    @Default([]) List<FlowStepModel> steps,
  }) = _RoutineFlowModel;

  factory RoutineFlowModel.fromJson(Map<String, dynamic> json) =>
      _$RoutineFlowModelFromJson(json);
}

@freezed
class FlowStepModel with _$FlowStepModel {
  const factory FlowStepModel({
    required String id,
    @JsonKey(name: 'step_id') required String stepId,
    required String title,
    @JsonKey(name: 'is_completed') @Default(false) bool isCompleted,
    @JsonKey(name: 'completed_at') String? completedAt,
  }) = _FlowStepModel;

  factory FlowStepModel.fromJson(Map<String, dynamic> json) =>
      _$FlowStepModelFromJson(json);
}
