import 'package:equatable/equatable.dart';

abstract class DigimonEvent extends Equatable {
  const DigimonEvent();

  @override
  List<Object> get props => [];
}

class FetchDigimonData extends DigimonEvent {}
