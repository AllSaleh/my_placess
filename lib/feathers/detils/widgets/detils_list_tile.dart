import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/feathers/detils/cubit/detils_cubit.dart';

class DetilsListTile extends StatelessWidget {
  const DetilsListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        BlocProvider.of<DetilsCubit>(context).data.name!,
        style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Text(BlocProvider.of<DetilsCubit>(context).data.type!,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
