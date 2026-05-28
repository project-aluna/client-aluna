// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'routine_step_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RoutineStepModel _$RoutineStepModelFromJson(Map<String, dynamic> json) {
  return _RoutineStepModel.fromJson(json);
}

/// @nodoc
mixin _$RoutineStepModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  @JsonKey(name: 'estimated_duration_minutes')
  int get estimatedDurationMinutes => throw _privateConstructorUsedError;
  @JsonKey(name: 'sort_order')
  int get sortOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_optional')
  bool get isOptional => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoutineStepModelCopyWith<RoutineStepModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutineStepModelCopyWith<$Res> {
  factory $RoutineStepModelCopyWith(
          RoutineStepModel value, $Res Function(RoutineStepModel) then) =
      _$RoutineStepModelCopyWithImpl<$Res, RoutineStepModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      String? description,
      String? icon,
      @JsonKey(name: 'estimated_duration_minutes') int estimatedDurationMinutes,
      @JsonKey(name: 'sort_order') int sortOrder,
      @JsonKey(name: 'is_optional') bool isOptional});
}

/// @nodoc
class _$RoutineStepModelCopyWithImpl<$Res, $Val extends RoutineStepModel>
    implements $RoutineStepModelCopyWith<$Res> {
  _$RoutineStepModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? icon = freezed,
    Object? estimatedDurationMinutes = null,
    Object? sortOrder = null,
    Object? isOptional = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      estimatedDurationMinutes: null == estimatedDurationMinutes
          ? _value.estimatedDurationMinutes
          : estimatedDurationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
      isOptional: null == isOptional
          ? _value.isOptional
          : isOptional // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoutineStepModelImplCopyWith<$Res>
    implements $RoutineStepModelCopyWith<$Res> {
  factory _$$RoutineStepModelImplCopyWith(_$RoutineStepModelImpl value,
          $Res Function(_$RoutineStepModelImpl) then) =
      __$$RoutineStepModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String? description,
      String? icon,
      @JsonKey(name: 'estimated_duration_minutes') int estimatedDurationMinutes,
      @JsonKey(name: 'sort_order') int sortOrder,
      @JsonKey(name: 'is_optional') bool isOptional});
}

/// @nodoc
class __$$RoutineStepModelImplCopyWithImpl<$Res>
    extends _$RoutineStepModelCopyWithImpl<$Res, _$RoutineStepModelImpl>
    implements _$$RoutineStepModelImplCopyWith<$Res> {
  __$$RoutineStepModelImplCopyWithImpl(_$RoutineStepModelImpl _value,
      $Res Function(_$RoutineStepModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? icon = freezed,
    Object? estimatedDurationMinutes = null,
    Object? sortOrder = null,
    Object? isOptional = null,
  }) {
    return _then(_$RoutineStepModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      estimatedDurationMinutes: null == estimatedDurationMinutes
          ? _value.estimatedDurationMinutes
          : estimatedDurationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
      isOptional: null == isOptional
          ? _value.isOptional
          : isOptional // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoutineStepModelImpl implements _RoutineStepModel {
  const _$RoutineStepModelImpl(
      {required this.id,
      required this.title,
      this.description,
      this.icon,
      @JsonKey(name: 'estimated_duration_minutes')
      this.estimatedDurationMinutes = 5,
      @JsonKey(name: 'sort_order') this.sortOrder = 1,
      @JsonKey(name: 'is_optional') this.isOptional = false});

  factory _$RoutineStepModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoutineStepModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String? description;
  @override
  final String? icon;
  @override
  @JsonKey(name: 'estimated_duration_minutes')
  final int estimatedDurationMinutes;
  @override
  @JsonKey(name: 'sort_order')
  final int sortOrder;
  @override
  @JsonKey(name: 'is_optional')
  final bool isOptional;

  @override
  String toString() {
    return 'RoutineStepModel(id: $id, title: $title, description: $description, icon: $icon, estimatedDurationMinutes: $estimatedDurationMinutes, sortOrder: $sortOrder, isOptional: $isOptional)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoutineStepModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(
                    other.estimatedDurationMinutes, estimatedDurationMinutes) ||
                other.estimatedDurationMinutes == estimatedDurationMinutes) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            (identical(other.isOptional, isOptional) ||
                other.isOptional == isOptional));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, icon,
      estimatedDurationMinutes, sortOrder, isOptional);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoutineStepModelImplCopyWith<_$RoutineStepModelImpl> get copyWith =>
      __$$RoutineStepModelImplCopyWithImpl<_$RoutineStepModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoutineStepModelImplToJson(
      this,
    );
  }
}

abstract class _RoutineStepModel implements RoutineStepModel {
  const factory _RoutineStepModel(
          {required final String id,
          required final String title,
          final String? description,
          final String? icon,
          @JsonKey(name: 'estimated_duration_minutes')
          final int estimatedDurationMinutes,
          @JsonKey(name: 'sort_order') final int sortOrder,
          @JsonKey(name: 'is_optional') final bool isOptional}) =
      _$RoutineStepModelImpl;

  factory _RoutineStepModel.fromJson(Map<String, dynamic> json) =
      _$RoutineStepModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String? get description;
  @override
  String? get icon;
  @override
  @JsonKey(name: 'estimated_duration_minutes')
  int get estimatedDurationMinutes;
  @override
  @JsonKey(name: 'sort_order')
  int get sortOrder;
  @override
  @JsonKey(name: 'is_optional')
  bool get isOptional;
  @override
  @JsonKey(ignore: true)
  _$$RoutineStepModelImplCopyWith<_$RoutineStepModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
