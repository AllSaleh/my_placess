import 'package:flutter/material.dart';

import 'package:project/feathers/admin/review/widgets/custom_row.dart';
import 'package:project/feathers/admin/review/widgets/review_request.dart';

class ReviewBodyView extends StatelessWidget {
  const ReviewBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
      child: Column(
        children: [
          const CustomRow(
            title: 'Review add\nplace request',
          ),
          const SizedBox(
            height: 36,
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return ReviewRequest(index: index);
              },
            ),
          ),
        ],
      ),
    );
  }
}
