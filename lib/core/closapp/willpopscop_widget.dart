import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project/core/closapp/text.dart';
import 'package:project/core/closapp/willpop_actiom_button.dart';
import 'package:project/core/const.dart';

class WillpopscopWidget extends StatelessWidget {
  const WillpopscopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height / 6,
        width: MediaQuery.of(context).size.width * .7,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const WillPopText(
                title: 'Alert',
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Do You Want close App?',
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  WillPopActionButton(
                    onPressed: () {
                      GoRouter.of(context).pop();
                    },
                    title: 'No',
                    color: whiteColor,
                  ),
                  WillPopActionButton(
                    onPressed: () {
                      exit(0);
                    },
                    title: 'Yes',
                    color: primaryColor,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
