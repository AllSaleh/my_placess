import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project/core/routers/routers_names.dart';
import 'package:project/feathers/admin/review/data/rivew_model.dart';
import 'package:project/main.dart';

class ReviewRequest extends StatelessWidget {
  final int index;
  final ReviewModel reviewModel;
  const ReviewRequest(
      {super.key, required this.index, required this.reviewModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: () {
          sharedPref.setInt('riveId', reviewModel.id!);
          GoRouter.of(context).pushReplacementNamed(Routers.displayreview);
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 35),
          height: 90,
          width: MediaQuery.of(context).size.width * .3,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xffF6F5F5)),
          child: Text(
            'Request ${index + 1}',
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
