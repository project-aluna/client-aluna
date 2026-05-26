import 'package:freezed_annotation/freezed_annotation.dart';

part 'weekly_reflection_model.freezed.dart';
part 'weekly_reflection_model.g.dart';

@freezed
class WeeklyReflectionModel with _$WeeklyReflectionModel {
  const factory WeeklyReflectionModel({
    required String id,
    @JsonKey(name: 'week_start') required String weekStart,
    @JsonKey(name: 'week_end') required String weekEnd,
    @JsonKey(name: 'insight_text') String? insightText,
    @JsonKey(name: 'completion_percent') @Default(0) int completionPercent,
    @JsonKey(name: 'average_mood') @Default(0.0) double averageMood,
  }) = _WeeklyReflectionModel;

  factory WeeklyReflectionModel.fromJson(Map<String, dynamic> json) =>
      _$WeeklyReflectionModelFromJson(json);
}
