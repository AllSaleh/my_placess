import 'package:flutter/material.dart';

class CustomDriver extends StatelessWidget {
  const CustomDriver({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .8,
      child: const Divider(
        thickness: 2,
      ),
    );
  }
}
