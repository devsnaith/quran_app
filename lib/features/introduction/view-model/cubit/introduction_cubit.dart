import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quran/features/introduction/repository/introduction_repository.dart';
import 'package:quran/features/introduction/view/widgets/introduction_page.dart';

part 'introduction_state.dart';
class IntroductionCubit extends Cubit<IntroductionState> {

  final IntroductionRepository _introductionRepository = IntroductionRepository();
  IntroductionCubit() : super(IntroductionInitialized());

  startIntroduction() => emit(IntroductionBegin(_introductionRepository.getAllIntroductionModelsAsPages()));
  introductionCompleted() => emit(IntroductionCompleted());
  getIntroductionRepository() => _introductionRepository;
}
