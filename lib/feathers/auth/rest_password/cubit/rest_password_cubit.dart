import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/applinks.dart';
import 'package:project/core/crud.dart';
import 'package:project/main.dart';

part 'rest_password_state.dart';

class RestPasswordCubit extends Cubit<RestPasswordState> {
  RestPasswordCubit() : super(RestPasswordInitial());
  TextEditingController password1 = TextEditingController();
  TextEditingController password2 = TextEditingController();

  GlobalKey<FormState> key = GlobalKey<FormState>();
  Crud crud = Crud();

  restPassword() async {
    if (key.currentState!.validate()) {
      if (password1.text != password2.text) {
        emit(RestPasswordNotEqual());
      } else {
        try {
          var response = await crud.postdata({
            'email': sharedPref.getString('email'),
            'code': sharedPref.getString('code'),
            'password': password1.text,
            'password_confirmation': password2.text
          }, Applinks.restPass);

          if (response['message'] == 'password reset successfully') {
            emit(RestPasswordSucsess());
            sharedPref.clear();
          } else if (response['message'] == '"exceptions.wrong_otp') {
            emit(RestPasswordFaildOtp());
          }
        } catch (e) {
          emit(RestPasswordFailure());
        }
      }
    }
  }
}
