import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:project/core/app_assets.dart';
import 'package:project/core/const.dart';
import 'package:project/core/routers/routers_names.dart';
import 'package:project/core/snackbar.dart';
import 'package:project/core/validation.dart';
import 'package:project/core/widgets/custom_loading.dart';
import 'package:project/feathers/auth/sign_up/cubit/sign_up_cubit.dart';
import 'package:project/feathers/auth/sign_up/widgets/gender_continer.dart';
import 'package:project/feathers/auth/widgets/auth_button.dart';
import 'package:project/feathers/auth/widgets/have_account.dart';
import 'package:project/feathers/auth/widgets/textformfiled.dart';

class SignUpChild extends StatelessWidget {
  const SignUpChild({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpNotEqualPass) {
          ScaffoldMessenger.of(context)
              .showSnackBar(customSnackBar(title: 'Password not Identical'));
        } else if (state is SignUpSucsess) {
          GoRouter.of(context).pushReplacementNamed(Routers.home);
        } else if (state is SignUpExiting) {
          ScaffoldMessenger.of(context)
              .showSnackBar(customSnackBar(title: 'This Email is Exsiting'));
        } else if (state is SignUpFailuer) {
          ScaffoldMessenger.of(context).showSnackBar(
              customSnackBar(title: 'Ther is A proplem Try Again'));
        }
      },
      builder: (context, state) {
        return CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Form(
                key: BlocProvider.of<SignUpCubit>(context).key,
                child: Column(
                  children: [
                    CustomTextFiled(
                        labe: 'Name',
                        controller: BlocProvider.of<SignUpCubit>(context).name,
                        validator: (name) {
                          return validation('name', name, 3, 20);
                        }),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFiled(
                        labe: 'Email',
                        controller: BlocProvider.of<SignUpCubit>(context).email,
                        validator: (email) {
                          return validation('email', email, 6, 30);
                        }),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFiled(
                        obs: true,
                        labe: 'Password',
                        controller:
                            BlocProvider.of<SignUpCubit>(context).password,
                        validator: (password) {
                          return validation('password', password, 6, 20);
                        }),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextFiled(
                        obs: true,
                        labe: 'Confirm Password',
                        controller:
                            BlocProvider.of<SignUpCubit>(context).password2,
                        validator: (password) {
                          return validation('password', password, 6, 20);
                        }),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        GenderContiner(
                          gender: BlocProvider.of<SignUpCubit>(context).gender,
                          index: 0,
                          onTap: () {
                            BlocProvider.of<SignUpCubit>(context).chanrGendr(0);
                          },
                          image: AppAssets.female,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        GenderContiner(
                          gender: BlocProvider.of<SignUpCubit>(context).gender,
                          index: 1,
                          onTap: () {
                            BlocProvider.of<SignUpCubit>(context).chanrGendr(1);
                          },
                          image: AppAssets.male,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    state is SignUpLoading
                        ? const CustomLoading()
                        : AuthButton(
                            onPressed: () {
                              BlocProvider.of<SignUpCubit>(context).signUp();
                            },
                            title: 'Sign Up',
                            color: whiteColor,
                            backgroundColor: primaryColor),
                    const SizedBox(
                      height: 10,
                    ),
                    HaveAccount(
                        title1: 'Already have an account?',
                        title2: 'Sign in',
                        onPressed: () {
                          GoRouter.of(context).pushNamed(Routers.signIn);
                        })
                  ],
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
