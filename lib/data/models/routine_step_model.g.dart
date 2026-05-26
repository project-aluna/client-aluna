// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: invalid_annotation_target

part of 'routine_step_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoutineStepModelImpl _$$RoutineStepModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RoutineStepModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      icon: json['icon'] as String?,
      estimatedDurationMinutes:
          (json['estimated_duration_minutes'] as num?)?.toInt() ?? 5,
      sortOrder: (json['sort_order'] as num?)?.toInt() ?? 1,
      isOptional: json['is_optional'] as bool? ?? false,
    );

Map<String, dynamic> _$$RoutineStepModelImplToJson(
        _$RoutineStepModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'icon': instance.icon,
      'estimated_duration_minutes': instance.estimatedDurationMinutes,
      'sort_order': instance.sortOrder,
      'is_optional': instance.isOptional,
    };
