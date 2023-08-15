import 'package:digimon_api/src/bloc/digimon_event.dart';
import 'package:digimon_api/src/bloc/digimon_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:digimon_api/src/bloc/digimon_bloc.dart'; // Ganti dengan path yang sesuai
import 'package:digimon_api/src/models/digimon.dart'; // Ganti dengan path yang sesuai

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Access the DigimonBloc instance using BlocProvider
    final digimonBloc = BlocProvider.of<DigimonBloc>(context);

    // Fetch data when the app starts
    digimonBloc.add(FetchDigimonData());

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 25, 195, 167),
          title: Container(
            child: const Text('List of Digimon'),
          )),
      body: Center(
        child: DigimonList(), // Use the DigimonList widget to display the data
      ),
    );
  }
}

class DigimonList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DigimonBloc, DigimonState>(
      builder: (context, state) {
        if (state is SuccessState) {
          final digimons = state.digimons;

          return ListView.builder(
            padding: const EdgeInsets.all(10),
            itemCount: digimons.length,
            itemBuilder: (BuildContext context, int index) {
              final digimon = digimons[index];

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
                    title: Text(digimon.name),
                    subtitle: Text(digimon.level),
                    leading: Image.network(digimon.img),
                  ),
                ),
              );
            },
          );
        } else if (state is LoadingState) {
          return Center(child: CircularProgressIndicator());
        } else if (state is ErrorState) {
          return Center(child: Text(state.message));
        } else {
          return Center(child: Text('Unknown state'));
        }
      },
    );
  }
}
