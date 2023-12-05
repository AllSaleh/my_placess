import 'package:flutter/material.dart';
import 'package:project/core/const.dart';

customSnackBar({required String title}) {
  return SnackBar(
      content: Text(
    title,
    style: const TextStyle(color: whiteColor, fontSize: 18),
  ));
}
