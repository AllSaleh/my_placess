import 'package:flutter/material.dart';

class ListTileProfile extends StatelessWidget {
  final String image, title;
  final VoidCallback onTap;
  const ListTileProfile(
      {super.key,
      required this.image,
      required this.title,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        leading: Image.asset(image),
        title: Text(
          title,
          style: const TextStyle(fontSize: 19),
        ),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
