import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(SignInInitial());

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  GlobalKey<FormState> key = GlobalKey<FormState>();

  signIn() {
    if (key.currentState!.validate()) {}
  }
}
