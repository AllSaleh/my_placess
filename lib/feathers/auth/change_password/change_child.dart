import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project/core/const.dart';
import 'package:project/core/routers/routers_names.dart';
import 'package:project/core/validation.dart';
import 'package:project/feathers/auth/widgets/auth_button.dart';
import 'package:project/feathers/auth/widgets/textformfiled.dart';

class ChangePassChild extends StatelessWidget {
  const ChangePassChild({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        // key: BlocProvider.of<ForgetPasswordCubit>(context).key,
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Enter the Email associated\n with your account',
          style: TextStyle(
              fontSize: 20, color: blackColor, fontWeight: FontWeight.bold),
        ),
        CustomTextFiled(
          labe: 'Email',
          controller: TextEditingController(),
          validator: (email) {
            return validation('email', email);
          },
        ),
        const SizedBox(
          height: 50,
        ),
        Align(
          alignment: Alignment.center,
          child: AuthButton(
              onPressed: () {
                GoRouter.of(context).pushNamed(Routers.otp);
              },
              title: 'Next',
              color: whiteColor,
              backgroundColor: primaryColor),
        )
      ],
    ));
  }
}
