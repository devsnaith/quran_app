import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quran/features/audio/models/editions_model/edition_model.dart';
import 'package:quran/features/audio/repositories/editions_repository.dart';

part 'edition_state.dart';
part 'edition_cubit.freezed.dart';

class EditionCubit extends Cubit<EditionState> {
  EditionCubit() : super(const EditionState.initial());
  
  List<EditionModel>? _editions;
  final EditionsRepository _editionsRepository = EditionsRepository();

  Future<void> fetchEditions() async {
    
    if(_editions != null) {
      emit(EditionState.editionsFetched(_editions!));
      return;
    }

    List<dynamic>? json = await _editionsRepository.getEditionsAsJson();
    _editions = json == null ? [] : json.map((json) => EditionModel.fromJson(json)).toList();
    emit(EditionState.editionsFetched(_editions!));
  }

  select(EditionModel edition) => emit(EditionState.editionsSelected(edition));
}
