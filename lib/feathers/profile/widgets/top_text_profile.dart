import 'package:flutter/material.dart';

class TopTextProfile extends StatelessWidget {
  final String topText;
  const TopTextProfile({super.key, required this.topText});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        topText,
        style: const TextStyle(fontSize: 25),
      ),
    );
  }
}
