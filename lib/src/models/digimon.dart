import 'package:freezed_annotation/freezed_annotation.dart';

part 'digimon.freezed.dart';

@freezed
class Digimon with _$Digimon {
  const factory Digimon({
    required String name,
    required String img,
    required String level,
  }) = _Digimon;
}
