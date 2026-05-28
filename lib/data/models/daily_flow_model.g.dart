// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: invalid_annotation_target

part of 'daily_flow_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyFlowModelImpl _$$DailyFlowModelImplFromJson(Map<String, dynamic> json) =>
    _$DailyFlowModelImpl(
      id: json['id'] as String,
      date: json['date'] as String,
      routineFlows: (json['routine_flows'] as List<dynamic>?)
              ?.map((e) => RoutineFlowModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$DailyFlowModelImplToJson(
        _$DailyFlowModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'routine_flows': instance.routineFlows,
    };

_$RoutineFlowModelImpl _$$RoutineFlowModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RoutineFlowModelImpl(
      id: json['id'] as String,
      routineId: json['routine_id'] as String,
      routineName: json['routine_name'] as String,
      startTime: json['start_time'] as String?,
      isCompleted: json['is_completed'] as bool? ?? false,
      steps: (json['steps'] as List<dynamic>?)
              ?.map((e) => FlowStepModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$RoutineFlowModelImplToJson(
        _$RoutineFlowModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'routine_id': instance.routineId,
      'routine_name': instance.routineName,
      'start_time': instance.startTime,
      'is_completed': instance.isCompleted,
      'steps': instance.steps,
    };

_$FlowStepModelImpl _$$FlowStepModelImplFromJson(Map<String, dynamic> json) =>
    _$FlowStepModelImpl(
      id: json['id'] as String,
      stepId: json['step_id'] as String,
      title: json['title'] as String,
      isCompleted: json['is_completed'] as bool? ?? false,
      completedAt: json['completed_at'] as String?,
    );

Map<String, dynamic> _$$FlowStepModelImplToJson(_$FlowStepModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'step_id': instance.stepId,
      'title': instance.title,
      'is_completed': instance.isCompleted,
      'completed_at': instance.completedAt,
    };
