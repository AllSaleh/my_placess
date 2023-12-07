import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/feathers/auth/forgetpassword/cubit/forget_password_cubit.dart';
import 'package:project/feathers/auth/forgetpassword/otp/otp_body_view.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgetPasswordCubit(),
      child: const Scaffold(
        body: SafeArea(
          child: OtpBodyView(),
        ),
      ),
    );
  }
}
