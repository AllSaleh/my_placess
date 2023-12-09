import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/feathers/admin/review/cubit/rivew_cubit.dart';
import 'package:project/feathers/admin/review/view/review_body_view.dart';

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RivewCubit()..getRivews(),
      child: const Scaffold(
        body: SafeArea(
          child: ReviewBodyView(),
        ),
      ),
    );
  }
}
