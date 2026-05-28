// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: invalid_annotation_target

part of 'routine_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoutineModelImpl _$$RoutineModelImplFromJson(Map<String, dynamic> json) =>
    _$RoutineModelImpl(
      id: json['id'] as String,
      categoryId: json['category_id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      icon: json['icon'] as String?,
      color: json['color'] as String?,
      estimatedDurationMinutes:
          (json['estimated_duration_minutes'] as num?)?.toInt() ?? 0,
      scheduleType: json['schedule_type'] as String? ?? 'daily',
      startTime: json['start_time'] as String?,
      isActive: json['is_active'] as bool? ?? true,
      stepsCount: (json['steps_count'] as num?)?.toInt() ?? 0,
      scheduleDays: (json['schedule_days'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      steps: (json['steps'] as List<dynamic>?)
              ?.map((e) => RoutineStepModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$RoutineModelImplToJson(_$RoutineModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category_id': instance.categoryId,
      'name': instance.name,
      'description': instance.description,
      'icon': instance.icon,
      'color': instance.color,
      'estimated_duration_minutes': instance.estimatedDurationMinutes,
      'schedule_type': instance.scheduleType,
      'start_time': instance.startTime,
      'is_active': instance.isActive,
      'steps_count': instance.stepsCount,
      'schedule_days': instance.scheduleDays,
      'steps': instance.steps,
    };
