import 'package:quran/features/sebha/models/sebha_model.dart';

class SebhaRepository {
  final SebhaModel _sebhaModel = SebhaModel(sebhaCounter: 0); 

  void increment() {
    _sebhaModel.sebhaCounter += 1;
  }

  void clearSebhaCounter() {
    _sebhaModel.sebhaCounter = 0;
  }

  int getCounterValue() {
    return _sebhaModel.sebhaCounter;
  }
}