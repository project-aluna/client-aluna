// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mood_log_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MoodLogModel _$MoodLogModelFromJson(Map<String, dynamic> json) {
  return _MoodLogModel.fromJson(json);
}

/// @nodoc
mixin _$MoodLogModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'mood_score')
  int get moodScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'energy_level')
  int? get energyLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'stress_level')
  int? get stressLevel => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: 'logged_at')
  String get loggedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoodLogModelCopyWith<MoodLogModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoodLogModelCopyWith<$Res> {
  factory $MoodLogModelCopyWith(
          MoodLogModel value, $Res Function(MoodLogModel) then) =
      _$MoodLogModelCopyWithImpl<$Res, MoodLogModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'mood_score') int moodScore,
      @JsonKey(name: 'energy_level') int? energyLevel,
      @JsonKey(name: 'stress_level') int? stressLevel,
      String? note,
      @JsonKey(name: 'logged_at') String loggedAt});
}

/// @nodoc
class _$MoodLogModelCopyWithImpl<$Res, $Val extends MoodLogModel>
    implements $MoodLogModelCopyWith<$Res> {
  _$MoodLogModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? moodScore = null,
    Object? energyLevel = freezed,
    Object? stressLevel = freezed,
    Object? note = freezed,
    Object? loggedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      moodScore: null == moodScore
          ? _value.moodScore
          : moodScore // ignore: cast_nullable_to_non_nullable
              as int,
      energyLevel: freezed == energyLevel
          ? _value.energyLevel
          : energyLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      stressLevel: freezed == stressLevel
          ? _value.stressLevel
          : stressLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      loggedAt: null == loggedAt
          ? _value.loggedAt
          : loggedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoodLogModelImplCopyWith<$Res>
    implements $MoodLogModelCopyWith<$Res> {
  factory _$$MoodLogModelImplCopyWith(
          _$MoodLogModelImpl value, $Res Function(_$MoodLogModelImpl) then) =
      __$$MoodLogModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'mood_score') int moodScore,
      @JsonKey(name: 'energy_level') int? energyLevel,
      @JsonKey(name: 'stress_level') int? stressLevel,
      String? note,
      @JsonKey(name: 'logged_at') String loggedAt});
}

/// @nodoc
class __$$MoodLogModelImplCopyWithImpl<$Res>
    extends _$MoodLogModelCopyWithImpl<$Res, _$MoodLogModelImpl>
    implements _$$MoodLogModelImplCopyWith<$Res> {
  __$$MoodLogModelImplCopyWithImpl(
      _$MoodLogModelImpl _value, $Res Function(_$MoodLogModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? moodScore = null,
    Object? energyLevel = freezed,
    Object? stressLevel = freezed,
    Object? note = freezed,
    Object? loggedAt = null,
  }) {
    return _then(_$MoodLogModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      moodScore: null == moodScore
          ? _value.moodScore
          : moodScore // ignore: cast_nullable_to_non_nullable
              as int,
      energyLevel: freezed == energyLevel
          ? _value.energyLevel
          : energyLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      stressLevel: freezed == stressLevel
          ? _value.stressLevel
          : stressLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      loggedAt: null == loggedAt
          ? _value.loggedAt
          : loggedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MoodLogModelImpl implements _MoodLogModel {
  const _$MoodLogModelImpl(
      {required this.id,
      @JsonKey(name: 'mood_score') required this.moodScore,
      @JsonKey(name: 'energy_level') this.energyLevel,
      @JsonKey(name: 'stress_level') this.stressLevel,
      this.note,
      @JsonKey(name: 'logged_at') required this.loggedAt});

  factory _$MoodLogModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoodLogModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'mood_score')
  final int moodScore;
  @override
  @JsonKey(name: 'energy_level')
  final int? energyLevel;
  @override
  @JsonKey(name: 'stress_level')
  final int? stressLevel;
  @override
  final String? note;
  @override
  @JsonKey(name: 'logged_at')
  final String loggedAt;

  @override
  String toString() {
    return 'MoodLogModel(id: $id, moodScore: $moodScore, energyLevel: $energyLevel, stressLevel: $stressLevel, note: $note, loggedAt: $loggedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoodLogModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.moodScore, moodScore) ||
                other.moodScore == moodScore) &&
            (identical(other.energyLevel, energyLevel) ||
                other.energyLevel == energyLevel) &&
            (identical(other.stressLevel, stressLevel) ||
                other.stressLevel == stressLevel) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.loggedAt, loggedAt) ||
                other.loggedAt == loggedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, moodScore, energyLevel, stressLevel, note, loggedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoodLogModelImplCopyWith<_$MoodLogModelImpl> get copyWith =>
      __$$MoodLogModelImplCopyWithImpl<_$MoodLogModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoodLogModelImplToJson(
      this,
    );
  }
}

abstract class _MoodLogModel implements MoodLogModel {
  const factory _MoodLogModel(
          {required final String id,
          @JsonKey(name: 'mood_score') required final int moodScore,
          @JsonKey(name: 'energy_level') final int? energyLevel,
          @JsonKey(name: 'stress_level') final int? stressLevel,
          final String? note,
          @JsonKey(name: 'logged_at') required final String loggedAt}) =
      _$MoodLogModelImpl;

  factory _MoodLogModel.fromJson(Map<String, dynamic> json) =
      _$MoodLogModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'mood_score')
  int get moodScore;
  @override
  @JsonKey(name: 'energy_level')
  int? get energyLevel;
  @override
  @JsonKey(name: 'stress_level')
  int? get stressLevel;
  @override
  String? get note;
  @override
  @JsonKey(name: 'logged_at')
  String get loggedAt;
  @override
  @JsonKey(ignore: true)
  _$$MoodLogModelImplCopyWith<_$MoodLogModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
