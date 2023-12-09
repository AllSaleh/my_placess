import 'package:flutter/material.dart';

import 'package:project/core/closapp/willpopscop.dart';

import 'package:project/feathers/welcom/welcom_body_view.dart';

class Welcom extends StatelessWidget {
  const Welcom({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        willPopScope(context);
        return Future.value(false);
      },
      child: const Scaffold(
        body: WelocmBodyView(),
      ),
    );
  }
}
