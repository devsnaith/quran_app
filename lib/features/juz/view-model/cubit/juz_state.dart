part of 'juz_cubit.dart';

@freezed
class JuzState with _$JuzState {
  const factory JuzState.initial() = _Initial;
  const factory JuzState.fetching() = _Fetching;
  const factory JuzState.juzSelected(JuzModel model) = _JuzSelected;
  const factory JuzState.fetched(List<JuzModel> juzList) = _Fetched;
}
