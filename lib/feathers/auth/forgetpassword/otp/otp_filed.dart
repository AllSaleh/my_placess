import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:project/core/const.dart';

class OtpFiled extends StatelessWidget {
  final Function(String) onSubmit;
  const OtpFiled({super.key, required this.onSubmit});

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      autoFocus: true,
      cursorColor: blackColor.withOpacity(.3),
      borderWidth: 2,
      fieldWidth: 60,
      borderRadius: BorderRadius.circular(20),
      numberOfFields: 4,
      borderColor: primaryColor,
      enabledBorderColor: blackColor.withOpacity(.3),
      focusedBorderColor: blackColor.withOpacity(.3),

      showFieldAsBox: true,

      onSubmit: onSubmit, // end onSubmit
    );
  }
}
