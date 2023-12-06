import 'package:flutter/material.dart';
import 'package:project/feathers/auth/change_password/view/change_body_view.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: ChangePasswordBodyView(),
      ),
    );
  }
}
