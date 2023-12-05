import 'package:flutter/material.dart';
import 'package:project/core/app_assets.dart';
import 'package:project/feathers/profile/widgets/custom_driver.dart';
import 'package:project/feathers/profile/widgets/listtile_profile.dart';
class UserProfileChild extends StatelessWidget {
  const UserProfileChild({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          ListTileProfile(
              image: AppAssets.calender, title: 'Calnder', onTap: () {}),
         const CustomDriver(),
          ListTileProfile(
              image: AppAssets.luck, title: 'Chane Password', onTap: () {}),
        ],
      );
  }
}