import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:project/core/const.dart';
import 'package:project/core/routers/routers_names.dart';
import 'package:project/core/snackbar.dart';
import 'package:project/core/widgets/custom_loading.dart';
import 'package:project/feathers/admin/review/cubit/accept_approving_cubit.dart';
import 'package:project/feathers/admin/review/cubit/rivew_cubit.dart';

import 'package:project/feathers/auth/widgets/auth_button.dart';

class CustomBottomBarAdmin extends StatelessWidget {
  const CustomBottomBarAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AcceptApprovingCubit, AcceptApprovingState>(
      listener: (context, state) {
        if (state is AcceptApprovingSucess) {
          BlocProvider.of<RivewCubit>(context).getRivews();
          ScaffoldMessenger.of(context)
              .showSnackBar(customSnackBar(title: 'This places Approver'));
          GoRouter.of(context).pushReplacementNamed(Routers.review);
        } else if (state is AcceptApprovingFailure) {
          ScaffoldMessenger.of(context)
              .showSnackBar(customSnackBar(title: 'A problem Try Again'));
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              state is AcceptApprovingLoading
                  ? const CustomLoading()
                  : AuthButton(
                      horizontal: 20,
                      onPressed: () {
                        BlocProvider.of<AcceptApprovingCubit>(context)
                            .approvePlace();
                      },
                      title: 'Approve',
                      color: whiteColor,
                      backgroundColor: primaryColor),
              AuthButton(
                  horizontal: 25,
                  onPressed: () {

                    GoRouter.of(context).pushReplacementNamed(Routers.review);
                  },
                  title: 'Reject',
                  color: whiteColor,
                  backgroundColor: primaryColor),
            ],
          ),
        );
      },
    );
  }
}
