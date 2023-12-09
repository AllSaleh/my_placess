import 'package:flutter/material.dart';

class ImageContinerAdmin extends StatelessWidget {
  final VoidCallback onTap;
  const ImageContinerAdmin({
    super.key, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          InkWell(
            onTap: onTap,
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  color: const Color(0xffF6F5F5),
                  borderRadius: BorderRadius.circular(20)),
              child: const Icon(
                Icons.image,
                size: 50,
              ),
            ),
          ),
          const Positioned(
              bottom: -10,
              child: Icon(
                Icons.edit,
                size: 30,
                color: Color(0xffB4B2B2),
              ))
        ],
      ),
    );
  }
}
