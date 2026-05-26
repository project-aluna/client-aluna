// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'routine_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RoutineModel _$RoutineModelFromJson(Map<String, dynamic> json) {
  return _RoutineModel.fromJson(json);
}

/// @nodoc
mixin _$RoutineModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  String get categoryId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  @JsonKey(name: 'estimated_duration_minutes')
  int get estimatedDurationMinutes => throw _privateConstructorUsedError;
  @JsonKey(name: 'schedule_type')
  String get scheduleType => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  String? get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'steps_count')
  int get stepsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'schedule_days')
  List<String> get scheduleDays => throw _privateConstructorUsedError;
  List<RoutineStepModel> get steps => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoutineModelCopyWith<RoutineModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutineModelCopyWith<$Res> {
  factory $RoutineModelCopyWith(
          RoutineModel value, $Res Function(RoutineModel) then) =
      _$RoutineModelCopyWithImpl<$Res, RoutineModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'category_id') String categoryId,
      String name,
      String? description,
      String? icon,
      String? color,
      @JsonKey(name: 'estimated_duration_minutes') int estimatedDurationMinutes,
      @JsonKey(name: 'schedule_type') String scheduleType,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'is_active') bool isActive,
      @JsonKey(name: 'steps_count') int stepsCount,
      @JsonKey(name: 'schedule_days') List<String> scheduleDays,
      List<RoutineStepModel> steps});
}

/// @nodoc
class _$RoutineModelCopyWithImpl<$Res, $Val extends RoutineModel>
    implements $RoutineModelCopyWith<$Res> {
  _$RoutineModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryId = null,
    Object? name = null,
    Object? description = freezed,
    Object? icon = freezed,
    Object? color = freezed,
    Object? estimatedDurationMinutes = null,
    Object? scheduleType = null,
    Object? startTime = freezed,
    Object? isActive = null,
    Object? stepsCount = null,
    Object? scheduleDays = null,
    Object? steps = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      estimatedDurationMinutes: null == estimatedDurationMinutes
          ? _value.estimatedDurationMinutes
          : estimatedDurationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      scheduleType: null == scheduleType
          ? _value.scheduleType
          : scheduleType // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      stepsCount: null == stepsCount
          ? _value.stepsCount
          : stepsCount // ignore: cast_nullable_to_non_nullable
              as int,
      scheduleDays: null == scheduleDays
          ? _value.scheduleDays
          : scheduleDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<RoutineStepModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoutineModelImplCopyWith<$Res>
    implements $RoutineModelCopyWith<$Res> {
  factory _$$RoutineModelImplCopyWith(
          _$RoutineModelImpl value, $Res Function(_$RoutineModelImpl) then) =
      __$$RoutineModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'category_id') String categoryId,
      String name,
      String? description,
      String? icon,
      String? color,
      @JsonKey(name: 'estimated_duration_minutes') int estimatedDurationMinutes,
      @JsonKey(name: 'schedule_type') String scheduleType,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'is_active') bool isActive,
      @JsonKey(name: 'steps_count') int stepsCount,
      @JsonKey(name: 'schedule_days') List<String> scheduleDays,
      List<RoutineStepModel> steps});
}

/// @nodoc
class __$$RoutineModelImplCopyWithImpl<$Res>
    extends _$RoutineModelCopyWithImpl<$Res, _$RoutineModelImpl>
    implements _$$RoutineModelImplCopyWith<$Res> {
  __$$RoutineModelImplCopyWithImpl(
      _$RoutineModelImpl _value, $Res Function(_$RoutineModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryId = null,
    Object? name = null,
    Object? description = freezed,
    Object? icon = freezed,
    Object? color = freezed,
    Object? estimatedDurationMinutes = null,
    Object? scheduleType = null,
    Object? startTime = freezed,
    Object? isActive = null,
    Object? stepsCount = null,
    Object? scheduleDays = null,
    Object? steps = null,
  }) {
    return _then(_$RoutineModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      estimatedDurationMinutes: null == estimatedDurationMinutes
          ? _value.estimatedDurationMinutes
          : estimatedDurationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      scheduleType: null == scheduleType
          ? _value.scheduleType
          : scheduleType // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      stepsCount: null == stepsCount
          ? _value.stepsCount
          : stepsCount // ignore: cast_nullable_to_non_nullable
              as int,
      scheduleDays: null == scheduleDays
          ? _value._scheduleDays
          : scheduleDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      steps: null == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<RoutineStepModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoutineModelImpl implements _RoutineModel {
  const _$RoutineModelImpl(
      {required this.id,
      @JsonKey(name: 'category_id') required this.categoryId,
      required this.name,
      this.description,
      this.icon,
      this.color,
      @JsonKey(name: 'estimated_duration_minutes')
      this.estimatedDurationMinutes = 0,
      @JsonKey(name: 'schedule_type') this.scheduleType = 'daily',
      @JsonKey(name: 'start_time') this.startTime,
      @JsonKey(name: 'is_active') this.isActive = true,
      @JsonKey(name: 'steps_count') this.stepsCount = 0,
      @JsonKey(name: 'schedule_days')
      final List<String> scheduleDays = const [],
      final List<RoutineStepModel> steps = const []})
      : _scheduleDays = scheduleDays,
        _steps = steps;

  factory _$RoutineModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoutineModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'category_id')
  final String categoryId;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String? icon;
  @override
  final String? color;
  @override
  @JsonKey(name: 'estimated_duration_minutes')
  final int estimatedDurationMinutes;
  @override
  @JsonKey(name: 'schedule_type')
  final String scheduleType;
  @override
  @JsonKey(name: 'start_time')
  final String? startTime;
  @override
  @JsonKey(name: 'is_active')
  final bool isActive;
  @override
  @JsonKey(name: 'steps_count')
  final int stepsCount;
  final List<String> _scheduleDays;
  @override
  @JsonKey(name: 'schedule_days')
  List<String> get scheduleDays {
    if (_scheduleDays is EqualUnmodifiableListView) return _scheduleDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scheduleDays);
  }

  final List<RoutineStepModel> _steps;
  @override
  @JsonKey()
  List<RoutineStepModel> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  String toString() {
    return 'RoutineModel(id: $id, categoryId: $categoryId, name: $name, description: $description, icon: $icon, color: $color, estimatedDurationMinutes: $estimatedDurationMinutes, scheduleType: $scheduleType, startTime: $startTime, isActive: $isActive, stepsCount: $stepsCount, scheduleDays: $scheduleDays, steps: $steps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoutineModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(
                    other.estimatedDurationMinutes, estimatedDurationMinutes) ||
                other.estimatedDurationMinutes == estimatedDurationMinutes) &&
            (identical(other.scheduleType, scheduleType) ||
                other.scheduleType == scheduleType) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.stepsCount, stepsCount) ||
                other.stepsCount == stepsCount) &&
            const DeepCollectionEquality()
                .equals(other._scheduleDays, _scheduleDays) &&
            const DeepCollectionEquality().equals(other._steps, _steps));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      categoryId,
      name,
      description,
      icon,
      color,
      estimatedDurationMinutes,
      scheduleType,
      startTime,
      isActive,
      stepsCount,
      const DeepCollectionEquality().hash(_scheduleDays),
      const DeepCollectionEquality().hash(_steps));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoutineModelImplCopyWith<_$RoutineModelImpl> get copyWith =>
      __$$RoutineModelImplCopyWithImpl<_$RoutineModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoutineModelImplToJson(
      this,
    );
  }
}

abstract class _RoutineModel implements RoutineModel {
  const factory _RoutineModel(
      {required final String id,
      @JsonKey(name: 'category_id') required final String categoryId,
      required final String name,
      final String? description,
      final String? icon,
      final String? color,
      @JsonKey(name: 'estimated_duration_minutes')
      final int estimatedDurationMinutes,
      @JsonKey(name: 'schedule_type') final String scheduleType,
      @JsonKey(name: 'start_time') final String? startTime,
      @JsonKey(name: 'is_active') final bool isActive,
      @JsonKey(name: 'steps_count') final int stepsCount,
      @JsonKey(name: 'schedule_days') final List<String> scheduleDays,
      final List<RoutineStepModel> steps}) = _$RoutineModelImpl;

  factory _RoutineModel.fromJson(Map<String, dynamic> json) =
      _$RoutineModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'category_id')
  String get categoryId;
  @override
  String get name;
  @override
  String? get description;
  @override
  String? get icon;
  @override
  String? get color;
  @override
  @JsonKey(name: 'estimated_duration_minutes')
  int get estimatedDurationMinutes;
  @override
  @JsonKey(name: 'schedule_type')
  String get scheduleType;
  @override
  @JsonKey(name: 'start_time')
  String? get startTime;
  @override
  @JsonKey(name: 'is_active')
  bool get isActive;
  @override
  @JsonKey(name: 'steps_count')
  int get stepsCount;
  @override
  @JsonKey(name: 'schedule_days')
  List<String> get scheduleDays;
  @override
  List<RoutineStepModel> get steps;
  @override
  @JsonKey(ignore: true)
  _$$RoutineModelImplCopyWith<_$RoutineModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
