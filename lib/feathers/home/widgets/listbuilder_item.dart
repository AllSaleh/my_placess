import 'package:flutter/material.dart';
import 'package:project/core/app_assets.dart';
import 'package:project/feathers/home/widgets/home_list_tile.dart';

class ListBuilderHomeItem extends StatelessWidget {
  const ListBuilderHomeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        child: Stack(
          children: [
            AspectRatio(
              aspectRatio: 3 / 4.2,
              child: Container(
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage(
                          AppAssets.authimag,
                        ),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            const Positioned(
                bottom: 10,
                child: HomeListTile(
                  title: 'Jeddah Waterfront',
                  subtitle: 'Beach pavilion',
                ))
          ],
        ),
      ),
    );
  }
}
