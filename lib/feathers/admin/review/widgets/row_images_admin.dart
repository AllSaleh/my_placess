import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/snackbar.dart';
import 'package:project/feathers/admin/review/cubit/approving_cubit.dart';
import 'package:project/feathers/admin/review/widgets/image_continer_adimn.dart';

class CustomAdmindRow extends StatelessWidget {
  const CustomAdmindRow({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ApprovingCubit, ApprovingState>(
      listener: (context, state) {
        if (state is ApprovingFailure3) {
          ScaffoldMessenger.of(context)
              .showSnackBar(customSnackBar(title: 'Error Editng Image'));
        }
      },
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ImageContinerAdmin(
              onTap: () {
                BlocProvider.of<ApprovingCubit>(context).uploadimage();
              },
            ),
            ImageContinerAdmin(
              onTap: () {
                BlocProvider.of<ApprovingCubit>(context).uploadimage2();
              },
            ),
            ImageContinerAdmin(
              onTap: () {
                BlocProvider.of<ApprovingCubit>(context).uploadimage3();
              },
            )
          ],
        ),
      ),
    );
  }
}
