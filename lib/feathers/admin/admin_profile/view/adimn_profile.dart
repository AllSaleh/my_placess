import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/feathers/admin/admin_profile/view/admin_profile_body_view.dart';
import 'package:project/feathers/admin/cubit/profile_cubit.dart';

class AdimnProfile extends StatelessWidget {
  const AdimnProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileCubit()..getUserAccount(),
      child: const AdminProfileBodyView(),
    );
  }
}
