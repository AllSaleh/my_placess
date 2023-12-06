import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:project/core/const.dart';
import 'package:project/feathers/detils/widgets/custom_continer_detils.dart';
import 'package:project/feathers/detils/widgets/detils_images.dart';

class DetilsStack extends StatelessWidget {
  const DetilsStack({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
         const DetilsImages(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomContinerDetils(
                  color: whiteColor,
                    onTap: () {
                      GoRouter.of(context).pop();
                    },
                    icon: Icons.arrow_back),
                CustomContinerDetils(
                  color: whiteColor,
                  onTap: () {},
                  icon: Icons.favorite_border_outlined,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
