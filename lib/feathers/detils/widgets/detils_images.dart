import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/feathers/detils/cubit/detils_cubit.dart';
import 'package:project/feathers/detils/widgets/slider_continer.dart';

class DetilsImages extends StatelessWidget {
  const DetilsImages({super.key});

  @override
  Widget build(BuildContext context) {
    var cuibt = BlocProvider.of<DetilsCubit>(context).data;
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 2,
      child: CarouselSlider(
          items: [
            ...List.generate(
              cuibt.images!.length,
              (index) =>
                  SliderContiner(image: cuibt.images![index].url.toString()),
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
