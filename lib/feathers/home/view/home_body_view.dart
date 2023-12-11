import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/app_assets.dart';
import 'package:project/core/const.dart';
import 'package:project/core/functions.dart';
import 'package:project/core/widgets/custom_loading.dart';
import 'package:project/feathers/home/cubit/home_cubit.dart';

import 'package:project/feathers/home/widgets/gender_icon.dart';
import 'package:project/feathers/home/widgets/home_listview.dart';
import 'package:project/feathers/home/widgets/row_home.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GenderIcon(
              image: gender() == 'mail' ? AppAssets.male : AppAssets.female,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Never think where,',
              style: TextStyle(color: blackColor, fontSize: 25),
            ),
            const Text(
              'Tripbuddy leads u there',
              style: TextStyle(
                  color: blackColor, fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 37,
            ),
            const RowHome(),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Recommendations',
              style: TextStyle(color: Color(0xff3F415A), fontSize: 25),
            ),
            const SizedBox(
              height: 15,
            ),
            BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                if (state is HomeLoading || state is HomeInitial) {
                  return const CustomLoading();
                } else if (state is HomeSucsess) {
                  return const HomeListViewBuilder();
                } else if (state is HomeNoData) {
                  return const Center(
                    child: Text('No Data',
                        style: TextStyle(fontSize: 20, color: primaryColor)),
                  );
                } else {
                  return InkWell(
                    onTap: () {
                      BlocProvider.of<HomeCubit>(context).getRecomndations();
                    },
                    child: const Center(
                      child: Text('A problem Enter To Try Again',
                          style: TextStyle(fontSize: 20, color: primaryColor)),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
