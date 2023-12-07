import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/feathers/add_place/cubit/add_places_cubit.dart';
import 'package:project/feathers/add_place/view/add_place_body_view.dart';

class AddPlace extends StatelessWidget {
  const AddPlace({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AddPlacesCubit(), child: const AddPlaceBodyView());
  }
}
