import 'package:flutter/material.dart';

class SecountContinerProflie extends StatelessWidget {
  final Widget child;
  const SecountContinerProflie({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xffF6F5F5),
      ),
      child: child,
    );
  }
}
