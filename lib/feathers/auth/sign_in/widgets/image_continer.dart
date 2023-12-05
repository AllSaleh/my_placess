import 'package:flutter/material.dart';
import 'package:project/core/app_assets.dart';

class ImageContiner extends StatelessWidget {
  const ImageContiner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 2,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                AppAssets.welcom,
              ),
              fit: BoxFit.fill)),
    );
  }
}
