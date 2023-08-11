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

/// @nodoc
mixin _$Digimon {
  String get name => throw _privateConstructorUsedError;
  String get img => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DigimonCopyWith<Digimon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DigimonCopyWith<$Res> {
  factory $DigimonCopyWith(Digimon value, $Res Function(Digimon) then) =
      _$DigimonCopyWithImpl<$Res, Digimon>;
  @useResult
  $Res call({String name, String img, String level});
}

/// @nodoc
class _$DigimonCopyWithImpl<$Res, $Val extends Digimon>
    implements $DigimonCopyWith<$Res> {
  _$DigimonCopyWithImpl(this._value, this._then);

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
abstract class _$$_DigimonCopyWith<$Res> implements $DigimonCopyWith<$Res> {
  factory _$$_DigimonCopyWith(
          _$_Digimon value, $Res Function(_$_Digimon) then) =
      __$$_DigimonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String img, String level});
}

/// @nodoc
class __$$_DigimonCopyWithImpl<$Res>
    extends _$DigimonCopyWithImpl<$Res, _$_Digimon>
    implements _$$_DigimonCopyWith<$Res> {
  __$$_DigimonCopyWithImpl(_$_Digimon _value, $Res Function(_$_Digimon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? img = null,
    Object? level = null,
  }) {
    return _then(_$_Digimon(
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

class _$_Digimon implements _Digimon {
  const _$_Digimon(
      {required this.name, required this.img, required this.level});

  @override
  final String name;
  @override
  final String img;
  @override
  final String level;

  @override
  String toString() {
    return 'Digimon(name: $name, img: $img, level: $level)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Digimon &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.level, level) || other.level == level));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, img, level);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DigimonCopyWith<_$_Digimon> get copyWith =>
      __$$_DigimonCopyWithImpl<_$_Digimon>(this, _$identity);
}

abstract class _Digimon implements Digimon {
  const factory _Digimon(
      {required final String name,
      required final String img,
      required final String level}) = _$_Digimon;

  @override
  String get name;
  @override
  String get img;
  @override
  String get level;
  @override
  @JsonKey(ignore: true)
  _$$_DigimonCopyWith<_$_Digimon> get copyWith =>
      throw _privateConstructorUsedError;
}
