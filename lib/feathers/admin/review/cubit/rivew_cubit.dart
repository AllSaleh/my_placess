import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/applinks.dart';
import 'package:project/core/crud.dart';

part 'rivew_state.dart';

class RivewCubit extends Cubit<RivewState> {
  RivewCubit() : super(RivewInitial());

  Crud crud = Crud();
  List data = [];

  getRivews() async {
    

    try {
      data.clear();
      emit(RivewLoading());
      var resonse = await crud.get(Applinks.reviewRequest);

      if (resonse['success'] == true) {
        data.addAll(resonse['data']);
        emit(RivewSucsess());
      } else {
        emit(RivewNoData());
      }
    } catch (e) {
     
      // emit(RivewFailure());
    }
  }
}
