import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:project/core/const.dart';
import 'package:project/core/routers/routers_names.dart';
import 'package:project/feathers/admin/cubit/profile_cubit.dart';
import 'package:project/feathers/auth/widgets/auth_button.dart';
import 'package:project/feathers/admin/admin_profile/view/adimin_profile_child.dart';
import 'package:project/feathers/profile/widgets/profile_stack.dart';
import 'package:project/feathers/profile/widgets/secount_continer.dart';
import 'package:project/feathers/profile/widgets/top_text_profile.dart';
import 'package:project/main.dart';

class AdminProfileBodyView extends StatelessWidget {
  const AdminProfileBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
      child: Column(
        children: [
          const TopTextProfile(topText: 'Adimn profile'),
          const SizedBox(
            height: 53,
          ),
          BlocConsumer<ProfileCubit, ProfileState>(
            listener: (context, state) {
          
            },
            builder: (context, state) {
              return ProfileStack(
                haveImage: true,
                onPressedEdite: () {

                  BlocProvider.of<ProfileCubit>(context).uploadimage1();
                },
                name: sharedPref.getString('name').toString(),
                email: sharedPref.getString('email').toString(),
              );
            },
          ),
          const SizedBox(
            height: 28,
          ),
          const SecountContinerProflie(
            child: AdimnProfileChild(),
          ),
          const SizedBox(
            height: 60,
          ),
          AuthButton(
              horizontal: 80,
              onPressed: () {
                sharedPref.clear();
                GoRouter.of(context).pushReplacementNamed(Routers.welocm);
              },
              title: 'Log Out',
              color: whiteColor,
              backgroundColor: primaryColor)
        ],
      ),
    );
  }
}
