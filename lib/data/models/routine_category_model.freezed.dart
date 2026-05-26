// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'routine_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RoutineCategoryModel _$RoutineCategoryModelFromJson(Map<String, dynamic> json) {
  return _RoutineCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$RoutineCategoryModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoutineCategoryModelCopyWith<RoutineCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutineCategoryModelCopyWith<$Res> {
  factory $RoutineCategoryModelCopyWith(RoutineCategoryModel value,
          $Res Function(RoutineCategoryModel) then) =
      _$RoutineCategoryModelCopyWithImpl<$Res, RoutineCategoryModel>;
  @useResult
  $Res call({String id, String name, String slug, String icon, String color});
}

/// @nodoc
class _$RoutineCategoryModelCopyWithImpl<$Res,
        $Val extends RoutineCategoryModel>
    implements $RoutineCategoryModelCopyWith<$Res> {
  _$RoutineCategoryModelCopyWithImpl(this._value, this._then);

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
    Object? icon = null,
    Object? color = null,
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
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoutineCategoryModelImplCopyWith<$Res>
    implements $RoutineCategoryModelCopyWith<$Res> {
  factory _$$RoutineCategoryModelImplCopyWith(_$RoutineCategoryModelImpl value,
          $Res Function(_$RoutineCategoryModelImpl) then) =
      __$$RoutineCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String slug, String icon, String color});
}

/// @nodoc
class __$$RoutineCategoryModelImplCopyWithImpl<$Res>
    extends _$RoutineCategoryModelCopyWithImpl<$Res, _$RoutineCategoryModelImpl>
    implements _$$RoutineCategoryModelImplCopyWith<$Res> {
  __$$RoutineCategoryModelImplCopyWithImpl(_$RoutineCategoryModelImpl _value,
      $Res Function(_$RoutineCategoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? icon = null,
    Object? color = null,
  }) {
    return _then(_$RoutineCategoryModelImpl(
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
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoutineCategoryModelImpl implements _RoutineCategoryModel {
  const _$RoutineCategoryModelImpl(
      {required this.id,
      required this.name,
      required this.slug,
      required this.icon,
      required this.color});

  factory _$RoutineCategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoutineCategoryModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String slug;
  @override
  final String icon;
  @override
  final String color;

  @override
  String toString() {
    return 'RoutineCategoryModel(id: $id, name: $name, slug: $slug, icon: $icon, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoutineCategoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, slug, icon, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoutineCategoryModelImplCopyWith<_$RoutineCategoryModelImpl>
      get copyWith =>
          __$$RoutineCategoryModelImplCopyWithImpl<_$RoutineCategoryModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoutineCategoryModelImplToJson(
      this,
    );
  }
}

abstract class _RoutineCategoryModel implements RoutineCategoryModel {
  const factory _RoutineCategoryModel(
      {required final String id,
      required final String name,
      required final String slug,
      required final String icon,
      required final String color}) = _$RoutineCategoryModelImpl;

  factory _RoutineCategoryModel.fromJson(Map<String, dynamic> json) =
      _$RoutineCategoryModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get slug;
  @override
  String get icon;
  @override
  String get color;
  @override
  @JsonKey(ignore: true)
  _$$RoutineCategoryModelImplCopyWith<_$RoutineCategoryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
