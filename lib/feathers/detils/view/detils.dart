import 'package:flutter/material.dart';
import 'package:project/feathers/detils/view/detils_body_view.dart';

class Detils extends StatelessWidget {
  const Detils({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: DetilsBodyView(),
      ),
    );
  }
}
