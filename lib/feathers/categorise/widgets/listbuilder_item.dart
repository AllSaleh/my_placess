import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project/core/app_assets.dart';
import 'package:project/core/const.dart';
import 'package:project/core/routers/routers_names.dart';

class ListBuilderCAtegorieItem extends StatelessWidget {
  const ListBuilderCAtegorieItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: () {
          GoRouter.of(context).pushNamed(Routers.detils);
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width * .9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    image: AssetImage(AppAssets.test3), fit: BoxFit.fill),
              ),
            ),
            Positioned(
                left: 14,
                bottom: 38,
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * .8,
                    child: const Text(
                      'Jeddah Yacht Club & Marina',
                      style: TextStyle(
                          color: whiteColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    )))
          ],
        ),
      ),
    );
  }
}
