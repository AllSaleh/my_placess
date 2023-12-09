import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/const.dart';
import 'package:project/core/widgets/custom_loading.dart';
import 'package:project/feathers/admin/review/cubit/rivew_cubit.dart';
import 'package:project/feathers/admin/review/data/rivew_model.dart';

import 'package:project/feathers/admin/review/widgets/custom_row.dart';
import 'package:project/feathers/admin/review/widgets/review_request.dart';

class ReviewBodyView extends StatelessWidget {
  const ReviewBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
      child: Column(
        children: [
          const CustomRow(
            title: 'Review add\nplace request',
          ),
          const SizedBox(
            height: 36,
          ),
          BlocBuilder<RivewCubit, RivewState>(
            builder: (context, state) {
              if (state is RivewLoading || state is RivewInitial) {
                return const CustomLoading();
              } else if (state is RivewNoData) {
                return const Center(
                  child: Center(
                    child: Text(
                      'No Requests',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                );
              } else if (state is RivewSucsess) {
                return Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: BlocProvider.of<RivewCubit>(context).data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ReviewRequest(
                          reviewModel: ReviewModel.fromJson(
                              BlocProvider.of<RivewCubit>(context).data[index]),
                          index: index);
                    },
                  ),
                );
              } else {
                return InkWell(
                  onTap: () {
                    BlocProvider.of<RivewCubit>(context).getRivews();
                  },
                  child: const Center(
                    child: Text('A problem Enter To Try Again',
                        style: TextStyle(fontSize: 20, color: primaryColor)),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
