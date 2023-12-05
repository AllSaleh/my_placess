import 'package:flutter/material.dart';
import 'package:project/feathers/admin/review/view/display_body_view.dart';
import 'package:project/feathers/admin/review/widgets/bottom_bar_admin.dart';

class DisplayReview extends StatelessWidget {
  const DisplayReview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomBottomBarAdmin(),
      body: SafeArea(
        child: DisplayBoddyView(),
      ),
    );
  }
}
