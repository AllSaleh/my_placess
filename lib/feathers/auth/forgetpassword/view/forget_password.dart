import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/feathers/auth/forgetpassword/cubit/forget_password_cubit.dart';
import 'package:project/feathers/auth/forgetpassword/view/forget_view_body.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgetPasswordCubit(),
      child: const Scaffold(
        body: SafeArea(
          child: ForgetPasswordBodyView(),
        ),
      ),
    );
  }
}
