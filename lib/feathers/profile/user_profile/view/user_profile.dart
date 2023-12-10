import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/feathers/admin/cubit/profile_cubit.dart';
import 'package:project/feathers/profile/user_profile/view/user_profile_body_view.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ProfileCubit()..getUserAccount(),
        child: const UserProfileBodyView());
  }
}
