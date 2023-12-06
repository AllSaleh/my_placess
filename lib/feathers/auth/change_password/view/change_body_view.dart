import 'package:flutter/material.dart';
import 'package:project/feathers/auth/change_password/change_child.dart';

import 'package:project/feathers/auth/sign_in/widgets/image_continer.dart';
import 'package:project/feathers/auth/widgets/secound_continer.dart';
import 'package:project/feathers/auth/widgets/top_text.dart';

class ChangePasswordBodyView extends StatelessWidget {
  const ChangePasswordBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
        ),
        const ImageContiner(),
        const TopText(title: 'Change\nPassword?'),
        const SecoundContiner(
          child: ChangePassChild(),
        )
      ],
    );
  }
}
