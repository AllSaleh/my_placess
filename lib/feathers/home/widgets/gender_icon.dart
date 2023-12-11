import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/const.dart';
import 'package:project/core/functions.dart';
import 'package:project/core/widgets/custom_loading.dart';
import 'package:project/feathers/admin/cubit/profile_cubit.dart';

class GenderIcon extends StatelessWidget {
  final String image;
  const GenderIcon({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return haveAcountFunctions()
        ? BlocBuilder<ProfileCubit, ProfileState>(
            builder: (context, state) {
              if (state is ProfileLoading || state is ProfileInitial) {
                return const Align(
                    alignment: Alignment.centerRight, child: CustomLoading());
              } else if (state is ProfileSucsess) {
                return Align(
                    alignment: Alignment.topRight,
                    child: CircleAvatar(
                      backgroundImage: BlocProvider.of<ProfileCubit>(context)
                                  .data
                                  .image ==
                              ''
                          ? null
                          : NetworkImage(BlocProvider.of<ProfileCubit>(context)
                              .data
                              .image!),
                      radius: 30,
                      backgroundColor: continerColor,
                      child:
                          BlocProvider.of<ProfileCubit>(context).data.image ==
                                  ''
                              ? Image.asset(
                                  image,
                                  height: 70,
                                  fit: BoxFit.contain,
                                )
                              : null,
                    ));
              } else {
                return const Align(
                  alignment: Alignment.topRight,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: continerColor,
                  ),
                );
              }
            },
          )
        : const Align(
            alignment: Alignment.topRight,
            child: CircleAvatar(
              backgroundColor: continerColor,
              radius: 30,
            ),
          );
  }
}
