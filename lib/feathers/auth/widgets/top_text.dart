import 'package:flutter/material.dart';
import 'package:project/core/const.dart';
class TopText extends StatelessWidget {
  final String title;
  const TopText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return  Positioned(
            top: 24,
            left: 22,
            child: Text(title
              ,
              style:const TextStyle(
                color: whiteColor,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ));
  }
}