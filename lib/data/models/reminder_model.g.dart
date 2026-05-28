// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: invalid_annotation_target

part of 'reminder_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReminderModelImpl _$$ReminderModelImplFromJson(Map<String, dynamic> json) =>
    _$ReminderModelImpl(
      id: json['id'] as String,
      time: json['time'] as String,
      isEnabled: json['is_enabled'] as bool? ?? true,
      label: json['label'] as String? ?? '',
    );

Map<String, dynamic> _$$ReminderModelImplToJson(_$ReminderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'time': instance.time,
      'is_enabled': instance.isEnabled,
      'label': instance.label,
    };
