import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quran/features/sebha/repositories/sebha_repository.dart';

part 'sebha_state.dart';

class SebhaCubit extends Cubit<SebhaState> {
  SebhaCubit() : super(SebhaClearEvent());
  
  final SebhaRepository _sebhaRepository = SebhaRepository();

  void incrementCounter() {
    _sebhaRepository.increment();
    emit(SebhaIncrementEvent(_sebhaRepository.getCounterValue()));
  }

  void clearCounter() {
    _sebhaRepository.clearSebhaCounter();
    emit(SebhaClearEvent());
  }
}
