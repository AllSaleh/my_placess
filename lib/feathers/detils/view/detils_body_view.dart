import 'package:flutter/material.dart';
import 'package:project/feathers/detils/widgets/detils_list_tile.dart';

import 'package:project/feathers/detils/widgets/detils_row_events.dart';
import 'package:project/feathers/detils/widgets/detils_stack.dart';
import 'package:project/feathers/detils/widgets/information_column.dart';

class DetilsBodyView extends StatelessWidget {
  const DetilsBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetilsStack(),
          SizedBox(
            height: 17,
          ),
          DetilsListTile(),
          SizedBox(
            height: 23,
          ),
          DetilsRowEvents(),
          SizedBox(
            height: 33,
          ),
          InformationColumn()
        ],
      ),
    );
  }
}
