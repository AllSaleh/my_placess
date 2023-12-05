import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());


  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
 TextEditingController password = TextEditingController();
 TextEditingController password2 = TextEditingController();
 GlobalKey<FormState> key=GlobalKey<FormState>();

  int gender = 0;


  signUp(){

    if(key.currentState!.validate()){
      if(password.text!=password2.text){
       emit(SignUpNotEqualPass());
      }
      else{
        emit(SignUpSucsess());

      }

    }
  }

  chanrGendr(int gender1) {
    gender = gender1;
    emit(SignUpInitial());
  }
}
