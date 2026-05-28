import 'package:freezed_annotation/freezed_annotation.dart';

part 'reminder_model.freezed.dart';
part 'reminder_model.g.dart';

@freezed
class ReminderModel with _$ReminderModel {
  const factory ReminderModel({
    required String id,
    required String time,
    @JsonKey(name: 'is_enabled') @Default(true) bool isEnabled,
    @Default('') String label,
  }) = _ReminderModel;

  factory ReminderModel.fromJson(Map<String, dynamic> json) =>
      _$ReminderModelFromJson(json);
}
