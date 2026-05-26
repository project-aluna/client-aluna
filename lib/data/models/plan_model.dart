import 'package:freezed_annotation/freezed_annotation.dart';

part 'plan_model.freezed.dart';
part 'plan_model.g.dart';

@freezed
class PlanModel with _$PlanModel {
  const factory PlanModel({
    required String id,
    required String name,
    required double price,
    @Default([]) List<String> features,
    @JsonKey(name: 'is_current') @Default(false) bool isCurrent,
  }) = _PlanModel;

  factory PlanModel.fromJson(Map<String, dynamic> json) =>
      _$PlanModelFromJson(json);
}
