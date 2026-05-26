// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lifestyle_goal_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LifestyleGoalModel _$LifestyleGoalModelFromJson(Map<String, dynamic> json) {
  return _LifestyleGoalModel.fromJson(json);
}

/// @nodoc
mixin _$LifestyleGoalModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LifestyleGoalModelCopyWith<LifestyleGoalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LifestyleGoalModelCopyWith<$Res> {
  factory $LifestyleGoalModelCopyWith(
          LifestyleGoalModel value, $Res Function(LifestyleGoalModel) then) =
      _$LifestyleGoalModelCopyWithImpl<$Res, LifestyleGoalModel>;
  @useResult
  $Res call(
      {String id, String name, String slug, String description, String icon});
}

/// @nodoc
class _$LifestyleGoalModelCopyWithImpl<$Res, $Val extends LifestyleGoalModel>
    implements $LifestyleGoalModelCopyWith<$Res> {
  _$LifestyleGoalModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LifestyleGoalModelImplCopyWith<$Res>
    implements $LifestyleGoalModelCopyWith<$Res> {
  factory _$$LifestyleGoalModelImplCopyWith(_$LifestyleGoalModelImpl value,
          $Res Function(_$LifestyleGoalModelImpl) then) =
      __$$LifestyleGoalModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String name, String slug, String description, String icon});
}

/// @nodoc
class __$$LifestyleGoalModelImplCopyWithImpl<$Res>
    extends _$LifestyleGoalModelCopyWithImpl<$Res, _$LifestyleGoalModelImpl>
    implements _$$LifestyleGoalModelImplCopyWith<$Res> {
  __$$LifestyleGoalModelImplCopyWithImpl(_$LifestyleGoalModelImpl _value,
      $Res Function(_$LifestyleGoalModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_$LifestyleGoalModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LifestyleGoalModelImpl implements _LifestyleGoalModel {
  const _$LifestyleGoalModelImpl(
      {required this.id,
      required this.name,
      required this.slug,
      required this.description,
      required this.icon});

  factory _$LifestyleGoalModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LifestyleGoalModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String slug;
  @override
  final String description;
  @override
  final String icon;

  @override
  String toString() {
    return 'LifestyleGoalModel(id: $id, name: $name, slug: $slug, description: $description, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LifestyleGoalModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, slug, description, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LifestyleGoalModelImplCopyWith<_$LifestyleGoalModelImpl> get copyWith =>
      __$$LifestyleGoalModelImplCopyWithImpl<_$LifestyleGoalModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LifestyleGoalModelImplToJson(
      this,
    );
  }
}

abstract class _LifestyleGoalModel implements LifestyleGoalModel {
  const factory _LifestyleGoalModel(
      {required final String id,
      required final String name,
      required final String slug,
      required final String description,
      required final String icon}) = _$LifestyleGoalModelImpl;

  factory _LifestyleGoalModel.fromJson(Map<String, dynamic> json) =
      _$LifestyleGoalModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get slug;
  @override
  String get description;
  @override
  String get icon;
  @override
  @JsonKey(ignore: true)
  _$$LifestyleGoalModelImplCopyWith<_$LifestyleGoalModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
