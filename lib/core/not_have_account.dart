import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project/core/const.dart';
import 'package:project/core/routers/routers_names.dart';

class NotHaveAccount extends StatelessWidget {
  const NotHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'You Should Login To Acsess',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30),
          ),
          TextButton(
              onPressed: () {
                GoRouter.of(context).pushReplacementNamed(Routers.signIn);
              },
              child: const Text(
                'Login',
                style: TextStyle(
                    fontSize: 20,
                    color: primaryColor,
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
