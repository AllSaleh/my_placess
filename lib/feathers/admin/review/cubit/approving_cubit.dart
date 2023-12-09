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

  changeCategorie(int val) async {
    value = val;
    emit(ApprovingSucess());
  }

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
        value = data.category!;

        emit(ApprovingSucess());
      } else {
        emit(ApprovingFailure());
      }
    } catch (e) {
      emit(ApprovingFailure());
    }
  }

  editPlace() async {
    var response = await crud.postdata({
      '_method': 'patch',
      'name': name.text,
      'description': description.text,
      'phone': phone.text,
      'location': link.text,
      'category_id': value.toString(),
      'rate': rating.text,
      'type': type.text,
    }, '${Applinks.editPlace}${data.id}/edit');
    print(response);
  }

  deletePlace() async {
    try {
      emit(ApprovingLoading2());
      var response =
          await crud.delete('${Applinks.deletePlace}${data.id!}/delete');
      if (response['success'] == true) {
        emit(ApprovingSucess2());
      } else {
        emit(ApprovingFailure());
      }
    } catch (e) {
      emit(ApprovingFailure());
    }
  }

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
