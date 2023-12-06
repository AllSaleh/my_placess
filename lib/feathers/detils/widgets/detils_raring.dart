import 'package:flutter/material.dart';
class DetilsRating extends StatelessWidget {
  const DetilsRating({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  '4.5',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            );
  }
}