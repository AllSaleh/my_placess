import 'package:flutter/material.dart';
import 'package:project/feathers/auth/forgetpassword/otp/otp_chiled.dart';
import 'package:project/feathers/auth/sign_in/widgets/image_continer.dart';
import 'package:project/feathers/auth/widgets/secound_continer.dart';
import 'package:project/feathers/auth/widgets/top_text.dart';


class OtpBodyView extends StatelessWidget {
  const OtpBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
        ),
        const TopText(title: 'Forget Your\nPassword?'),
        const ImageContiner(),
        const SecoundContiner(
          child: OtpChild(),
        )
      ],
    );
  }
}
