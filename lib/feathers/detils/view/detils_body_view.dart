import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/const.dart';
import 'package:project/core/widgets/custom_loading.dart';
import 'package:project/feathers/detils/cubit/detils_cubit.dart';
import 'package:project/feathers/detils/widgets/detils_list_tile.dart';

import 'package:project/feathers/detils/widgets/detils_row_events.dart';
import 'package:project/feathers/detils/widgets/detils_stack.dart';
import 'package:project/feathers/detils/widgets/information_column.dart';

class DetilsBodyView extends StatelessWidget {
  const DetilsBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    
    return BlocBuilder<DetilsCubit, DetilsState>(
      builder: (context, state) {
        if(state is DetilsLoading || state is DetilsInitial){
          return const CustomLoading();
        }
        else if(state is DetilsSucsess){
          return const Padding(
          padding: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           
              DetilsStack(),
              SizedBox(
                height: 17,
              ),
              DetilsListTile(),
              SizedBox(
                height: 23,
              ),
              DetilsRowEvents(),
              SizedBox(
                height: 33,
              ),
              InformationColumn()
            ],
          ),
        );

        }
        else{
          return InkWell(
          onTap: () {
            BlocProvider.of<DetilsCubit>(context).getDetils();
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
