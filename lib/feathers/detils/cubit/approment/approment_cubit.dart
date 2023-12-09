import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/applinks.dart';
import 'package:project/core/crud.dart';

part 'approment_state.dart';

class AppromentCubit extends Cubit<AppromentState> {
  AppromentCubit() : super(AppromentInitial());
  Crud crud = Crud();

  DateTime dateTime = DateTime.now();
  appAppoment(int placeId) async {
    try {
      var response = await crud.postdata(
          {'date': dateTime.toString(), 'place_id': placeId.toString()},
          Applinks.addAppoment);
      
      if (response['success'] == true) {
        emit(AppromentSucsess());
      } else {
        emit(AppromentAdded());
      }
    } catch (e) {
      emit(AppromentFailure());
    }
  }
}
