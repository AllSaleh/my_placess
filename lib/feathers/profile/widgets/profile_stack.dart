import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/app_assets.dart';
import 'package:project/core/functions.dart';
import 'package:project/feathers/admin/cubit/profile_cubit.dart';
import 'package:project/feathers/profile/widgets/account_detils.dart';
import 'package:project/feathers/profile/widgets/account_image.dart';

class ProfileStack extends StatelessWidget {
  final bool haveImage;
  final String name, email;
  final VoidCallback onPressedEdite;

  const ProfileStack(
      {super.key,
      required this.name,
      required this.email,
      required this.onPressedEdite,
      this.haveImage = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 5,
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width * .9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffF6F5F5)),
          ),
          BlocBuilder<ProfileCubit, ProfileState>(
            builder: (context, state) {
              return AccountImage(
                image: gender() == 'mail' ? AppAssets.male : AppAssets.female,
              );
            },
          ),
          AccountDetils(name: name, email: email),
          Positioned(
              top: 9,
              right: 12,
              child: IconButton(
                onPressed: onPressedEdite,
                icon: const Icon(
                  Icons.edit,
                  size: 30,
                  color: Color(0xffB4B2B2),
                ),
              ))
        ],
      ),
    );
  }
}
