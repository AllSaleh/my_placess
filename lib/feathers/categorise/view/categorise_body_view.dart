import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/cat_id.dart';
import 'package:project/core/const.dart';
import 'package:project/core/widgets/custom_loading.dart';
import 'package:project/feathers/categorise/cubit/categoriess_cubit.dart';
import 'package:project/feathers/categorise/data/catergorie_model.dart';
import 'package:project/feathers/categorise/widgets/custom_categorie_row.dart';
import 'package:project/feathers/categorise/widgets/listbuilder_item.dart';

class CategorieBodyView extends StatelessWidget {
  const CategorieBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriessCubit, CategoriessState>(
        builder: (context, state) {
      if (state is CategoriessLoading || state is CategoriessInitial) {
        return const CustomLoading();
      } else if (state is CategoriessNodata) {
        return const Center(
          child: Text(
            'No Data',
            style: TextStyle(fontSize: 20, color: primaryColor),
          ),
        );
      } else if (state is CategoriessSucsess) {
        return Container(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomCategorieRow(
                image: catImage(),
              ),
              Text(
                catId(),
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount:
                      BlocProvider.of<CategoriessCubit>(context).data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListBuilderCAtegorieItem(
                      categorieModel: CategorieModel.fromJson(
                          BlocProvider.of<CategoriessCubit>(context)
                              .data[index]),
                    );
                  },
                ),
              )
            ],
          ),
        );
      } else {
        return InkWell(
          onTap: () {
            BlocProvider.of<CategoriessCubit>(context).getPlacess();
          },
          child: const Center(
            child: Text('A problem Enter To Try Again',
                style: TextStyle(fontSize: 20, color: primaryColor)),
          ),
        );
      }
    });
  }
}
