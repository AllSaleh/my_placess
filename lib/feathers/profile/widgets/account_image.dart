import 'package:flutter/material.dart';
import 'package:project/core/app_assets.dart';

class AccountImage extends StatelessWidget {
  final String image;
  final bool haveImage;

  const AccountImage({
    super.key,
    required this.image,
    this.haveImage = false,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: -50,
        left: MediaQuery.of(context).size.width * .3,
        child: CircleAvatar(
          backgroundImage: haveImage ? const AssetImage(AppAssets.test2) : null,
          backgroundColor: const Color(0xC4C4C4B8),
          radius: 55,
          child: haveImage
              ? null
              : Image.asset(
                  image,
                  height: 70,
                  fit: BoxFit.contain,
                ),
        ));
  }
}
