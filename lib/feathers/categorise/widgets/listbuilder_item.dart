import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project/core/const.dart';
import 'package:project/core/routers/routers_names.dart';

import 'package:project/feathers/categorise/data/catergorie_model.dart';
import 'package:project/main.dart';

class ListBuilderCAtegorieItem extends StatelessWidget {
  final CategorieModel categorieModel;
  const ListBuilderCAtegorieItem({super.key, required this.categorieModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: () {
          sharedPref.setInt('placeid', categorieModel.id!);
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
                image: DecorationImage(
                    image:
                        NetworkImage(categorieModel.images![0].url.toString()),
                    fit: BoxFit.fill),
              ),
            ),
            Positioned(
                left: 14,
                bottom: 38,
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * .8,
                    child: Text(
                      categorieModel.name!,
                      style: const TextStyle(
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
