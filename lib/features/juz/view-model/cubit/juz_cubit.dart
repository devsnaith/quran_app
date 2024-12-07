import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quran/features/juz/models/juz_model.dart';
import 'package:quran/features/juz/repository/juz_repository.dart';

part 'juz_state.dart';
part 'juz_cubit.freezed.dart';

class JuzCubit extends Cubit<JuzState> {
  JuzCubit() : super(const JuzState.initial());
  
  final JuzRepository _juzRepository = JuzRepository();

  void fetchJuz() async {
    emit(const JuzState.fetching());
    List<dynamic> json = await _juzRepository.getJuzAsJson();
    List <JuzModel> juzList = json.map((json) => JuzModel.fromJson(json)).toList();
    _juzRepository.setListofJuz(juzList);
    emit(JuzState.fetched(juzList));
  }

  void viewJuz(JuzModel model) {
    emit(JuzState.juzSelected(model));
  }

  JuzRepository getJuzRepository() => _juzRepository;


}
