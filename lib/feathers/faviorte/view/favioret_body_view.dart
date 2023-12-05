import 'package:flutter/material.dart';
import 'package:project/feathers/faviorte/view/faviorte_item.dart';

class FaviorteBodyView extends StatelessWidget {
  const FaviorteBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 30, left: 21, right: 21),
      itemCount: 50,
      itemBuilder: (BuildContext context, int index) {
        return const FaviorteItem();
      },
    );
  }
}
