import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project/core/const.dart';
import 'package:project/core/routers/routers_names.dart';

class ForgetPasswordText extends StatelessWidget {
  const ForgetPasswordText({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          GoRouter.of(context).pushNamed(Routers.forgetPassword);
        },
        child: const Text(
          'Forget Password?',
          style: TextStyle(
              color: blackColor, fontSize: 15, fontWeight: FontWeight.bold),
        ));
  }
}
