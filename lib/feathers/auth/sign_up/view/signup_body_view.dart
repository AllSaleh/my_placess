import 'package:flutter/material.dart';
import 'package:project/feathers/auth/sign_in/widgets/image_continer.dart';
import 'package:project/feathers/auth/sign_up/widgets/signup_child.dart';
import 'package:project/feathers/auth/widgets/secound_continer.dart';
import 'package:project/feathers/auth/widgets/top_text.dart';

class SignUpBodyView extends StatelessWidget {
  const SignUpBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
        ),
        const ImageContiner(),
        const TopText(title: 'Create\nyour account'),
        const SecoundContiner(
          child: SignUpChild(),
        )
      ],
    );
  }
}
