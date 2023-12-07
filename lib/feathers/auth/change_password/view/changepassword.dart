import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/feathers/auth/change_password/view/change_body_view.dart';
import 'package:project/feathers/auth/forgetpassword/cubit/forget_password_cubit.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgetPasswordCubit(),
      child: const Scaffold(
        body: SafeArea(
          child: ChangePasswordBodyView(),
        ),
      ),
    );
  }
}
