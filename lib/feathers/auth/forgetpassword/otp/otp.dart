import 'package:flutter/material.dart';
import 'package:project/feathers/auth/forgetpassword/otp/otp_body_view.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: OtpBodyView(),
      ),
    );
  }
}
