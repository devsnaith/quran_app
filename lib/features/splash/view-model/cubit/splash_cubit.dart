import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quran/features/splash/Model/splash_model.dart';
import 'package:quran/features/splash/repository/splash_repository.dart';

part 'splash_state.dart';
class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitialized());

  final SplashRepository _repository = SplashRepository();
  getSplashRepository() => _repository;
  
  startSplash() => emit(SplashBegin(_repository.getSplashModel()));
  splashCompleted() => emit(SplashCompleted(_repository.getSplashModel()));
}