import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:project/core/const.dart';
import 'package:project/core/routers/routers_names.dart';
import 'package:project/core/validation.dart';
import 'package:project/feathers/auth/sign_in/cuibt/sign_in_cubit.dart';
import 'package:project/feathers/auth/sign_in/widgets/forgetpass_text.dart';
import 'package:project/feathers/auth/widgets/auth_button.dart';
import 'package:project/feathers/auth/widgets/have_account.dart';
import 'package:project/feathers/auth/widgets/textformfiled.dart';

class SignInChild extends StatelessWidget {
  const SignInChild({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        key: BlocProvider.of<SignInCubit>(context).key,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomTextFiled(
                validator: (email) {
                  return validation('email', email);
                },
                labe: 'Email',
                controller: BlocProvider.of<SignInCubit>(context).email),
            const SizedBox(
              height: 30,
            ),
            CustomTextFiled(
                validator: (password) {
                  return validation('password', password);
                },
                labe: 'Password',
                controller: TextEditingController()),
            const SizedBox(
              height: 24,
            ),
            const ForgetPasswordText(),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: AuthButton(
                  onPressed: () {
                    GoRouter.of(context).pushReplacementNamed(Routers.home);
                    // BlocProvider.of<SignInCubit>(context).signIn();
                  },
                  title: 'Sign in',
                  color: whiteColor,
                  backgroundColor: primaryColor),
            ),
            const SizedBox(
              height: 60,
            ),
            HaveAccount(
              title1: 'Don’t have an account?',
              title2: 'Sign Up',
              onPressed: () {
                GoRouter.of(context).pushNamed(Routers.signUp);
              },
            )
          ],
        ));
  }
}
