import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project/core/applinks.dart';
import 'package:project/core/crud.dart';

part 'add_places_state.dart';

class AddPlacesCubit extends Cubit<AddPlacesState> {
  AddPlacesCubit() : super(AddPlacesInitial());
  TextEditingController name = TextEditingController();
  TextEditingController type = TextEditingController();
  TextEditingController decoration = TextEditingController();
  TextEditingController link = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController rating = TextEditingController();
  GlobalKey<FormState> key = GlobalKey<FormState>();
  ImagePicker imagePicker = ImagePicker();
  Crud crud = Crud();
  File? image1, image2, image3;

  int? value;

  add() async {
    if (key.currentState!.validate()) {
      try {
        // emit(AddPlacesLoading());

        var response = await crud.postwithFile(
            Applinks.addPlacess,
            {
              'name': name.text,
              'description': decoration.text,
              'phone': phone.text,
              'location': link.text,
              'category_id': value.toString(),
              'type': type.text,
            },
            image1!);
        print(response);
      } catch (e) {
        // print(e);
        emit(AddPlacesFailure());
      }
    }
  }

  onchanedrop(int val) {
    value = val;
    emit(AddPlacesInitial());
  }

  //
  uploadimage1() async {
    final XFile? picked =
        await imagePicker.pickImage(source: ImageSource.gallery);

    if (picked == null) {
      return;
    }
    image1 = File(picked.path);
    emit(AddPlacesInitial());
  }

  uploadimage2() async {
    final XFile? picked =
        await imagePicker.pickImage(source: ImageSource.gallery);

    if (picked == null) {
      return;
    }

    image2 = File(picked.path);
    emit(AddPlacesInitial());
  }

  uploadimage3() async {
    final XFile? picked =
        await imagePicker.pickImage(source: ImageSource.gallery);

    if (picked == null) {
      return;
    }
    image3 = File(picked.path);
    emit(AddPlacesInitial());
  }
}
