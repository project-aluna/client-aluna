import 'package:freezed_annotation/freezed_annotation.dart';

part 'routine_category_model.freezed.dart';
part 'routine_category_model.g.dart';

@freezed
class RoutineCategoryModel with _$RoutineCategoryModel {
  const factory RoutineCategoryModel({
    required String id,
    required String name,
    required String slug,
    required String icon,
    required String color,
  }) = _RoutineCategoryModel;

  factory RoutineCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$RoutineCategoryModelFromJson(json);
}
