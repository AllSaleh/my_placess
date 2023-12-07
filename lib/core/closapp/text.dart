import 'package:flutter/material.dart';

class WillPopText extends StatelessWidget {
  final String title;

  const WillPopText({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 20),
      textAlign: TextAlign.center,
    );
  }
}
