import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/const.dart';
import 'package:project/feathers/add_place/cubit/add_places_cubit.dart';

class ImagesRow extends StatelessWidget {
  const ImagesRow({super.key});

  @override
  Widget build(BuildContext context) {
    var cuibt = BlocProvider.of<AddPlacesCubit>(context);
    return BlocBuilder<AddPlacesCubit, AddPlacesState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            continerplacess(
                picked: cuibt.image1 != null ? true : false,
                onTap: () {
                  cuibt.uploadimage1();
                }),
            continerplacess(
                picked: cuibt.image2 != null ? true : false,
                onTap: () {
                  cuibt.uploadimage2();
                }),
            continerplacess(
                picked: cuibt.image3 != null ? true : false,
                onTap: () {
                  cuibt.uploadimage3();
                }),
          ],
        );
      },
    );
  }

  continerplacess({required VoidCallback onTap, bool picked = false}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            border: picked ? Border.all(color: primaryColor) : null,
            color: const Color(0xffF6F5F5),
            borderRadius: BorderRadius.circular(20)),
        child: const Icon(
          Icons.image,
          size: 50,
        ),
      ),
    );
  }
}
