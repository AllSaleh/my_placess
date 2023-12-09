import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/const.dart';
import 'package:project/core/widgets/custom_loading.dart';
import 'package:project/feathers/faviorte/cubit/faviorte_cubit.dart';
import 'package:project/feathers/faviorte/data/faviorte_model/faviorte_model.dart';
import 'package:project/feathers/faviorte/view/faviorte_item.dart';

class FaviorteBodyView extends StatelessWidget {
  const FaviorteBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FaviorteCubit, FaviorteState>(
      builder: (context, state) {
        if (state is FaviorteLoading || state is FaviorteInitial) {
          return const CustomLoading();
        } else if (state is FaviorteNodata) {
          return const Center(
            child: Text(
              'No Faviorte',
              style: TextStyle(fontSize: 20, color: primaryColor),
            ),
          );
        } else if (state is FaviorteSucsess) {
          return ListView.builder(
            padding: const EdgeInsets.only(top: 30, left: 21, right: 21),
            itemCount: BlocProvider.of<FaviorteCubit>(context).data.length,
            itemBuilder: (BuildContext context, int index) {
              return FaviorteItem(
                faviorteModel: FaviorteModel.fromJson(
                    BlocProvider.of<FaviorteCubit>(context).data[index]),
              );
            },
          );
        } else {
          return InkWell(
            onTap: () {
              BlocProvider.of<FaviorteCubit>(context).getdata();
            },
            child: const Center(
              child: Text('A problem Enter To Try Again',
                  style: TextStyle(fontSize: 20, color: primaryColor)),
            ),
          );
        }
      },
    );
  }
}
