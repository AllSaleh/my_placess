import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/feathers/faviorte/cubit/faviorte_cubit.dart';
import 'package:project/feathers/faviorte/view/favioret_body_view.dart';

class Faviorte extends StatelessWidget {
  const Faviorte({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => FaviorteCubit()..getdata(),
        child: const FaviorteBodyView());
  }
}
