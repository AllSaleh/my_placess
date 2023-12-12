import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/applinks.dart';
import 'package:project/core/crud.dart';

import 'package:project/main.dart';

part 'faviorte_state.dart';

class FaviorteCubit extends Cubit<FaviorteState> {
  FaviorteCubit() : super(FaviorteInitial());

  Crud crud = Crud();
  List data = [];

  getdata() async {
    try {
      var response = await crud
          .get('${Applinks.faviorte}?id=${sharedPref.getInt('id').toString()}');

      if (response['success'] == true) {
        data.clear();
        data.addAll(response['data']);

        emit(FaviorteSucsess());
      } else {
        emit(FaviorteNodata());
      }
    } catch (e) {
      emit(FaviorteFailure());
    }
  }

  deletefaviorte(int id) async {
    var response = await crud
        .postdata({'_method': 'delete'}, '${Applinks.delete}$id/delete');
   
    if (response['success'] == true) {
      getdata();
    } else {
      emit(FaviorteFailure());
    }
  }
}
