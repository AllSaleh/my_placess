import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/feathers/calender/cubit/calnder_cubit.dart';
import 'package:project/feathers/calender/view/calender_body_view.dart';

class Calender extends StatelessWidget {
  const Calender({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CalnderCubit()..getCalender(),
      child: const Scaffold(
        body: SafeArea(
          child: CalenderBodyView(),
        ),
      ),
    );
  }
}
