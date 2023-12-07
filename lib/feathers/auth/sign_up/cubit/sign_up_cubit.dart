import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/applinks.dart';
import 'package:project/core/crud.dart';
import 'package:project/main.dart';
part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController password2 = TextEditingController();
  GlobalKey<FormState> key = GlobalKey<FormState>();
  Crud crud = Crud();
  int gender = 0;

  String genders() {
    if (gender == 0) {
      return 'female';
    } else {
      return 'mali';
    }
  }

  signUp() async {
    if (key.currentState!.validate()) {
      if (password.text != password2.text) {
        emit(SignUpNotEqualPass());
      } else {
        try {
          emit(SignUpLoading());
          var response = await crud.postdata({
            'name': name.text,
            'email': email.text,
            'password': password.text,
            'password_confirmation': password2.text,
            'gender': genders()
          }, Applinks.register);
          if (response['success'] == true) {
            sharedPref.setInt('id', response['data']['user']['id']);
            if (response['data']['user']['is_admin'] == false) {
              sharedPref.setBool('adimn', false);
            } else {
              sharedPref.setBool('adimn', true);
            }
            sharedPref.setString('gender', response['data']['user']['gender']);
            sharedPref.setBool('haveaccount', true);
            emit(SignUpSucsess());
          } else if (response['message'] ==
              'The email has already been taken.') {
            emit(SignUpExiting());
          }
        } catch (e) {
          emit(SignUpFailuer());
        }

        // if (response['message'] == 'login successfully') {
        //   // emit(SignUpSucsess());
        // } else {}

        // print(sharedPref.getBool('admin'));

        // emit(SignUpSucsess());
      }
    }
  }

  chanrGendr(int gender1) {
    gender = gender1;
    emit(SignUpInitial());
  }
}
