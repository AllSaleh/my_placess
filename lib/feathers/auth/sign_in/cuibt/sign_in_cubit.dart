import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:project/core/applinks.dart';
import 'package:project/core/crud.dart';
import 'package:project/main.dart';
part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(SignInInitial());

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  GlobalKey<FormState> key = GlobalKey<FormState>();
  Crud crud = Crud();

  signIn() async {
    if (key.currentState!.validate()) {
      try {
        emit(SignInLoading());
        var response = await crud.postdata({
          'email': email.text,
          'password': password.text,
        }, Applinks.login);
        if (response['success'] == true) {
          sharedPref.setInt('id', response['data']['user']['id']);
          if (response['data']['user']['is_admin'] == false) {
            sharedPref.setBool('adimn', false);
          } else {
            sharedPref.setBool('adimn', true);
          }
          sharedPref.setString('gender', response['data']['user']['gender']);
          sharedPref.setBool('haveaccount', true);
          emit(SignInSucsess());
        } else if (response['message'] ==
            'These credentials do not match our records.') {
          emit(SignInNotExisting());
        }
      } catch (e) {
        emit(SignInFailuer());
      }
    }
  }
}
