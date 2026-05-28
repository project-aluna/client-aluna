// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: invalid_annotation_target

part of 'mood_log_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoodLogModelImpl _$$MoodLogModelImplFromJson(Map<String, dynamic> json) =>
    _$MoodLogModelImpl(
      id: json['id'] as String,
      moodScore: (json['mood_score'] as num).toInt(),
      energyLevel: (json['energy_level'] as num?)?.toInt(),
      stressLevel: (json['stress_level'] as num?)?.toInt(),
      note: json['note'] as String?,
      loggedAt: json['logged_at'] as String,
    );

Map<String, dynamic> _$$MoodLogModelImplToJson(_$MoodLogModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mood_score': instance.moodScore,
      'energy_level': instance.energyLevel,
      'stress_level': instance.stressLevel,
      'note': instance.note,
      'logged_at': instance.loggedAt,
    };
