import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project/core/routers/routers_names.dart';

import 'package:project/feathers/home/data/recomndation_model.dart';
import 'package:project/feathers/home/widgets/home_list_tile.dart';
import 'package:project/main.dart';

class ListBuilderHomeItem extends StatelessWidget {
  final RecomndationModel recomndationModel;
  const ListBuilderHomeItem({super.key, required this.recomndationModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        child: InkWell(
          onTap: () {
            sharedPref.setInt('placeid', recomndationModel.id!);

            GoRouter.of(context).pushNamed(Routers.detils);
          },
          child: Stack(
            children: [
              AspectRatio(
                aspectRatio: 3 / 4.2,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              recomndationModel.images![0].url.toString()),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              Positioned(
                  bottom: 10,
                  child: HomeListTile(
                    title: recomndationModel.name!,
                    subtitle: recomndationModel.type!,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
