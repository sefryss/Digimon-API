import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:digimon_api/src/bloc/digimon_bloc.dart';
import 'package:digimon_api/src/models/digimon.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 25, 195, 167),
        title: Container(
          child: const Text('List of Digimon'),
        ),
        actions: [
          IconButton(
            icon: Transform.rotate(
              angle: context.read<DigimonCubit>().state.themeMode ==
                      ThemeMode.light
                  ? 0 // Tidak ada rotasi dalam mode terang
                  : 3.14, // Rotasi 180 derajat (pi radians) dalam mode gelap
              child: Icon(
                context.read<DigimonCubit>().state.themeMode == ThemeMode.light
                    ? Icons.wb_sunny
                    : Icons.nightlight_round,
              ),
            ),
            onPressed: () {
              context.read<DigimonCubit>().toggleTheme();
            },
          ),
        ],
      ),
      body: DigimonList(),
    );
  }
}

class DigimonList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DigimonCubit, DigimonState>(
      builder: (context, state) {
        if (state is DigimonState) {
          final isDarkTheme = state.themeMode == ThemeMode.dark;
          final digimons = state.digimons;

          return ListView.builder(
            padding: const EdgeInsets.all(10),
            itemCount: digimons.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(255, 25, 195, 167),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: ListTile(
                    minVerticalPadding: 1,
                    leading: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        isDarkTheme ? Colors.grey : Colors.white,
                        BlendMode.dstATop,
                      ),
                      child: Image.network(digimons[index].img),
                    ),
                    title: Text(
                      digimons[index].name,
                      textAlign: TextAlign.justify,
                    ),
                    subtitle: Text(
                      "\n~ " + digimons[index].level,
                      style: const TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
              );
            },
          );
        }
        return const Center(child: Text('Invalid state'));
      },
    );
  }
}
