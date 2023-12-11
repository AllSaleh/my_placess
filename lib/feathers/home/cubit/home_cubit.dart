import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/applinks.dart';
import 'package:project/core/crud.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  Crud crud = Crud();
  List data = [];

  getRecomndations() async {
    try {
      emit(HomeLoading());
      var response = await crud.get(Applinks.poupler);

      if (response['success'] == true) {
        data.addAll(response['data']);
        if (data.isEmpty) {
          emit(HomeNoData());
        } else {
          emit(HomeSucsess());
        }
      }
    } catch (e) {
      HomeFailure();
    }
  }
}
