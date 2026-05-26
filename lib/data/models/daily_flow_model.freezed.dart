// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_flow_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DailyFlowModel _$DailyFlowModelFromJson(Map<String, dynamic> json) {
  return _DailyFlowModel.fromJson(json);
}

/// @nodoc
mixin _$DailyFlowModel {
  String get id => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'routine_flows')
  List<RoutineFlowModel> get routineFlows => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyFlowModelCopyWith<DailyFlowModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyFlowModelCopyWith<$Res> {
  factory $DailyFlowModelCopyWith(
          DailyFlowModel value, $Res Function(DailyFlowModel) then) =
      _$DailyFlowModelCopyWithImpl<$Res, DailyFlowModel>;
  @useResult
  $Res call(
      {String id,
      String date,
      @JsonKey(name: 'routine_flows') List<RoutineFlowModel> routineFlows});
}

/// @nodoc
class _$DailyFlowModelCopyWithImpl<$Res, $Val extends DailyFlowModel>
    implements $DailyFlowModelCopyWith<$Res> {
  _$DailyFlowModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? routineFlows = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      routineFlows: null == routineFlows
          ? _value.routineFlows
          : routineFlows // ignore: cast_nullable_to_non_nullable
              as List<RoutineFlowModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyFlowModelImplCopyWith<$Res>
    implements $DailyFlowModelCopyWith<$Res> {
  factory _$$DailyFlowModelImplCopyWith(_$DailyFlowModelImpl value,
          $Res Function(_$DailyFlowModelImpl) then) =
      __$$DailyFlowModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String date,
      @JsonKey(name: 'routine_flows') List<RoutineFlowModel> routineFlows});
}

/// @nodoc
class __$$DailyFlowModelImplCopyWithImpl<$Res>
    extends _$DailyFlowModelCopyWithImpl<$Res, _$DailyFlowModelImpl>
    implements _$$DailyFlowModelImplCopyWith<$Res> {
  __$$DailyFlowModelImplCopyWithImpl(
      _$DailyFlowModelImpl _value, $Res Function(_$DailyFlowModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? routineFlows = null,
  }) {
    return _then(_$DailyFlowModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      routineFlows: null == routineFlows
          ? _value._routineFlows
          : routineFlows // ignore: cast_nullable_to_non_nullable
              as List<RoutineFlowModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyFlowModelImpl implements _DailyFlowModel {
  const _$DailyFlowModelImpl(
      {required this.id,
      required this.date,
      @JsonKey(name: 'routine_flows')
      final List<RoutineFlowModel> routineFlows = const []})
      : _routineFlows = routineFlows;

  factory _$DailyFlowModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyFlowModelImplFromJson(json);

  @override
  final String id;
  @override
  final String date;
  final List<RoutineFlowModel> _routineFlows;
  @override
  @JsonKey(name: 'routine_flows')
  List<RoutineFlowModel> get routineFlows {
    if (_routineFlows is EqualUnmodifiableListView) return _routineFlows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_routineFlows);
  }

  @override
  String toString() {
    return 'DailyFlowModel(id: $id, date: $date, routineFlows: $routineFlows)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyFlowModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality()
                .equals(other._routineFlows, _routineFlows));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, date,
      const DeepCollectionEquality().hash(_routineFlows));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyFlowModelImplCopyWith<_$DailyFlowModelImpl> get copyWith =>
      __$$DailyFlowModelImplCopyWithImpl<_$DailyFlowModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyFlowModelImplToJson(
      this,
    );
  }
}

abstract class _DailyFlowModel implements DailyFlowModel {
  const factory _DailyFlowModel(
      {required final String id,
      required final String date,
      @JsonKey(name: 'routine_flows')
      final List<RoutineFlowModel> routineFlows}) = _$DailyFlowModelImpl;

  factory _DailyFlowModel.fromJson(Map<String, dynamic> json) =
      _$DailyFlowModelImpl.fromJson;

  @override
  String get id;
  @override
  String get date;
  @override
  @JsonKey(name: 'routine_flows')
  List<RoutineFlowModel> get routineFlows;
  @override
  @JsonKey(ignore: true)
  _$$DailyFlowModelImplCopyWith<_$DailyFlowModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RoutineFlowModel _$RoutineFlowModelFromJson(Map<String, dynamic> json) {
  return _RoutineFlowModel.fromJson(json);
}

/// @nodoc
mixin _$RoutineFlowModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'routine_id')
  String get routineId => throw _privateConstructorUsedError;
  @JsonKey(name: 'routine_name')
  String get routineName => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  String? get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_completed')
  bool get isCompleted => throw _privateConstructorUsedError;
  List<FlowStepModel> get steps => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoutineFlowModelCopyWith<RoutineFlowModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutineFlowModelCopyWith<$Res> {
  factory $RoutineFlowModelCopyWith(
          RoutineFlowModel value, $Res Function(RoutineFlowModel) then) =
      _$RoutineFlowModelCopyWithImpl<$Res, RoutineFlowModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'routine_id') String routineId,
      @JsonKey(name: 'routine_name') String routineName,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'is_completed') bool isCompleted,
      List<FlowStepModel> steps});
}

/// @nodoc
class _$RoutineFlowModelCopyWithImpl<$Res, $Val extends RoutineFlowModel>
    implements $RoutineFlowModelCopyWith<$Res> {
  _$RoutineFlowModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? routineId = null,
    Object? routineName = null,
    Object? startTime = freezed,
    Object? isCompleted = null,
    Object? steps = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      routineId: null == routineId
          ? _value.routineId
          : routineId // ignore: cast_nullable_to_non_nullable
              as String,
      routineName: null == routineName
          ? _value.routineName
          : routineName // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<FlowStepModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoutineFlowModelImplCopyWith<$Res>
    implements $RoutineFlowModelCopyWith<$Res> {
  factory _$$RoutineFlowModelImplCopyWith(_$RoutineFlowModelImpl value,
          $Res Function(_$RoutineFlowModelImpl) then) =
      __$$RoutineFlowModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'routine_id') String routineId,
      @JsonKey(name: 'routine_name') String routineName,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'is_completed') bool isCompleted,
      List<FlowStepModel> steps});
}

/// @nodoc
class __$$RoutineFlowModelImplCopyWithImpl<$Res>
    extends _$RoutineFlowModelCopyWithImpl<$Res, _$RoutineFlowModelImpl>
    implements _$$RoutineFlowModelImplCopyWith<$Res> {
  __$$RoutineFlowModelImplCopyWithImpl(_$RoutineFlowModelImpl _value,
      $Res Function(_$RoutineFlowModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? routineId = null,
    Object? routineName = null,
    Object? startTime = freezed,
    Object? isCompleted = null,
    Object? steps = null,
  }) {
    return _then(_$RoutineFlowModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      routineId: null == routineId
          ? _value.routineId
          : routineId // ignore: cast_nullable_to_non_nullable
              as String,
      routineName: null == routineName
          ? _value.routineName
          : routineName // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      steps: null == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<FlowStepModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoutineFlowModelImpl implements _RoutineFlowModel {
  const _$RoutineFlowModelImpl(
      {required this.id,
      @JsonKey(name: 'routine_id') required this.routineId,
      @JsonKey(name: 'routine_name') required this.routineName,
      @JsonKey(name: 'start_time') this.startTime,
      @JsonKey(name: 'is_completed') this.isCompleted = false,
      final List<FlowStepModel> steps = const []})
      : _steps = steps;

  factory _$RoutineFlowModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoutineFlowModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'routine_id')
  final String routineId;
  @override
  @JsonKey(name: 'routine_name')
  final String routineName;
  @override
  @JsonKey(name: 'start_time')
  final String? startTime;
  @override
  @JsonKey(name: 'is_completed')
  final bool isCompleted;
  final List<FlowStepModel> _steps;
  @override
  @JsonKey()
  List<FlowStepModel> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  String toString() {
    return 'RoutineFlowModel(id: $id, routineId: $routineId, routineName: $routineName, startTime: $startTime, isCompleted: $isCompleted, steps: $steps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoutineFlowModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.routineId, routineId) ||
                other.routineId == routineId) &&
            (identical(other.routineName, routineName) ||
                other.routineName == routineName) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            const DeepCollectionEquality().equals(other._steps, _steps));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, routineId, routineName,
      startTime, isCompleted, const DeepCollectionEquality().hash(_steps));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoutineFlowModelImplCopyWith<_$RoutineFlowModelImpl> get copyWith =>
      __$$RoutineFlowModelImplCopyWithImpl<_$RoutineFlowModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoutineFlowModelImplToJson(
      this,
    );
  }
}

abstract class _RoutineFlowModel implements RoutineFlowModel {
  const factory _RoutineFlowModel(
      {required final String id,
      @JsonKey(name: 'routine_id') required final String routineId,
      @JsonKey(name: 'routine_name') required final String routineName,
      @JsonKey(name: 'start_time') final String? startTime,
      @JsonKey(name: 'is_completed') final bool isCompleted,
      final List<FlowStepModel> steps}) = _$RoutineFlowModelImpl;

  factory _RoutineFlowModel.fromJson(Map<String, dynamic> json) =
      _$RoutineFlowModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'routine_id')
  String get routineId;
  @override
  @JsonKey(name: 'routine_name')
  String get routineName;
  @override
  @JsonKey(name: 'start_time')
  String? get startTime;
  @override
  @JsonKey(name: 'is_completed')
  bool get isCompleted;
  @override
  List<FlowStepModel> get steps;
  @override
  @JsonKey(ignore: true)
  _$$RoutineFlowModelImplCopyWith<_$RoutineFlowModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FlowStepModel _$FlowStepModelFromJson(Map<String, dynamic> json) {
  return _FlowStepModel.fromJson(json);
}

/// @nodoc
mixin _$FlowStepModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'step_id')
  String get stepId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_completed')
  bool get isCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed_at')
  String? get completedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlowStepModelCopyWith<FlowStepModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlowStepModelCopyWith<$Res> {
  factory $FlowStepModelCopyWith(
          FlowStepModel value, $Res Function(FlowStepModel) then) =
      _$FlowStepModelCopyWithImpl<$Res, FlowStepModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'step_id') String stepId,
      String title,
      @JsonKey(name: 'is_completed') bool isCompleted,
      @JsonKey(name: 'completed_at') String? completedAt});
}

/// @nodoc
class _$FlowStepModelCopyWithImpl<$Res, $Val extends FlowStepModel>
    implements $FlowStepModelCopyWith<$Res> {
  _$FlowStepModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? stepId = null,
    Object? title = null,
    Object? isCompleted = null,
    Object? completedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      stepId: null == stepId
          ? _value.stepId
          : stepId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlowStepModelImplCopyWith<$Res>
    implements $FlowStepModelCopyWith<$Res> {
  factory _$$FlowStepModelImplCopyWith(
          _$FlowStepModelImpl value, $Res Function(_$FlowStepModelImpl) then) =
      __$$FlowStepModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'step_id') String stepId,
      String title,
      @JsonKey(name: 'is_completed') bool isCompleted,
      @JsonKey(name: 'completed_at') String? completedAt});
}

/// @nodoc
class __$$FlowStepModelImplCopyWithImpl<$Res>
    extends _$FlowStepModelCopyWithImpl<$Res, _$FlowStepModelImpl>
    implements _$$FlowStepModelImplCopyWith<$Res> {
  __$$FlowStepModelImplCopyWithImpl(
      _$FlowStepModelImpl _value, $Res Function(_$FlowStepModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? stepId = null,
    Object? title = null,
    Object? isCompleted = null,
    Object? completedAt = freezed,
  }) {
    return _then(_$FlowStepModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      stepId: null == stepId
          ? _value.stepId
          : stepId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlowStepModelImpl implements _FlowStepModel {
  const _$FlowStepModelImpl(
      {required this.id,
      @JsonKey(name: 'step_id') required this.stepId,
      required this.title,
      @JsonKey(name: 'is_completed') this.isCompleted = false,
      @JsonKey(name: 'completed_at') this.completedAt});

  factory _$FlowStepModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlowStepModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'step_id')
  final String stepId;
  @override
  final String title;
  @override
  @JsonKey(name: 'is_completed')
  final bool isCompleted;
  @override
  @JsonKey(name: 'completed_at')
  final String? completedAt;

  @override
  String toString() {
    return 'FlowStepModel(id: $id, stepId: $stepId, title: $title, isCompleted: $isCompleted, completedAt: $completedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlowStepModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.stepId, stepId) || other.stepId == stepId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, stepId, title, isCompleted, completedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlowStepModelImplCopyWith<_$FlowStepModelImpl> get copyWith =>
      __$$FlowStepModelImplCopyWithImpl<_$FlowStepModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlowStepModelImplToJson(
      this,
    );
  }
}

abstract class _FlowStepModel implements FlowStepModel {
  const factory _FlowStepModel(
          {required final String id,
          @JsonKey(name: 'step_id') required final String stepId,
          required final String title,
          @JsonKey(name: 'is_completed') final bool isCompleted,
          @JsonKey(name: 'completed_at') final String? completedAt}) =
      _$FlowStepModelImpl;

  factory _FlowStepModel.fromJson(Map<String, dynamic> json) =
      _$FlowStepModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'step_id')
  String get stepId;
  @override
  String get title;
  @override
  @JsonKey(name: 'is_completed')
  bool get isCompleted;
  @override
  @JsonKey(name: 'completed_at')
  String? get completedAt;
  @override
  @JsonKey(ignore: true)
  _$$FlowStepModelImplCopyWith<_$FlowStepModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
