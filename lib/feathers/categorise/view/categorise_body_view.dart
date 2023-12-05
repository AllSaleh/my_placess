import 'package:flutter/material.dart';
import 'package:project/core/app_assets.dart';
import 'package:project/feathers/categorise/widgets/custom_categorie_row.dart';
import 'package:project/feathers/categorise/widgets/listbuilder_item.dart';

class CategorieBodyView extends StatelessWidget {
  const CategorieBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 32),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomCategorieRow(
            image: AppAssets.natural,
          ),
          const Text(
            'Natural Landscape',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return const ListBuilderCAtegorieItem();
              },
            ),
          )
        ],
      ),
    );
  }
}
