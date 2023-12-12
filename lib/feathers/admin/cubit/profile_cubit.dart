import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project/core/applinks.dart';
import 'package:project/core/crud.dart';
import 'package:project/core/functions.dart';
import 'package:project/feathers/admin/admin_profile/data/profile_model.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitial());
  File? image;
  Crud crud = Crud();

  ProfileModel data = ProfileModel();

  getUserAccount() async {
    try {
      emit(ProfileLoading());
      if (haveAcountFunctions() == true) {
        var response = await crud.get(Applinks.getUserAccount);
        if (response['success'] == true) {
          data = ProfileModel.fromJson(response['data']);
         
          emit(ProfileSucsess());
        } else {
          emit(ProfileIFailure());
        }
      } else {
        emit(ProfileIFailure());
      }
    } catch (e) {
        emit(ProfileIFailure());


    }
  }

  ImagePicker imagePicker = ImagePicker();
  uploadimage1() async {
    final XFile? picked =
        await imagePicker.pickImage(source: ImageSource.gallery);

    if (picked == null) {
      return;
    }

    image = File(picked.path);

    var response = await crud.postWithFile1({},image!, Applinks.getUserAccount);

    if (response['success'] == true) {
      getUserAccount();

      emit(ProfileSucsess());
    }

    // print(image)/;
  }
}
