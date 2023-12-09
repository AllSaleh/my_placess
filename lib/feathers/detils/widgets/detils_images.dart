import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project/core/app_assets.dart';
import 'package:project/feathers/detils/widgets/slider_continer.dart';

class DetilsImages extends StatelessWidget {
  const DetilsImages({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 2,
      child: CarouselSlider(
          items: [
            ...List.generate(
              3,
              (index) => const SliderContiner(image: AppAssets.authimag),
            )
          ],
          options: CarouselOptions(
            viewportFraction: 1,
            initialPage: 0,
            autoPlay: true,
            disableCenter: true,
            autoPlayInterval: const Duration(seconds: 2),
            autoPlayAnimationDuration: const Duration(milliseconds: 200),
            scrollDirection: Axis.horizontal,
          )),
    );
  }
}
