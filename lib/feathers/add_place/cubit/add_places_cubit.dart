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

  List<File> images = [];

  int? value;

  add() async {
    if (key.currentState!.validate()) {
      if (value == null) {
        emit(AddPlacesNotCategori());
      }
      try {
        emit(AddPlacesLoading());

        var response = await crud.postwithFile(
            Applinks.addPlacess,
            {
              'name': name.text,
              'description': decoration.text,
              'phone': phone.text,
              'location': link.text,
              'category_id': value.toString(),
              'rate': rating.text,
              'type': type.text,
            },
            images);

        if (response['message'] == 'The images field is required.') {
          emit(AddPlacesNotImage());
        } else {
          
          emit(AddPlacesSucsess());
        }
      } catch (e) {
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
    images.add(image1!);

    emit(AddPlacesInitial());
  }

  uploadimage2() async {
    final XFile? picked =
        await imagePicker.pickImage(source: ImageSource.gallery);

    if (picked == null) {
      return;
    }
    image2 = File(picked.path);

    images.add(image2!);

    emit(AddPlacesInitial());
  }

  uploadimage3() async {
    final XFile? picked =
        await imagePicker.pickImage(source: ImageSource.gallery);

    if (picked == null) {
      return;
    }
    image3 = File(picked.path);

    images.add(image3!);

    emit(AddPlacesInitial());
  }
}
