import 'package:flutter/material.dart';

class CustomContinerDetils extends StatelessWidget {
  final Color color;
  final VoidCallback onTap;
  final IconData icon;
  const CustomContinerDetils(
      {super.key,
      required this.onTap,
      required this.icon,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 52,
        width: 52,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        child: Icon(icon),
      ),
    );
  }
}
