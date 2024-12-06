import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quran/features/surah/models/surah_model.dart';
import 'package:quran/features/surah/repository/surah_repository.dart';

part 'surah_state.dart';
part 'surah_cubit.freezed.dart';

class SurahCubit extends Cubit<SurahState> {
  SurahCubit() : super(const SurahState.initial());

  final SurahRepository _surahRepository = SurahRepository();

  void fetchSurahs() async {
    emit(const SurahState.fetching());
    List<dynamic> json = await _surahRepository.getSurahsAsJson();
    List <SurahModel> surahs = json.map((json) => SurahModel.fromJson(json)).toList();
    emit(SurahState.fetched(surahs));
  }

  getSurahRepository() => _surahRepository;
}
