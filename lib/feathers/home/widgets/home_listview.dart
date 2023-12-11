import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/feathers/home/cubit/home_cubit.dart';
import 'package:project/feathers/home/data/recomndation_model.dart';
import 'package:project/feathers/home/widgets/listbuilder_item.dart';

class HomeListViewBuilder extends StatelessWidget {
  const HomeListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .4,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: BlocProvider.of<HomeCubit>(context).data.length,
        itemBuilder: (BuildContext context, int index) {
          return ListBuilderHomeItem(
            recomndationModel: RecomndationModel.fromJson(
                BlocProvider.of<HomeCubit>(context).data[index]),
          );
        },
      ),
    );
  }
}
