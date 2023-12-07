import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
// import 'package:go_router/go_router.dart';
import 'package:project/core/const.dart';
import 'package:project/core/routers/routers_names.dart';
import 'package:project/core/snackbar.dart';
import 'package:project/core/widgets/custom_loading.dart';
import 'package:project/feathers/auth/forgetpassword/cubit/forget_password_cubit.dart';
// import 'package:project/core/routers/routers_names.dart';

import 'package:project/feathers/auth/forgetpassword/otp/otp_filed.dart';
import 'package:project/feathers/auth/widgets/auth_button.dart';

class OtpChild extends StatelessWidget {
  const OtpChild({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const SizedBox(
        height: 20,
      ),
      const Text(
        'Enter Otp',
        style: TextStyle(fontSize: 20),
      ),
      const SizedBox(
        height: 20,
      ),
      OtpFiled(
        onSubmit: (code) {
          BlocProvider.of<ForgetPasswordCubit>(context).code = code;
        },
      ),
      const SizedBox(
        height: 80,
      ),
      BlocConsumer<ForgetPasswordCubit, ForgetPasswordState>(
        listener: (context, state) {
          if (state is ForgetPasswordSucsess) {
            print('object');
            GoRouter.of(context).pushNamed(Routers.restpassword);
          } else if (state is ForgetPasswordFialdOtp) {
            ScaffoldMessenger.of(context).showSnackBar(
              customSnackBar(title: 'Incorrect Otp'),
            );
          } else if (state is ForgetPasswordFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
                customSnackBar(title: 'Ther is A proplem Try Again'));
          }
        },
        builder: (context, state) {
          if (state is ForgetPasswordLoading) {
            return const CustomLoading();
          } else {
            return Align(
              alignment: Alignment.center,
              child: AuthButton(
                  onPressed: () {
                    if (BlocProvider.of<ForgetPasswordCubit>(context).code ==
                        null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        customSnackBar(title: 'Incorrect Otp'),
                      );
                    } else {
                      BlocProvider.of<ForgetPasswordCubit>(context).cheekOtp();
                    }
                  },
                  title: 'Confirem',
                  color: whiteColor,
                  backgroundColor: primaryColor),
            );
          }
        },
      )
    ]);
  }
}
