import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project/core/const.dart';

class UberButton extends StatelessWidget {
  final VoidCallback onPressed;
  const UberButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xffF6F5F5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 80,
          vertical: 20,
        ),
      ),
      onPressed: onPressed,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Row(
          children: [
            Icon(
              FontAwesomeIcons.car,
              color: blackColor,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              'Uber',
              style: TextStyle(fontSize: 20, color: blackColor),
            )
          ],
        ),
      ),
    );
  }
}
