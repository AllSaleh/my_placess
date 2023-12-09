import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:project/core/app_assets.dart';
import 'package:project/core/const.dart';
import 'package:project/core/routers/routers_names.dart';
import 'package:project/core/snackbar.dart';
import 'package:project/feathers/auth/widgets/auth_button.dart';
import 'package:project/feathers/welcom/cubit/welcom_cubit.dart';

class WelocmBodyView extends StatelessWidget {
  const WelocmBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<WelcomCubit, WelcomState>(
      listener: (context, state) {
        if (state is WelcomServessDenalbe) {
          ScaffoldMessenger.of(context)
              .showSnackBar(customSnackBar(title: 'Please Run Location'));
        }
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            AppAssets.welcom,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          Positioned(
              top: MediaQuery.of(context).size.height / 4,
              child: Image.asset(
                AppAssets.logo,
                height: 150,
              )),
          Positioned(
              bottom: MediaQuery.of(context).size.height / 10,
              child: Column(
                children: [
                  AuthButton(
                    onPressed: () {
                      //
                      GoRouter.of(context).pushNamed(Routers.signIn);
                    },
                    title: 'Sign in',
                    color: primaryColor,
                    backgroundColor: whiteColor,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AuthButton(
                    onPressed: () {
                      GoRouter.of(context).pushNamed(Routers.signUp);
                    },
                    title: 'Sign up',
                    color: whiteColor,
                    backgroundColor: primaryColor,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  TextButton(
                      onPressed: () {
                        GoRouter.of(context).pushNamed(Routers.home);
                      },
                      child: const Text(
                        'Enter As Guest',
                        style: TextStyle(
                            color: whiteColor,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              )),
        ],
      ),
    );
  }
}
