import 'package:flutter/material.dart';
import 'package:project/feathers/admin/review/view/review_body_view.dart';

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: ReviewBodyView(),
      ),
    );
  }
}
