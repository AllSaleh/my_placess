import 'package:flutter/material.dart';

class SliderContiner extends StatelessWidget {
  final String image;
  const SliderContiner({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: NetworkImage(
              image,
            ),
            fit: BoxFit.fill,
          )),
    );
  }
}
