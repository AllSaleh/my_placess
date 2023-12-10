import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/feathers/admin/cubit/profile_cubit.dart';

import 'package:project/feathers/home/view/home_body_view.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ProfileCubit()..getUserAccount(),
        child: const HomeBodyView());
  }
}
