import 'package:freezed_annotation/freezed_annotation.dart';

part 'lifestyle_goal_model.freezed.dart';
part 'lifestyle_goal_model.g.dart';

@freezed
class LifestyleGoalModel with _$LifestyleGoalModel {
  const factory LifestyleGoalModel({
    required String id,
    required String name,
    required String slug,
    required String description,
    required String icon,
  }) = _LifestyleGoalModel;

  factory LifestyleGoalModel.fromJson(Map<String, dynamic> json) =>
      _$LifestyleGoalModelFromJson(json);
}
