import 'package:flutter/material.dart';
import 'package:project/core/app_assets.dart';
import 'package:project/core/const.dart';
import 'package:project/core/functions.dart';

class GenderIcon extends StatelessWidget {
  const GenderIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        height: 65,
        width: 70,
        decoration:
            const BoxDecoration(color: continerColor, shape: BoxShape.circle),
        child: haveAcountFunctions()
            ? Image.asset(
                gender() == 'mail' ? AppAssets.male : AppAssets.female)
            : null,
      ),
    );
  }
}
