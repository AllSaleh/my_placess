import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:project/feathers/admin/cubit/profile_cubit.dart';

class AccountImage extends StatelessWidget {
  final String image;
  // final bool haveImage;

  const AccountImage({
    super.key,
    required this.image,
    // this.haveImage = false,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return Positioned(
            top: -50,
            left: MediaQuery.of(context).size.width * .3,
            child: CircleAvatar(
              backgroundImage:
                  BlocProvider.of<ProfileCubit>(context).data.image == null
                      ? null
                      : NetworkImage(
                          BlocProvider.of<ProfileCubit>(context).data.image!),
              backgroundColor: const Color(0xC4C4C4B8),
              radius: 55,
              child: BlocProvider.of<ProfileCubit>(context).data.image == ''
                  ? Image.asset(
                      image,
                      height: 70,
                      fit: BoxFit.contain,
                    )
                  : null,
            ));
      },
    );
  }
}
