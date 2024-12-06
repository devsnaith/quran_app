import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:quran/core/constants/app_constant.dart';
import 'package:quran/features/home/view/screens/home_view.dart';
import 'package:quran/features/navigator/model/navigator_model.dart';
import 'package:quran/features/navigator/repository/navigator_repository.dart';

part 'navigator_state.dart';

class NavigatorCubit extends Cubit<AppNavigatorState> {
  NavigatorCubit() : super(NavigatorInitial());
  
  final NavigatorRepository _repository = NavigatorRepository(
    NavigatorModel(
      index: 0,
      pages: [
        const HomeView(),
      ]),
  );

  NavigatorRepository getNavigatorRepository() => _repository;

  navigate(int index) {
    emit(NavigatorPageChanged(_repository.model));
  }
}