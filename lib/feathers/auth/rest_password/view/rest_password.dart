import 'package:flutter/material.dart';
import 'package:project/feathers/auth/rest_password/view/rest_body_view.dart';

class RestPassword extends StatelessWidget {
  const RestPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: RestPasswordBodyView(),
      ),
    );
  }
}
