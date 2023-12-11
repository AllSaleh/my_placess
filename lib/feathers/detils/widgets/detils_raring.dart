import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/feathers/detils/cubit/detils_cubit.dart';

class DetilsRating extends StatelessWidget {
  const DetilsRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          BlocProvider.of<DetilsCubit>(context).data.rate!.toString(),
          style: const TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}
