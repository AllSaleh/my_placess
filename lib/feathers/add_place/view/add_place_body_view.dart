import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:project/core/const.dart';

import 'package:project/core/snackbar.dart';
import 'package:project/core/widgets/custom_loading.dart';

import 'package:project/feathers/add_place/cubit/add_places_cubit.dart';
import 'package:project/feathers/add_place/widgets/add_places_drop.dart';
import 'package:project/feathers/add_place/widgets/fildes_column.dart';
import 'package:project/feathers/add_place/widgets/images_row.dart';

import 'package:project/feathers/auth/widgets/auth_button.dart';
import 'package:project/feathers/home_screen/cubit/home_screen_cubit.dart';


class AddPlaceBodyView extends StatelessWidget {
  const AddPlaceBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    var cuibt = BlocProvider.of<AddPlacesCubit>(context);
    return BlocBuilder<HomeScreenCubit, HomeScreenState>(
      builder: (context, state) {
        return BlocConsumer<AddPlacesCubit, AddPlacesState>(
          listener: (context, state) {
            if (state is AddPlacesNotCategori) {
              ScaffoldMessenger.of(context).showSnackBar(
                  customSnackBar(title: 'Please Select Categorie'));
            } else if (state is AddPlacesNotImage) {
              ScaffoldMessenger.of(context).showSnackBar(
                  customSnackBar(title: 'Please Select All images'));
            } else if (state is AddPlacesSucsess) {
              ScaffoldMessenger.of(context).showSnackBar(
                  customSnackBar(title: 'The Places Added Sucssfuly'));
              BlocProvider.of<HomeScreenCubit>(context).chaneIndext(0);
              // GoRouter.of(context).pushReplacementNamed(Routers.home);
            }
          },
          builder: (context, state) {
            return Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Form(
                  key: cuibt.key,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(
                        height: 117,
                      ),
                      const Text(
                        'Add place',
                        style: TextStyle(fontSize: 30, color: blackColor),
                      ),
                      const FildesColumn(),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Category',
                          style: TextStyle(color: primaryColor, fontSize: 18),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const AddPlaceDrop(),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Insert Photo',
                          style: TextStyle(color: primaryColor, fontSize: 18),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                        width: 300,
                        child: ImagesRow(),
                      ),
                      const SizedBox(
                        height: 51,
                      ),
                      state is AddPlacesLoading
                          ? const CustomLoading()
                          : AuthButton(
                              horizontal: 50,
                              onPressed: () {
                                cuibt.add();
                              },
                              title: 'Add',
                              color: whiteColor,
                              backgroundColor: primaryColor)
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
