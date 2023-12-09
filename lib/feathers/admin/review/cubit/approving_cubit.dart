import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/applinks.dart';
import 'package:project/core/crud.dart';
import 'package:project/feathers/detils/data/detils_model.dart';
import 'package:project/main.dart';

part 'approving_state.dart';

class ApprovingCubit extends Cubit<ApprovingState> {
  ApprovingCubit() : super(ApprovingInitial());
  TextEditingController name = TextEditingController();
  TextEditingController type = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController link = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController rating = TextEditingController();

  Crud crud = Crud();
  DetilsModel data = DetilsModel();

  int? value;

  getPlace() async {
    try {
      emit(ApprovingLoading());
      var response = await crud
          .get('${Applinks.showplace}${sharedPref.getInt('riveId')}/get');
      if (response['success'] == true) {
        data = DetilsModel.fromJson(response['data']);

        name.text = data.name!;
        type.text = data.type!;
        description.text = data.description!;
        link.text = data.location!;
        phone.text = data.phone!;
        rating.text = data.rate!;
        value=data.category!;

        emit(ApprovingSucess());
      } else {
        emit(ApprovingFailure());
      }
    } catch (e) {
      emit(ApprovingFailure());
    }
  }

 
}
