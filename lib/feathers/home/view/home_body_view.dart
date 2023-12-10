import 'package:flutter/material.dart';
import 'package:project/core/app_assets.dart';
import 'package:project/core/const.dart';
import 'package:project/core/functions.dart';

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
            const HomeListViewBuilder(),
          ],
        ),
      ),
    );
  }
}
