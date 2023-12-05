import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/feathers/auth/sign_up/cubit/sign_up_cubit.dart';
import 'package:project/feathers/auth/sign_up/view/signup_body_view.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider
    (create: (context) => SignUpCubit(),
      child: const Scaffold(
        body: SafeArea(
          child: SignUpBodyView(),
        ),
      ),
    );
  }
}
