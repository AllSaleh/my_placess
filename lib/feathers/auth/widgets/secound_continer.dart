import 'package:flutter/material.dart';

import 'package:project/core/const.dart';

class SecoundContiner extends StatelessWidget {
  final Widget child;

  const SecoundContiner({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * .3,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: whiteColor, borderRadius: BorderRadius.circular(40)),
        child: child,
      ),
    );
  }
}
