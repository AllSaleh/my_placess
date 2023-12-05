import 'package:flutter/material.dart';
import 'package:project/core/const.dart';

class HomeListTile extends StatelessWidget {
  final String title;
  final String subtitle;

  const HomeListTile({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(
              color: whiteColor, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(
              color: whiteColor, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
