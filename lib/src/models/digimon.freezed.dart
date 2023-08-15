// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'digimon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

digimon _$digimonFromJson(Map<String, dynamic> json) {
  return _digimon.fromJson(json);
}

/// @nodoc
mixin _$digimon {
  String get name => throw _privateConstructorUsedError;
  String get img => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $digimonCopyWith<digimon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $digimonCopyWith<$Res> {
  factory $digimonCopyWith(digimon value, $Res Function(digimon) then) =
      _$digimonCopyWithImpl<$Res, digimon>;
  @useResult
  $Res call({String name, String img, String level});
}

/// @nodoc
class _$digimonCopyWithImpl<$Res, $Val extends digimon>
    implements $digimonCopyWith<$Res> {
  _$digimonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? img = null,
    Object? level = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_digimonCopyWith<$Res> implements $digimonCopyWith<$Res> {
  factory _$$_digimonCopyWith(
          _$_digimon value, $Res Function(_$_digimon) then) =
      __$$_digimonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String img, String level});
}

/// @nodoc
class __$$_digimonCopyWithImpl<$Res>
    extends _$digimonCopyWithImpl<$Res, _$_digimon>
    implements _$$_digimonCopyWith<$Res> {
  __$$_digimonCopyWithImpl(_$_digimon _value, $Res Function(_$_digimon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? img = null,
    Object? level = null,
  }) {
    return _then(_$_digimon(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_digimon with DiagnosticableTreeMixin implements _digimon {
  const _$_digimon({this.name = '-', this.img = '-', this.level = '-'});

  factory _$_digimon.fromJson(Map<String, dynamic> json) =>
      _$$_digimonFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String img;
  @override
  @JsonKey()
  final String level;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'digimon(name: $name, img: $img, level: $level)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'digimon'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('img', img))
      ..add(DiagnosticsProperty('level', level));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_digimon &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.level, level) || other.level == level));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, img, level);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_digimonCopyWith<_$_digimon> get copyWith =>
      __$$_digimonCopyWithImpl<_$_digimon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_digimonToJson(
      this,
    );
  }
}

abstract class _digimon implements digimon {
  const factory _digimon(
      {final String name, final String img, final String level}) = _$_digimon;

  factory _digimon.fromJson(Map<String, dynamic> json) = _$_digimon.fromJson;

  @override
  String get name;
  @override
  String get img;
  @override
  String get level;
  @override
  @JsonKey(ignore: true)
  _$$_digimonCopyWith<_$_digimon> get copyWith =>
      throw _privateConstructorUsedError;
}
