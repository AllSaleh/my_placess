import 'package:flutter/material.dart';
import 'package:project/core/const.dart';

class WillPopActionButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final Color color;
  const WillPopActionButton({
    super.key,
    required this.onPressed,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Container(
        height: 50,
        width: 80,
        decoration: BoxDecoration(
            border: Border.all(color: primaryColor),
            color: color,
            borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
