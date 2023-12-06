import 'package:flutter/material.dart';
import 'package:project/feathers/calender/view/calender_body_view.dart';

class Calender extends StatelessWidget {
  const Calender({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CalenderBodyView(),
      ),
    );
  }
}
