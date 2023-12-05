import 'package:flutter/material.dart';
import 'package:project/feathers/auth/forgetpassword/widgets/forgetpassword_child.dart';
import 'package:project/feathers/auth/sign_in/widgets/image_continer.dart';
import 'package:project/feathers/auth/widgets/secound_continer.dart';
import 'package:project/feathers/auth/widgets/top_text.dart';

class ForgetPasswordBodyView extends StatelessWidget {
  const ForgetPasswordBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
        ),
        const ImageContiner(),
        const TopText(title: 'Forget Your\nPassword?'),
        const SecoundContiner(child: FogretChild())
      ],
    );
  }
}
