import 'package:flutter/material.dart';
import 'package:project/core/closapp/willpopscop_widget.dart';

willPopScope(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return const WillpopscopWidget();
    },
  );
}
