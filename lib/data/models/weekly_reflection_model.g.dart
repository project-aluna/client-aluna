// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: invalid_annotation_target

part of 'weekly_reflection_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeeklyReflectionModelImpl _$$WeeklyReflectionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WeeklyReflectionModelImpl(
      id: json['id'] as String,
      weekStart: json['week_start'] as String,
      weekEnd: json['week_end'] as String,
      insightText: json['insight_text'] as String?,
      completionPercent: (json['completion_percent'] as num?)?.toInt() ?? 0,
      averageMood: (json['average_mood'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$WeeklyReflectionModelImplToJson(
        _$WeeklyReflectionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'week_start': instance.weekStart,
      'week_end': instance.weekEnd,
      'insight_text': instance.insightText,
      'completion_percent': instance.completionPercent,
      'average_mood': instance.averageMood,
    };
