import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'digimon.freezed.dart';
part 'digimon.g.dart';

@freezed
class digimon with _$digimon {
  const factory digimon({
    @Default('-') String name,
    @Default('-') String img,
    @Default('-') String level,
  }) = _digimon;

  factory digimon.fromJson(Map<String, Object?> json) =>
      _$digimonFromJson(json);
}
