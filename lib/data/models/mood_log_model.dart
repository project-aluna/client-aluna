import 'package:freezed_annotation/freezed_annotation.dart';

part 'mood_log_model.freezed.dart';
part 'mood_log_model.g.dart';

@freezed
class MoodLogModel with _$MoodLogModel {
  const factory MoodLogModel({
    required String id,
    @JsonKey(name: 'mood_score') required int moodScore,
    @JsonKey(name: 'energy_level') int? energyLevel,
    @JsonKey(name: 'stress_level') int? stressLevel,
    String? note,
    @JsonKey(name: 'logged_at') required String loggedAt,
  }) = _MoodLogModel;

  factory MoodLogModel.fromJson(Map<String, dynamic> json) =>
      _$MoodLogModelFromJson(json);
}
