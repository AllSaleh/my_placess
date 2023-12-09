import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/const.dart';
import 'package:project/core/widgets/custom_loading.dart';
import 'package:project/feathers/admin/review/widgets/custom_row.dart';
import 'package:project/feathers/calender/cubit/calnder_cubit.dart';
import 'package:project/feathers/calender/data/calnder_model.dart';
import 'package:project/feathers/calender/widgets/custom_calnder.dart';
import 'package:project/feathers/calender/widgets/custom_list_tile_calnder.dart';

class CalenderBodyView extends StatelessWidget {
  const CalenderBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomRow(title: 'Calender'),
        ),
        const CustomCalender(),
        Expanded(
            child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          width: double.infinity,
          decoration: const BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Planning Schadule',
                style: TextStyle(
                    color: whiteColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: BlocBuilder<CalnderCubit, CalnderState>(
                  builder: (context, state) {
                    if (state is CalnderLoading ||
                        state is CalnderInitial ||
                        state is CalnderChangeDate) {
                      return const CustomLoading();
                    } else if (state is CalnderNoCalnder) {
                      return const Center(
                        child: Text('No Calnder in This Date!',
                            style: TextStyle(fontSize: 20, color: whiteColor)),
                      );
                    } else if (state is CalnderSucsess) {
                      return ListView.builder(
                        itemCount:
                            BlocProvider.of<CalnderCubit>(context).data.length,
                        itemBuilder: (BuildContext context, int index) {
                          return CustomListTileCalnder(
                            calnderModel: CalnderModel.fromJson(
                                BlocProvider.of<CalnderCubit>(context)
                                    .data[index]),
                          );
                        },
                      );
                    } else {
                      return InkWell(
                        onTap: () {
                          BlocProvider.of<CalnderCubit>(context).getCalender();
                        },
                        child: const Center(
                          child: Text('A problem Enter To Try Again',
                              style:
                                  TextStyle(fontSize: 20, color: whiteColor)),
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ))
      ],
    );
  }
}
