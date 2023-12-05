import 'package:flutter/material.dart';
import 'package:project/core/const.dart';


class FaviorteItem extends StatelessWidget {
  const FaviorteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Container(
        height: 100,
        width: MediaQuery.of(context).size.width * .3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xffF6F5F5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              'Jeddah Waterfront',
              style: TextStyle(fontSize: 18),
            ),
            IconButton(
                onPressed: () {},
                icon:  const Icon(
               Icons.favorite_border_outlined,
                  size: 30,
                  color: primaryColor,
                ))
          ],
        ),
      ),
    );
  }
}
