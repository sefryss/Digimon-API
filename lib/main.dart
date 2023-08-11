import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:digimon_api/src/bloc/digimon_bloc.dart';
import 'package:digimon_api/src/models/digimon.dart';
import 'package:digimon_api/src/screens/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DigimonCubit()
        ..fetchDigimons(), // Panggil fetchDigimons() untuk mengambil data saat aplikasi dijalankan
      child: BlocBuilder<DigimonCubit, DigimonState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Digimon App',
            theme: state.themeMode == ThemeMode.dark
                ? ThemeData.dark()
                : ThemeData.light(),
            home: ListPage(),
          );
        },
      ),
    );
  }
}
