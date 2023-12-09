import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/applinks.dart';
import 'package:project/core/crud.dart';
import 'package:project/feathers/detils/data/detils_model.dart';
import 'package:project/main.dart';

part 'detils_state.dart';

class DetilsCubit extends Cubit<DetilsState> {
  DetilsCubit() : super(DetilsInitial());

  Crud crud = Crud();


  DetilsModel data = DetilsModel();

  getDetils() async {
    try {
      var response = await crud
          .get('${Applinks.detils}${sharedPref.getInt('placeid')}/get');

      if (response['success'] == true) {
        data = DetilsModel.fromJson(response['data']);

        emit(DetilsSucsess());
      } else {
        emit(DetilsFalure());
      }
    } catch (e) {
      emit(DetilsFalure());
    }
  }

  addFaviorte(int id) async {
    var response = await crud.postdata({}, '${Applinks.addFaviorte}$id/add');
    if (response['message'] == 'add successfully') {
      getDetils();
    } else {
      emit(DetilsFalure());
    }
  }

  deletefaviorte(int id) async {
    var response = await crud.delete('${Applinks.delete}$id/delete');
    if (response['success'] == true) {
      getDetils();
    } else {
      emit(DetilsFalure());
    }
  }

  
}
