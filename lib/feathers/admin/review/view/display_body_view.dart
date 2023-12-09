import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/const.dart';
import 'package:project/core/widgets/custom_loading.dart';
import 'package:project/feathers/admin/review/cubit/approving_cubit.dart';
import 'package:project/feathers/admin/review/widgets/custom_fildes.dart';
import 'package:project/feathers/admin/review/widgets/custom_row.dart';
import 'package:project/feathers/admin/review/widgets/dropmenu_button.dart';

import 'package:project/feathers/admin/review/widgets/row_images_admin.dart';

class DisplayBoddyView extends StatelessWidget {
  const DisplayBoddyView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApprovingCubit, ApprovingState>(
      builder: (context, state) {
        if (state is ApprovingLoading || state is ApprovingLoading2) {
          return const CustomLoading();
        } else if (state is ApprovingSucess) {
          return Container(
            padding:
                const EdgeInsets.only(top: 58, bottom: 24, left: 20, right: 20),
            child: const SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomRow(title: 'Approve'),
                  SizedBox(
                    height: 58,
                  ),
                  CustomFaildsApprov(),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Category',
                      style: TextStyle(color: primaryColor, fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomDropMenuButton(),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Insert Photo',
                      style: TextStyle(color: primaryColor, fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomAdmindRow()
                ],
              ),
            ),
          );
        } else {
          return InkWell(
            onTap: () {
              BlocProvider.of<ApprovingCubit>(context).getPlace();
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
