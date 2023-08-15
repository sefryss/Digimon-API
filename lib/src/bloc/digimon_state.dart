import 'package:digimon_api/src/models/digimon.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class DigimonState extends Equatable {
  const DigimonState();

  @override
  List<Object> get props => [];
}

class InitialState extends DigimonState {}

class LoadingState extends DigimonState {}

class SuccessState extends DigimonState {
  final List<digimon> digimons;

  const SuccessState(this.digimons);

  @override
  List<Object> get props => [digimons];
}

class ErrorState extends DigimonState {
  final String message;

  const ErrorState(this.message);

  @override
  List<Object> get props => [message];
}
