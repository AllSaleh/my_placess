import 'package:flutter/material.dart';
import 'package:project/feathers/categorise/view/categorise_body_view.dart';

class Categorise extends StatelessWidget {
  const Categorise({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CategorieBodyView(),
      ),
    );
  }
}
