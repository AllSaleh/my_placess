import 'package:flutter/material.dart';

import 'package:project/core/const.dart';
import 'package:project/feathers/auth/widgets/auth_button.dart';
import 'package:project/feathers/profile/user_profile/view/user_profile_child.dart';
import 'package:project/feathers/profile/widgets/profile_stack.dart';
import 'package:project/feathers/profile/widgets/secount_continer.dart';
import 'package:project/feathers/profile/widgets/top_text_profile.dart';

class UserProfileBodyView extends StatelessWidget {
  const UserProfileBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const TopTextProfile(topText: 'User profil'),
          const SizedBox(
            height: 53,
          ),
          ProfileStack(
            onPressedEdite: () {},
            name: 'Eman',
            email: 'JhonDoe1@gmail.com',
          ),
          const SizedBox(
            height: 28,
          ),
          const SecountContinerProflie(
            child: UserProfileChild(),
          ),
          const SizedBox(
            height: 40,
          ),
          AuthButton(
              onPressed: () {},
              title: 'Log Out',
              color: whiteColor,
              backgroundColor: primaryColor)
        ],
      ),
    );
  }
}
