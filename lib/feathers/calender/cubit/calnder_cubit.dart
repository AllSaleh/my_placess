import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/applinks.dart';
import 'package:project/core/crud.dart';

part 'calnder_state.dart';

class CalnderCubit extends Cubit<CalnderState> {
  CalnderCubit() : super(CalnderInitial());

  Crud crud = Crud();

  DateTime dateTime = DateTime.now();
  List data = [];

  changeDate(DateTime date) {
    dateTime = date;
    emit(CalnderChangeDate());
  }

  getCalender() async {
    try {
      emit(CalnderLoading());
      var response = await crud.get('${Applinks.showAppoment}$dateTime');

      if (response['data'] != null) {
        data.addAll(response['data']);
        emit(CalnderSucsess());
      } else {
        emit(CalnderNoCalnder());
      }
    } catch (e) {
      emit(CalnderFailure());
    }
  }
}
