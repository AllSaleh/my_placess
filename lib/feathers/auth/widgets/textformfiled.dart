import 'package:flutter/material.dart';
import 'package:project/core/const.dart';

class CustomTextFiled extends StatelessWidget {
  final String labe;
  final double padding;
  final String? Function(String?) validator;
  final TextEditingController controller;
  const CustomTextFiled(
      {super.key,
      required this.labe,
      required this.controller,
      required this.validator,
      this.padding = 0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: padding),
      child: TextFormField(
        validator: validator,
        controller: controller,
        cursorColor: primaryColor,
        decoration: InputDecoration(
            labelText: labe,
            labelStyle: const TextStyle(color: primaryColor),
            enabledBorder: underLineBorder(),
            errorBorder: underLineBorder(),
            focusedBorder: underLineBorder(),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 30, vertical: 10)),
      ),
    );
  }

  UnderlineInputBorder underLineBorder() {
    return const UnderlineInputBorder(
        borderSide: BorderSide(color: blackColor));
  }
}
