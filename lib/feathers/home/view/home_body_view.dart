import 'package:flutter/material.dart';
import 'package:project/core/const.dart';

import 'package:project/feathers/home/widgets/gender_icon.dart';
import 'package:project/feathers/home/widgets/home_listview.dart';
import 'package:project/feathers/home/widgets/row_home.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GenderIcon(),
            SizedBox(
              height: 30,
            ),
            Text(
              'Never think where,',
              style: TextStyle(color: blackColor, fontSize: 25),
            ),
            Text(
              'Tripbuddy leads u there',
              style: TextStyle(
                  color: blackColor, fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 37,
            ),
            RowHome(),
            SizedBox(
              height: 30,
            ),
            Text(
              'Recommendations',
              style: TextStyle(color: Color(0xff3F415A), fontSize: 25),
            ),
            SizedBox(
              height: 15,
            ),
            HomeListViewBuilder(),
          ],
        ),
      ),
    );
  }
}
