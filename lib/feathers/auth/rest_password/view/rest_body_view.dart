import 'package:flutter/material.dart';
import 'package:project/feathers/auth/rest_password/view/rest_child.dart';
import 'package:project/feathers/auth/sign_in/widgets/image_continer.dart';
import 'package:project/feathers/auth/widgets/secound_continer.dart';
import 'package:project/feathers/auth/widgets/top_text.dart';

class RestPasswordBodyView extends StatelessWidget {
  const RestPasswordBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      SizedBox(
        height: MediaQuery.of(context).size.height,
      ),
      const ImageContiner(),
      const TopText(
        title: 'Reset your\npassword',
      ),
      const SecoundContiner(
          child: RestChild(),
        ),
      
    ]);
  }
}
