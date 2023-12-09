import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:project/core/routers/routers_names.dart';
import 'package:project/feathers/admin/review/cubit/accept_approving_cubit.dart';
import 'package:project/feathers/admin/review/cubit/approving_cubit.dart';
import 'package:project/feathers/admin/review/cubit/rivew_cubit.dart';
import 'package:project/feathers/admin/review/view/display_body_view.dart';
import 'package:project/feathers/admin/review/widgets/bottom_bar_admin.dart';

class DisplayReview extends StatelessWidget {
  const DisplayReview({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ApprovingCubit()..getPlace(),
        ),
        BlocProvider(
          create: (context) => AcceptApprovingCubit(),
        ),
        BlocProvider(
          create: (context) => RivewCubit(),
        ),
      ],
      child: WillPopScope(
        onWillPop: () {
          GoRouter.of(context).pushReplacementNamed(Routers.review);
          return Future.value(false);
        },
        child: const Scaffold(
          bottomNavigationBar: CustomBottomBarAdmin(),
          body: SafeArea(
            child: DisplayBoddyView(),
          ),
        ),
      ),
    );
  }
}
