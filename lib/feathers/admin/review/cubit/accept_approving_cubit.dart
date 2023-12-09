import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/applinks.dart';
import 'package:project/core/crud.dart';
import 'package:project/main.dart';

part 'accept_approving_state.dart';

class AcceptApprovingCubit extends Cubit<AcceptApprovingState> {
  AcceptApprovingCubit() : super(AcceptApprovingInitial());

  Crud crud = Crud();

  approvePlace() async {
    try {
      emit(AcceptApprovingLoading());
      var response = await crud
          .postdata({}, '${Applinks.approving}${sharedPref.getInt('riveId')}');
      

      if (response['success'] == true) {
        emit(AcceptApprovingSucess());
      } else {
        emit(AcceptApprovingFailure());
      }
    } catch (e) {
      emit(AcceptApprovingFailure());
    }
  }

 
}
