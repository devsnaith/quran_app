part of 'surah_cubit.dart';

@freezed
class SurahState with _$SurahState {
  const factory SurahState.initial() = _Initial;
  const factory SurahState.fetching() = _Fetching;
  const factory SurahState.fetched(List<SurahModel> surahs) = _Fetched;
}
