// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reminder_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReminderModel _$ReminderModelFromJson(Map<String, dynamic> json) {
  return _ReminderModel.fromJson(json);
}

/// @nodoc
mixin _$ReminderModel {
  String get id => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_enabled')
  bool get isEnabled => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReminderModelCopyWith<ReminderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReminderModelCopyWith<$Res> {
  factory $ReminderModelCopyWith(
          ReminderModel value, $Res Function(ReminderModel) then) =
      _$ReminderModelCopyWithImpl<$Res, ReminderModel>;
  @useResult
  $Res call(
      {String id,
      String time,
      @JsonKey(name: 'is_enabled') bool isEnabled,
      String label});
}

/// @nodoc
class _$ReminderModelCopyWithImpl<$Res, $Val extends ReminderModel>
    implements $ReminderModelCopyWith<$Res> {
  _$ReminderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? time = null,
    Object? isEnabled = null,
    Object? label = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReminderModelImplCopyWith<$Res>
    implements $ReminderModelCopyWith<$Res> {
  factory _$$ReminderModelImplCopyWith(
          _$ReminderModelImpl value, $Res Function(_$ReminderModelImpl) then) =
      __$$ReminderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String time,
      @JsonKey(name: 'is_enabled') bool isEnabled,
      String label});
}

/// @nodoc
class __$$ReminderModelImplCopyWithImpl<$Res>
    extends _$ReminderModelCopyWithImpl<$Res, _$ReminderModelImpl>
    implements _$$ReminderModelImplCopyWith<$Res> {
  __$$ReminderModelImplCopyWithImpl(
      _$ReminderModelImpl _value, $Res Function(_$ReminderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? time = null,
    Object? isEnabled = null,
    Object? label = null,
  }) {
    return _then(_$ReminderModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReminderModelImpl implements _ReminderModel {
  const _$ReminderModelImpl(
      {required this.id,
      required this.time,
      @JsonKey(name: 'is_enabled') this.isEnabled = true,
      this.label = ''});

  factory _$ReminderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReminderModelImplFromJson(json);

  @override
  final String id;
  @override
  final String time;
  @override
  @JsonKey(name: 'is_enabled')
  final bool isEnabled;
  @override
  @JsonKey()
  final String label;

  @override
  String toString() {
    return 'ReminderModel(id: $id, time: $time, isEnabled: $isEnabled, label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReminderModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, time, isEnabled, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReminderModelImplCopyWith<_$ReminderModelImpl> get copyWith =>
      __$$ReminderModelImplCopyWithImpl<_$ReminderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReminderModelImplToJson(
      this,
    );
  }
}

abstract class _ReminderModel implements ReminderModel {
  const factory _ReminderModel(
      {required final String id,
      required final String time,
      @JsonKey(name: 'is_enabled') final bool isEnabled,
      final String label}) = _$ReminderModelImpl;

  factory _ReminderModel.fromJson(Map<String, dynamic> json) =
      _$ReminderModelImpl.fromJson;

  @override
  String get id;
  @override
  String get time;
  @override
  @JsonKey(name: 'is_enabled')
  bool get isEnabled;
  @override
  String get label;
  @override
  @JsonKey(ignore: true)
  _$$ReminderModelImplCopyWith<_$ReminderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
