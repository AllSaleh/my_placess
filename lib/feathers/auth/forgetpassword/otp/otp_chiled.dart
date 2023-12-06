import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project/core/const.dart';
import 'package:project/core/routers/routers_names.dart';

import 'package:project/feathers/auth/forgetpassword/otp/otp_filed.dart';
import 'package:project/feathers/auth/widgets/auth_button.dart';

class OtpChild extends StatelessWidget {
  const OtpChild({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const SizedBox(
        height: 20,
      ),
      const Text(
        'Enter Otp',
        style: TextStyle(fontSize: 20),
      ),
      const SizedBox(
        height: 20,
      ),
      OtpFiled(
        onSubmit: (code) {},
      ),
      const SizedBox(
        height: 80,
      ),
      Align(
        alignment: Alignment.center,
        child: AuthButton(
            onPressed: () {
              GoRouter.of(context).pushReplacementNamed(Routers.restpassword);
            },
            title: 'Confirem',
            color: whiteColor,
            backgroundColor: primaryColor),
      )
    ]);
  }
}
