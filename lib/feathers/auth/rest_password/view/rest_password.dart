import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/feathers/auth/rest_password/cubit/rest_password_cubit.dart';
import 'package:project/feathers/auth/rest_password/view/rest_body_view.dart';

class RestPassword extends StatelessWidget {
  const RestPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RestPasswordCubit(),
      child: const Scaffold(
        body: SafeArea(
          child: RestPasswordBodyView(),
        ),
      ),
    );
  }
}
