import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/applinks.dart';
import 'package:project/core/crud.dart';
import 'package:project/main.dart';

part 'categoriess_state.dart';

class CategoriessCubit extends Cubit<CategoriessState> {
  CategoriessCubit() : super(CategoriessInitial());

  Crud crud = Crud();

  List data = [];

  getPlacess() async {
    emit(CategoriessLoading());

    try {
      var response = await crud
          .get('${Applinks.showPlacessCategorie}${sharedPref.getInt('cat')}');
      if (response['success'] == true) {
        data.addAll(response['data']);

        emit(CategoriessSucsess());
      } else if (response['success'] == false) {
        emit(CategoriessNodata());
      }
    } catch (e) {
      emit(CategoriessFailure());
    }
  }
}
