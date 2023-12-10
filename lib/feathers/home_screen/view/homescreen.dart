import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:project/core/closapp/willpopscop.dart';
// import 'package:project/core/closapp/willpopscop.dart';
import 'package:project/core/const.dart';
import 'package:project/core/functions.dart';
import 'package:project/core/routers/routers_names.dart';

import 'package:project/feathers/home_screen/cubit/home_screen_cubit.dart';
import 'package:project/feathers/home_screen/widget/bottom_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeScreenCubit(),
      child: BlocBuilder<HomeScreenCubit, HomeScreenState>(
        builder: (context, state) {
          return WillPopScope(
            onWillPop: () {
              if (haveAcountFunctions() == false) {
                GoRouter.of(context).pushReplacementNamed(Routers.welocm);
              } else {
                willPopScope(context);
              }
              return Future.value(false);
            },
            child: Scaffold(
                backgroundColor: whiteColor,
                bottomNavigationBar: const HomeBottomBar(),
                body: SafeArea(
                  child: BlocProvider.of<HomeScreenCubit>(context).pages[
                      BlocProvider.of<HomeScreenCubit>(context).currentIndex],
                )),
          );
        },
      ),
    );
  }
}
