import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project/core/const.dart';
import 'package:project/core/routers/routers_names.dart';
import 'package:project/core/validation.dart';
import 'package:project/feathers/auth/widgets/auth_button.dart';
import 'package:project/feathers/auth/widgets/textformfiled.dart';

class RestChild extends StatelessWidget {
  const RestChild({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        // key: BlocProvider.of<SignInCubit>(context).key,
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 30,
        ),
        const Text(
          'Insert your new password',
          style: TextStyle(fontSize: 20),
        ),
        CustomTextFiled(
            padding: 10,
            validator: (password) {
              return validation('password', password);
            },
            labe: 'New Password',
            controller: TextEditingController()),
        CustomTextFiled(
          padding: 10,
          validator: (confirmpassword) {
            return validation('confirmpassword', confirmpassword);
          },
          labe: 'Confirm Password',
          controller: TextEditingController(),
        ),
        const SizedBox(
          height: 51,
        ),
        Align(
          alignment: Alignment.center,
          child: AuthButton(
              onPressed: () {
                GoRouter.of(context).pushReplacementNamed(Routers.home);
                // BlocProvider.of<SignInCubit>(context).signIn();
              },
              title: 'Done',
              color: whiteColor,
              backgroundColor: primaryColor),
        ),
        const SizedBox(
          height: 60,
        ),
      ],
    ));
  }
}
