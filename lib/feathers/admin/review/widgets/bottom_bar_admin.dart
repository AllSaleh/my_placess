import 'package:flutter/material.dart';
import 'package:project/core/const.dart';
import 'package:project/feathers/auth/widgets/auth_button.dart';

class CustomBottomBarAdmin extends StatelessWidget {
  const CustomBottomBarAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          AuthButton(
              horizontal: 20,
              onPressed: () {},
              title: 'Approve',
              color: whiteColor,
              backgroundColor: primaryColor),
          AuthButton(
              horizontal: 25,
              onPressed: () {},
              title: 'Reject',
              color: whiteColor,
              backgroundColor: primaryColor),
        ],
      ),
    );
  }
}
