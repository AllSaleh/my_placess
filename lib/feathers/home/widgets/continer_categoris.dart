import 'package:flutter/material.dart';
import 'package:project/core/const.dart';

class ContinerCategorise extends StatelessWidget {
  final VoidCallback onTap;
  final String image;
  final String title;
  const ContinerCategorise(
      {super.key,
      required this.image,
      required this.onTap,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            height: 73,
            width: 73,
            decoration: BoxDecoration(
                color: continerColor.withOpacity(.4),
                borderRadius: BorderRadius.circular(30)),
            child: Image.asset(image),
          ),
        ),
        SizedBox(
            width: 85,
            child: Text(
              title,
              textAlign: TextAlign.center,
              maxLines: 2,
              style: const TextStyle(fontWeight: FontWeight.bold),
             
            ))
      ],
    );
  }
}
