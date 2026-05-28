// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weekly_reflection_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeeklyReflectionModel _$WeeklyReflectionModelFromJson(
    Map<String, dynamic> json) {
  return _WeeklyReflectionModel.fromJson(json);
}

/// @nodoc
mixin _$WeeklyReflectionModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'week_start')
  String get weekStart => throw _privateConstructorUsedError;
  @JsonKey(name: 'week_end')
  String get weekEnd => throw _privateConstructorUsedError;
  @JsonKey(name: 'insight_text')
  String? get insightText => throw _privateConstructorUsedError;
  @JsonKey(name: 'completion_percent')
  int get completionPercent => throw _privateConstructorUsedError;
  @JsonKey(name: 'average_mood')
  double get averageMood => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeeklyReflectionModelCopyWith<WeeklyReflectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeeklyReflectionModelCopyWith<$Res> {
  factory $WeeklyReflectionModelCopyWith(WeeklyReflectionModel value,
          $Res Function(WeeklyReflectionModel) then) =
      _$WeeklyReflectionModelCopyWithImpl<$Res, WeeklyReflectionModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'week_start') String weekStart,
      @JsonKey(name: 'week_end') String weekEnd,
      @JsonKey(name: 'insight_text') String? insightText,
      @JsonKey(name: 'completion_percent') int completionPercent,
      @JsonKey(name: 'average_mood') double averageMood});
}

/// @nodoc
class _$WeeklyReflectionModelCopyWithImpl<$Res,
        $Val extends WeeklyReflectionModel>
    implements $WeeklyReflectionModelCopyWith<$Res> {
  _$WeeklyReflectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? weekStart = null,
    Object? weekEnd = null,
    Object? insightText = freezed,
    Object? completionPercent = null,
    Object? averageMood = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      weekStart: null == weekStart
          ? _value.weekStart
          : weekStart // ignore: cast_nullable_to_non_nullable
              as String,
      weekEnd: null == weekEnd
          ? _value.weekEnd
          : weekEnd // ignore: cast_nullable_to_non_nullable
              as String,
      insightText: freezed == insightText
          ? _value.insightText
          : insightText // ignore: cast_nullable_to_non_nullable
              as String?,
      completionPercent: null == completionPercent
          ? _value.completionPercent
          : completionPercent // ignore: cast_nullable_to_non_nullable
              as int,
      averageMood: null == averageMood
          ? _value.averageMood
          : averageMood // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeeklyReflectionModelImplCopyWith<$Res>
    implements $WeeklyReflectionModelCopyWith<$Res> {
  factory _$$WeeklyReflectionModelImplCopyWith(
          _$WeeklyReflectionModelImpl value,
          $Res Function(_$WeeklyReflectionModelImpl) then) =
      __$$WeeklyReflectionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'week_start') String weekStart,
      @JsonKey(name: 'week_end') String weekEnd,
      @JsonKey(name: 'insight_text') String? insightText,
      @JsonKey(name: 'completion_percent') int completionPercent,
      @JsonKey(name: 'average_mood') double averageMood});
}

/// @nodoc
class __$$WeeklyReflectionModelImplCopyWithImpl<$Res>
    extends _$WeeklyReflectionModelCopyWithImpl<$Res,
        _$WeeklyReflectionModelImpl>
    implements _$$WeeklyReflectionModelImplCopyWith<$Res> {
  __$$WeeklyReflectionModelImplCopyWithImpl(_$WeeklyReflectionModelImpl _value,
      $Res Function(_$WeeklyReflectionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? weekStart = null,
    Object? weekEnd = null,
    Object? insightText = freezed,
    Object? completionPercent = null,
    Object? averageMood = null,
  }) {
    return _then(_$WeeklyReflectionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      weekStart: null == weekStart
          ? _value.weekStart
          : weekStart // ignore: cast_nullable_to_non_nullable
              as String,
      weekEnd: null == weekEnd
          ? _value.weekEnd
          : weekEnd // ignore: cast_nullable_to_non_nullable
              as String,
      insightText: freezed == insightText
          ? _value.insightText
          : insightText // ignore: cast_nullable_to_non_nullable
              as String?,
      completionPercent: null == completionPercent
          ? _value.completionPercent
          : completionPercent // ignore: cast_nullable_to_non_nullable
              as int,
      averageMood: null == averageMood
          ? _value.averageMood
          : averageMood // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeeklyReflectionModelImpl implements _WeeklyReflectionModel {
  const _$WeeklyReflectionModelImpl(
      {required this.id,
      @JsonKey(name: 'week_start') required this.weekStart,
      @JsonKey(name: 'week_end') required this.weekEnd,
      @JsonKey(name: 'insight_text') this.insightText,
      @JsonKey(name: 'completion_percent') this.completionPercent = 0,
      @JsonKey(name: 'average_mood') this.averageMood = 0.0});

  factory _$WeeklyReflectionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeeklyReflectionModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'week_start')
  final String weekStart;
  @override
  @JsonKey(name: 'week_end')
  final String weekEnd;
  @override
  @JsonKey(name: 'insight_text')
  final String? insightText;
  @override
  @JsonKey(name: 'completion_percent')
  final int completionPercent;
  @override
  @JsonKey(name: 'average_mood')
  final double averageMood;

  @override
  String toString() {
    return 'WeeklyReflectionModel(id: $id, weekStart: $weekStart, weekEnd: $weekEnd, insightText: $insightText, completionPercent: $completionPercent, averageMood: $averageMood)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeeklyReflectionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.weekStart, weekStart) ||
                other.weekStart == weekStart) &&
            (identical(other.weekEnd, weekEnd) || other.weekEnd == weekEnd) &&
            (identical(other.insightText, insightText) ||
                other.insightText == insightText) &&
            (identical(other.completionPercent, completionPercent) ||
                other.completionPercent == completionPercent) &&
            (identical(other.averageMood, averageMood) ||
                other.averageMood == averageMood));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, weekStart, weekEnd,
      insightText, completionPercent, averageMood);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeeklyReflectionModelImplCopyWith<_$WeeklyReflectionModelImpl>
      get copyWith => __$$WeeklyReflectionModelImplCopyWithImpl<
          _$WeeklyReflectionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeeklyReflectionModelImplToJson(
      this,
    );
  }
}

abstract class _WeeklyReflectionModel implements WeeklyReflectionModel {
  const factory _WeeklyReflectionModel(
          {required final String id,
          @JsonKey(name: 'week_start') required final String weekStart,
          @JsonKey(name: 'week_end') required final String weekEnd,
          @JsonKey(name: 'insight_text') final String? insightText,
          @JsonKey(name: 'completion_percent') final int completionPercent,
          @JsonKey(name: 'average_mood') final double averageMood}) =
      _$WeeklyReflectionModelImpl;

  factory _WeeklyReflectionModel.fromJson(Map<String, dynamic> json) =
      _$WeeklyReflectionModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'week_start')
  String get weekStart;
  @override
  @JsonKey(name: 'week_end')
  String get weekEnd;
  @override
  @JsonKey(name: 'insight_text')
  String? get insightText;
  @override
  @JsonKey(name: 'completion_percent')
  int get completionPercent;
  @override
  @JsonKey(name: 'average_mood')
  double get averageMood;
  @override
  @JsonKey(ignore: true)
  _$$WeeklyReflectionModelImplCopyWith<_$WeeklyReflectionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
