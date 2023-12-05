import 'package:flutter/material.dart';
import 'package:project/core/const.dart';

class HaveAccount extends StatelessWidget {
  final String title1;
  final String title2;
  final VoidCallback onPressed;

  const HaveAccount(
      {super.key,
      required this.title1,
      required this.title2,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title1

  
        ,
        textAlign: TextAlign.end,
      ),
      subtitle: Align(
        alignment: Alignment.bottomRight,
        child: TextButton(
            onPressed: onPressed,
            child: Text(
              title2,
              style: const TextStyle(
                  color: blackColor, fontWeight: FontWeight.bold, fontSize: 20),
              textAlign: TextAlign.end,
            )),
      ),
    );
  }
}
