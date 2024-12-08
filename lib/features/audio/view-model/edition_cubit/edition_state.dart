part of 'edition_cubit.dart';

@freezed
class EditionState with _$EditionState {
  const factory EditionState.initial() = _Initial;
  const factory EditionState.editionsFetched(List<EditionModel> editions) = _EditionsFetched;
  const factory EditionState.editionsSelected(EditionModel edition) = _EditionSelected;
}
