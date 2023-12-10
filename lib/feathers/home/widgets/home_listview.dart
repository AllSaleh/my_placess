import 'package:flutter/material.dart';
import 'package:project/feathers/home/widgets/listbuilder_item.dart';

class HomeListViewBuilder extends StatelessWidget {
  const HomeListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .4,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return const ListBuilderHomeItem();
        },
      ),
    );
  }
}
