import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/applinks.dart';
import 'package:project/core/crud.dart';
import 'package:project/main.dart';

part 'forget_password_state.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  ForgetPasswordCubit() : super(ForgetPasswordInitial());
  TextEditingController email = TextEditingController();

  GlobalKey<FormState> key = GlobalKey<FormState>();
  Crud crud = Crud();
  String? code;

  next() async {
    if (key.currentState!.validate()) {
      try {
        emit(ForgetPasswordLoading());
        var response = await crud.postdata(
          {'email': email.text},
          Applinks.sendotp,
        );
        if (response['message'] == 'OK') {
          sharedPref.setString('email', email.text);
          emit(ForgetPasswordSucsess());
        } else if (response['message'] == 'The selected email is invalid.') {
          emit(ForgetPasswordNoAccount());
        }
      } catch (e) {
        emit(ForgetPasswordFailure());
      }
    }
  }

  cheekOtp() async {
    try {
      emit(ForgetPasswordLoading());
      var response = await crud.postdata({
        'email': sharedPref.getString('email'),
        'code': code,
      }, Applinks.checkOtp);

      if (response['message'] == 'OK') {
        emit(ForgetPasswordSucsess());
        sharedPref.setString('code', code!);
      } else if (response['message'] == 'exceptions.wrong_otp') {
        emit(ForgetPasswordFialdOtp());
      }
    } catch (e) {
      emit(ForgetPasswordFailure());
    }
  }
}
