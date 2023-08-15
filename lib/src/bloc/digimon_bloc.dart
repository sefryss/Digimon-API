import 'package:bloc/bloc.dart';
import 'package:digimon_api/src/models/digimon.dart';
import 'package:digimon_api/src/bloc/digimon_event.dart';
import 'package:digimon_api/src/bloc/digimon_state.dart';
import 'package:digimon_api/src/repository/digimon_repository.dart';

class DigimonBloc extends Bloc<DigimonEvent, DigimonState> {
  final DigimonRepository _repository;

  DigimonBloc(this._repository) : super(InitialState()) {
    on<FetchDigimonData>((event, emit) async {
      emit(LoadingState());
      try {
        final digimons = await _repository.getDigimon();

        emit(SuccessState(digimons));
      } catch (error) {
        print('$error unik');
        emit(ErrorState('Failed to gets digimons'));
      }
    });

    @override
    Stream<DigimonState> mapEventToState(DigimonEvent event) async* {
      if (event is FetchDigimonData) {
        yield LoadingState();
        try {
          final digimons = await _repository.getDigimon();
          yield SuccessState(digimons);
        } catch (error) {
          yield ErrorState('Failed to fetch data');
        }
      }
    }
  }
}
