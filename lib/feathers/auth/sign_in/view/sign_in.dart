import 'package:flutter/material.dart';
import 'package:project/feathers/auth/sign_in/cuibt/sign_in_cubit.dart';
import 'package:project/feathers/auth/sign_in/view/sign_in_body_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(),
      child: const Scaffold(
        body: SafeArea(
          child: SigninBodyView(),
        ),
      ),
    );
  }
}
