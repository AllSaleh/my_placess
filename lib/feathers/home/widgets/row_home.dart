import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project/core/app_assets.dart';
import 'package:project/core/routers/routers_names.dart';
import 'package:project/feathers/home/widgets/continer_categoris.dart';
import 'package:project/main.dart';

class RowHome extends StatelessWidget {
  const RowHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ContinerCategorise(
            onTap: () {
              sharedPref.setInt('cat', 1);
              GoRouter.of(context).pushNamed(Routers.categorise);
            },
            image: AppAssets.natural,
            title: 'Natural Landscape',
          ),
          ContinerCategorise(
            onTap: () {
              sharedPref.setInt('cat', 2);
              GoRouter.of(context).pushNamed(Routers.categorise);
            },
            image: AppAssets.museums,
            title: 'Museums &Monuments',
          ),
          ContinerCategorise(
            onTap: () {
              sharedPref.setInt('cat', 3);
              GoRouter.of(context).pushNamed(Routers.categorise);
            },
            image: AppAssets.shopping,
            title: 'Shopping\n ',
          ),
          ContinerCategorise(
            onTap: () {
              sharedPref.setInt('cat', 4);
              GoRouter.of(context).pushNamed(Routers.categorise);
            },
            image: AppAssets.restaurants,
            title: 'Restaurants & cafes',
          ),
        ],
      ),
    );
  }
}
