import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:project/core/const.dart';
import 'package:project/core/functions.dart';
import 'package:project/core/routers/routers_names.dart';
import 'package:project/core/snackbar.dart';
import 'package:project/core/validation.dart';
import 'package:project/core/widgets/custom_loading.dart';
import 'package:project/feathers/auth/rest_password/cubit/rest_password_cubit.dart';
import 'package:project/feathers/auth/widgets/auth_button.dart';
import 'package:project/feathers/auth/widgets/textformfiled.dart';

class RestChild extends StatelessWidget {
  const RestChild({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        key: BlocProvider.of<RestPasswordCubit>(context).key,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Insert your new password',
              style: TextStyle(fontSize: 20),
            ),
            CustomTextFiled(
                padding: 10,
                validator: (password) {
                  return validation('password', password, 6, 20);
                },
                labe: 'New Password',
                controller:
                    BlocProvider.of<RestPasswordCubit>(context).password1),
            CustomTextFiled(
              padding: 10,
              validator: (confirmpassword) {
                return validation('confirmpassword', confirmpassword, 6, 20);
              },
              labe: 'Confirm Password',
              controller: BlocProvider.of<RestPasswordCubit>(context).password2,
            ),
            const SizedBox(
              height: 51,
            ),
            BlocConsumer<RestPasswordCubit, RestPasswordState>(
              listener: (context, state) {
                if (state is RestPasswordNotEqual) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      customSnackBar(title: 'Password Not Match'));
                } else if (state is RestPasswordSucsess) {
                  if (isChange() == true) {
                    GoRouter.of(context).pushReplacementNamed(Routers.home);
                  } else {
                    GoRouter.of(context).pushReplacementNamed(Routers.signIn);
                  }
                } else if (state is RestPasswordFailure) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      customSnackBar(title: 'Ther is A proplem Try Again'));
                } else if (state is RestPasswordFaildOtp) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      customSnackBar(title: 'Faild Otp Try Again'));
                }
              },
              builder: (context, state) {
                if (state is RestPasswordLoading) {
                  return const CustomLoading();
                } else {
                  return Align(
                    alignment: Alignment.center,
                    child: AuthButton(
                        onPressed: () {
                          BlocProvider.of<RestPasswordCubit>(context)
                              .restPassword();
                        },
                        title: 'Done',
                        color: whiteColor,
                        backgroundColor: primaryColor),
                  );
                }
              },
            ),
            const SizedBox(
              height: 60,
            ),
          ],
        ));
  }
}
