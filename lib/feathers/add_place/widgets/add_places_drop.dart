import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/feathers/add_place/cubit/add_places_cubit.dart';

class AddPlaceDrop extends StatelessWidget {
  const AddPlaceDrop({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .8,
        child: BlocBuilder<AddPlacesCubit, AddPlacesState>(
          builder: (context, state) {
            return DropdownButton(
                isExpanded: true,
                borderRadius: BorderRadius.circular(20),
                value: BlocProvider.of<AddPlacesCubit>(context).value,
                hint: const Text('Select Categorie'),
                items: const [
                  DropdownMenuItem(
                    value: 1,
                    child: Text('Natural Landscape'),
                  ),
                  DropdownMenuItem(
                    value: 2,
                    child: Text('Museums &Monuments'),
                  ),
                  DropdownMenuItem(
                    value: 3,
                    child: Text('Shopping'),
                  ),
                  DropdownMenuItem(
                    value: 4,
                    child: Text('Restaurants & cafes'),
                  ),
                  DropdownMenuItem(
                    value: 5,
                    child: Text('Current Events'),
                  ),
                ],
                onChanged: (val) {
                  BlocProvider.of<AddPlacesCubit>(context).onchanedrop(val!);
                });
          },
        ),
      ),
    );
  }
}
