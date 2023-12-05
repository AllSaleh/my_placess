import 'package:flutter/material.dart';
import 'package:project/feathers/auth/sign_in/widgets/sign_in_child.dart';

import 'package:project/feathers/auth/widgets/top_text.dart';

import 'package:project/feathers/auth/sign_in/widgets/image_continer.dart';
import 'package:project/feathers/auth/widgets/secound_continer.dart';

class SigninBodyView extends StatelessWidget {
  const SigninBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,

      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
        ),
        const ImageContiner(),
        const TopText(
          title: 'Hello\nSign In!',
        ),
        const SecoundContiner(
          child: SignInChild(),
        ),
      ],
    );
  }
}
