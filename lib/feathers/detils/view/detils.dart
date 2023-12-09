import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/feathers/detils/cubit/approment/approment_cubit.dart';
import 'package:project/feathers/detils/cubit/detils_cubit.dart';
import 'package:project/feathers/detils/view/detils_body_view.dart';

class Detils extends StatelessWidget {
  const Detils({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DetilsCubit()..getDetils(),
        ),
        BlocProvider(
          create: (context) => AppromentCubit(),
        ),
      ],
      child: const Scaffold(
        body: SafeArea(
          child: DetilsBodyView(),
        ),
      ),
    );
  }
}
