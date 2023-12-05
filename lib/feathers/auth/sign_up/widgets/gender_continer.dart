import 'package:flutter/material.dart';
import 'package:project/core/const.dart';

class GenderContiner extends StatelessWidget {
  final int gender;
  final int index;

  final String image;
  final VoidCallback onTap;
  const GenderContiner(
      {super.key,
      required this.image,
      required this.onTap,
      required this.gender,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            border: gender == index ? Border.all(color: primaryColor) : null,
            color: const Color(0xffF6F5F5),
            borderRadius: BorderRadius.circular(46)),
        child: Center(
          child: Image.asset(
            image,
          ),
        ),
      ),
    );
  }
}
