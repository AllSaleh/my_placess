import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomCategorieRow extends StatelessWidget {
  final String image;
  const CustomCategorieRow({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            GoRouter.of(context).pop();
          },
          child: const Icon(Icons.arrow_back),
        ),
        Image.asset(image)
      ],
    );
  }
}
