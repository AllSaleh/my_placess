import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
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
  ImagePicker imagePicker = ImagePicker();

  File? image1, image2, image3;

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
        rating.text = data.rate!.toString();
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
    try {
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

      if (response['success'] == true) {
        approvePlace();
      } else {
        emit(ApprovingFailure());
      }
    } catch (e) {
      emit(ApprovingFailure());
    }
  }

  deletePlace() async {
    try {
      emit(ApprovingLoading2());
      var response =
          await crud.delete('${Applinks.deletePlace}${data.id!}/delete');
      if (response['success'] == true) {
        emit(ApprovingSucess3());
      } else {
        emit(ApprovingFailure());
      }
    } catch (e) {
      emit(ApprovingFailure());
    }
  }

  approvePlace() async {
    try {
      emit(ApprovingLoading2());
      var response =
          await crud.postdata({}, '${Applinks.approving}${data.id!}');

      if (response['success'] == true) {
        emit(ApprovingSucess2());
      } else {
        emit(ApprovingFailure());
      }
    } catch (e) {
      emit(ApprovingFailure());
    }
  }

  deleteImage(int index) async {
    var response = await crud.delete(
        '${Applinks.deleteImage}${data.id}/image/${data.images![index].id}');
    // print(response);

    if (response['success'] == false) {
      // emit(state);
    }
  }

  addImage(File file) async {
    try {
      var response = await crud.postWithFile1(
          file, '${Applinks.addImage}${data.id}/image');
      // print(response);
      debugPrint(response);
    } catch (e) {
      // emit(ApprovingFailure3());
    }
  }

  uploadimage() async {
    final XFile? picked =
        await imagePicker.pickImage(source: ImageSource.gallery);

    if (picked == null) {
      return;
    }
    deleteImage(0);

    image1 = File(picked.path);
    addImage(image1!);
  }

  uploadimage2() async {
    final XFile? picked =
        await imagePicker.pickImage(source: ImageSource.gallery);

    if (picked == null) {
      return;
    }
    deleteImage(1);

    image2 = File(picked.path);
    addImage(image2!);
  }

  uploadimage3() async {
    final XFile? picked =
        await imagePicker.pickImage(source: ImageSource.gallery);

    if (picked == null) {
      return;
    }
    deleteImage(2);

    image3 = File(picked.path);
    addImage(image3!);
  }
}
