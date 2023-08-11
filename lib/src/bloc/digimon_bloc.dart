import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/digimon.dart';
import '../repository/digimon_repository.dart';

class DigimonState {
  final List<Digimon> digimons;
  final ThemeMode themeMode;

  DigimonState({
    required this.digimons,
    required this.themeMode,
  });
}

class DigimonCubit extends Cubit<DigimonState> {
  final DigimonRepository _repository = DigimonRepository();

  DigimonCubit()
      : super(DigimonState(digimons: [], themeMode: ThemeMode.light));

  Future<void> fetchDigimons() async {
    try {
      final digimons = await _repository.fetchDigimons();
      emit(DigimonState(digimons: digimons, themeMode: state.themeMode));
    } catch (error) {
      print('Error fetching digimons: $error'); // Tampilkan pesan kesalahan
      throw Exception('Failed to fetch digimons');
    }
  }

  void toggleTheme() {
    final newThemeMode =
        state.themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    emit(DigimonState(digimons: state.digimons, themeMode: newThemeMode));
  }
}
