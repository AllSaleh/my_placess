import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project/core/app_assets.dart';
import 'package:project/core/routers/routers_names.dart';
import 'package:project/feathers/profile/widgets/custom_driver.dart';
import 'package:project/feathers/profile/widgets/listtile_profile.dart';

class AdimnProfileChild extends StatelessWidget {
  const AdimnProfileChild({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTileProfile(
              image: AppAssets.reviwer,
              title: 'Review requests',
              onTap: () {
                GoRouter.of(context).pushNamed(Routers.review);
              }),
          const CustomDriver(),
          ListTileProfile(
              image: AppAssets.calender,
              title: 'Calendar',
              onTap: () {
                GoRouter.of(context).pushNamed(Routers.calender);
              }),
          const CustomDriver(),
          ListTileProfile(
              image: AppAssets.luck,
              title: 'Change password',
              onTap: () {
                GoRouter.of(context).pushNamed(Routers.changepassword);
              }),
        ],
      ),
    );
  }
}
