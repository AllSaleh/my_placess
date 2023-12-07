import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project/core/app_assets.dart';

import 'package:project/feathers/profile/widgets/custom_driver.dart';
import 'package:project/feathers/profile/widgets/listtile_profile.dart';
import 'package:project/main.dart';

import '../../../../core/routers/routers_names.dart';

class UserProfileChild extends StatelessWidget {
  const UserProfileChild({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTileProfile(
            image: AppAssets.calender,
            title: 'Calnder',
            onTap: () {
              GoRouter.of(context).pushNamed(Routers.calender);
            }),
        const CustomDriver(),
        ListTileProfile(
            image: AppAssets.luck,
            title: 'Chane Password',
            onTap: () {
              sharedPref.setBool('change', true);

              GoRouter.of(context).pushNamed(Routers.changepassword);
            }),
      ],
    );
  }
}
