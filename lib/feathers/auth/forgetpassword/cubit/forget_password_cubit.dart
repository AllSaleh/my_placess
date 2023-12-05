import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'forget_password_state.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  ForgetPasswordCubit() : super(ForgetPasswordInitial());
  TextEditingController email = TextEditingController();

  GlobalKey<FormState> key = GlobalKey<FormState>();

  next() {
    if (key.currentState!.validate()) {
      emit(ForgetPasswordValidation());
      // GoRouter.of(context!).pushNamed(Routers.signIn);
    }
  }

  goRestPassword(){
      emit(ForgetPasswordValidation());

    
  }
}
