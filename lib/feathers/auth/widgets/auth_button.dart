import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final Color backgroundColor;
  final Color color;
  final VoidCallback onPressed;
  final double horizontal;
  final String title;
  const AuthButton(
      {super.key,
      required this.onPressed,
      required this.title,
      required this.color,
      required this.backgroundColor,
      this.horizontal = 110});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          backgroundColor: backgroundColor,
          padding: EdgeInsets.symmetric(
            horizontal: horizontal,
            vertical: 15,
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(
            color: color,
            fontSize: 25,
          ),
        ));
  }
}
