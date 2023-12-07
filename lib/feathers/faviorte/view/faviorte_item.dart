import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/const.dart';
import 'package:project/feathers/faviorte/cubit/faviorte_cubit.dart';
import 'package:project/feathers/faviorte/data/faviorte_model/faviorte_model.dart';

class FaviorteItem extends StatelessWidget {
  final FaviorteModel faviorteModel;
  const FaviorteItem({super.key, required this.faviorteModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Container(
        height: 100,
        width: MediaQuery.of(context).size.width * .3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xffF6F5F5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              faviorteModel.name.toString(),
              style: const TextStyle(fontSize: 18),
            ),
            IconButton(
                onPressed: () {
                  BlocProvider.of<FaviorteCubit>(context)
                      .deletefaviorte(faviorteModel.id!);
                },
                icon: Icon(
                  Icons.favorite_border_outlined,
                  size: 30,
                  color: faviorteModel.isFavorites == true
                      ? primaryColor
                      : blackColor,
                ))
          ],
        ),
      ),
    );
  }
}
