import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:project/core/app_assets.dart';
import 'package:project/core/const.dart';
import 'package:project/feathers/home_screen/cubit/home_screen_cubit.dart';



class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenCubit, HomeScreenState>(
      builder: (context, state) {
        int indexs = BlocProvider.of<HomeScreenCubit>(context).currentIndex;

        return BottomNavigationBar(
            onTap: (index) {
              BlocProvider.of<HomeScreenCubit>(context).chaneIndext(index);
      
            },
            currentIndex: BlocProvider.of<HomeScreenCubit>(context).currentIndex,
            backgroundColor: whiteColor,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: blackColor,
            unselectedItemColor: const Color(0xff878787),
            items: [
              BottomNavigationBarItem(
                  label: "Home",
                  icon: Image.asset(
                    AppAssets.home,
                    color: indexs == 0 ? blackColor : lines,
                  )),
              BottomNavigationBarItem(
                  label: "add",
                  icon: Image.asset(AppAssets.faviorte,
                      color: indexs == 1 ? blackColor : lines)),
              BottomNavigationBarItem(
                  label: "favorite",
                  icon: Image.asset(
                    AppAssets.plus,
                    color: indexs == 2 ? blackColor : lines,
                  )),
              BottomNavigationBarItem(
                  label: "profile",
                  icon: Image.asset(
                    AppAssets.user,
                    color: indexs == 3 ? blackColor : lines,
                  ))
            ]);
      },
    );
  }
}
