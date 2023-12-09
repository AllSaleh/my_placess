import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project/core/const.dart';

import 'package:project/feathers/calender/data/calnder_model.dart';

class CustomListTileCalnder extends StatelessWidget {
  final CalnderModel calnderModel;
  const CustomListTileCalnder({super.key, required this.calnderModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: whiteColor,
          radius: 10,
        ),
        title: Text(calnderModel.name!,
            style: const TextStyle(color: whiteColor, fontSize: 23)),
        subtitle: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
                DateFormat.yMMMMEEEEd()
                    .format(DateTime.parse(calnderModel.date!)),
                style: const TextStyle(color: whiteColor, fontSize: 18))),
      ),
    );
  }
}
