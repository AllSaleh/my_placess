import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project/core/app_assets.dart';
import 'package:project/core/routers/routers_names.dart';
import 'package:project/feathers/home/widgets/continer_categoris.dart';

class RowHome extends StatelessWidget {
  const RowHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ContinerCategorise(
          onTap: () {
            GoRouter.of(context).pushNamed(Routers.categorise);
          },
          image: AppAssets.natural,
          title: 'Natural Landscape',
        ),
        ContinerCategorise(
          onTap: () {},
          image: AppAssets.museums,
          title: 'Museums &Monuments',
        ),
        ContinerCategorise(
          onTap: () {},
          image: AppAssets.shopping,
          title: 'Shopping\n ',
        ),
        ContinerCategorise(
          onTap: () {},
          image: AppAssets.restaurants,
          title: 'Restaurants & cafes',
        ),
      ],
    );
  }
}
