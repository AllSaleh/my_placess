import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:project/core/const.dart';
import 'package:project/core/routers/routers_names.dart';
import 'package:project/core/snackbar.dart';
import 'package:project/core/validation.dart';
import 'package:project/core/widgets/custom_loading.dart';
import 'package:project/feathers/auth/forgetpassword/cubit/forget_password_cubit.dart';
import 'package:project/feathers/auth/widgets/auth_button.dart';
import 'package:project/feathers/auth/widgets/textformfiled.dart';

class FogretChild extends StatelessWidget {
  const FogretChild({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgetPasswordCubit, ForgetPasswordState>(
      listener: (context, state) {
        if (state is ForgetPasswordSucsess) {
          GoRouter.of(context).pushNamed(Routers.otp);
        } else if (state is ForgetPasswordNoAccount) {
          ScaffoldMessenger.of(context).showSnackBar(
              customSnackBar(title: 'This Eamil is Not have account'));
        } else if (state is ForgetPasswordFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
              customSnackBar(title: 'Ther is A proplem Try Again'));
        }
      },
      builder: (context, state) {
        return Form(
            key: BlocProvider.of<ForgetPasswordCubit>(context).key,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Enter the Email associated\n with your account',
                  style: TextStyle(
                      fontSize: 20,
                      color: blackColor,
                      fontWeight: FontWeight.bold),
                ),
                CustomTextFiled(
                  labe: 'Email',
                  controller:
                      BlocProvider.of<ForgetPasswordCubit>(context).email,
                  validator: (email) {
                    return validation('email', email,6,35);
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                state is ForgetPasswordLoading
                    ? const CustomLoading()
                    : Align(
                        alignment: Alignment.center,
                        child: AuthButton(
                            onPressed: () {
                              BlocProvider.of<ForgetPasswordCubit>(context)
                                  .next();
                            },
                            title: 'Next',
                            color: whiteColor,
                            backgroundColor: primaryColor),
                      )
              ],
            ));
      },
    );
  }
}
