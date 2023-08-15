import 'package:digimon_api/src/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:digimon_api/src/repository/digimon_repository.dart'; // Import the DigimonRepository
import 'package:digimon_api/src/bloc/digimon_bloc.dart'; // Ganti dengan path yang sesuai
import 'package:digimon_api/src/models/digimon.dart'; // Import the DigimonBloc

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Digimon App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => DigimonBloc(DigimonRepository()),
        child: HomePage(),
      ),
    );
  }
}
