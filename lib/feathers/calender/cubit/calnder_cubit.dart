import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:intl/intl.dart';
import 'package:project/core/applinks.dart';
import 'package:project/core/crud.dart';

part 'calnder_state.dart';

class CalnderCubit extends Cubit<CalnderState> {
  CalnderCubit() : super(CalnderInitial());

  Crud crud = Crud();

  DateTime dateTime = DateTime.now();
  // var dateTime =DateFormat().format(DateTime.now());

  List data = [];

  changeDate(DateTime date) {
    // DateFormat('yyyy-MM-dd').format(selectedDay)
    dateTime = date;
    emit(CalnderChangeDate());
  }

  getCalender() async {
    changeDate(dateTime);
    try {
      emit(CalnderLoading());
      var response = await crud.get('${Applinks.showAppoment}$dateTime');
      // print('${Applinks.showAppoment}$dateTime');

      // if (response['success'] == false) {
      //   print('object');
      // }

      if (response['data'] != null) {
        data.clear();
        data.addAll(response['data']);
        emit(CalnderSucsess());
      } else {
        emit(CalnderNoCalnder());
      }
    } catch (e) {
      // print(e);
      emit(CalnderFailure());
    }
  }
}
