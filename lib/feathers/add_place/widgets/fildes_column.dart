import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/validation.dart';
import 'package:project/feathers/add_place/cubit/add_places_cubit.dart';
import 'package:project/feathers/auth/widgets/textformfiled.dart';

class FildesColumn extends StatelessWidget {
  const FildesColumn({super.key});

  @override
  Widget build(BuildContext context) {
    var cuibt = BlocProvider.of<AddPlacesCubit>(context);

    return Column(
      children: [
        CustomTextFiled(
            labe: 'Name',
            controller: cuibt.name,
            validator: (name) {
              return validation('name', name, 3, 50);
            }),
        CustomTextFiled(
            padding: 15,
            labe: 'Type',
            controller: cuibt.type,
            validator: (type) {
              return validation('type', type, 3, 20);
            }),
        CustomTextFiled(
            maxLines: 5,
            padding: 15,
            labe: 'Description',
            controller: cuibt.decoration,
            validator: (description) {
              return validation('Description', description, 10, 300);
            }),
        CustomTextFiled(
            maxLines: 2,
            padding: 15,
            labe: 'Google maps Link',
            controller: cuibt.link,
            validator: (link) {
              return validation('link', link, 6, 200);
            }),
        CustomTextFiled(
            padding: 15,
            labe: 'Phone .No',
            controller: cuibt.phone,
            validator: (phone) {
              return validation('phone', phone, 9, 15);
            }),
        CustomTextFiled(
            padding: 15,
            labe: 'Rating',
            controller: cuibt.rating,
            validator: (rating) {
              return validation('rate', rating, 1, 8);
            }),
      ],
    );
  }
}
