import 'package:go_router/go_router.dart';
import 'package:project/core/routers/go_router.dart';
import 'package:project/core/routers/routers_names.dart';
import 'package:project/feathers/admin/review/view/display_review.dart';
import 'package:project/feathers/admin/review/view/review.dart';
import 'package:project/feathers/auth/change_password/view/changepassword.dart';
import 'package:project/feathers/auth/forgetpassword/view/forget_password.dart';
import 'package:project/feathers/auth/forgetpassword/otp/otp.dart';
import 'package:project/feathers/auth/rest_password/view/rest_password.dart';
import 'package:project/feathers/auth/sign_in/view/sign_in.dart';
import 'package:project/feathers/auth/sign_up/view/sign_up.dart';
import 'package:project/feathers/calender/view/calender.dart';
import 'package:project/feathers/categorise/view/categorise.dart';
import 'package:project/feathers/detils/view/detils.dart';
import 'package:project/feathers/home_screen/view/homescreen.dart';

import 'package:project/feathers/welcom/welcom.dart';
// import 'package:project/main.dart';

abstract class AppRouts {
  static final routs = GoRouter(routes: [
    GoRoute(
      // redirect: (context, state) {
      //   if (sharedPref.getInt('id') != null) {
      //     return '/${Routers.home}';
      //   }
      //   return null;
      // },
      path: Routers.welocm,
      builder: (context, state) => const Welcom(),name: Routers.welocm
    ),
    goRouter(
        path: '/${Routers.signIn}', page: const SignIn(), name: Routers.signIn),
    goRouter(
        path: '/${Routers.signUp}', page: const SignUp(), name: Routers.signUp),
    goRouter(
        path: '/${Routers.forgetPassword}',
        page: const ForgetPassword(),
        name: Routers.forgetPassword),
    goRouter(path: '/${Routers.otp}', page: const Otp(), name: Routers.otp),
    goRouter(
        path: '/${Routers.home}', page: const HomeScreen(), name: Routers.home),
    goRouter(
        path: '/${Routers.review}', page: const Review(), name: Routers.review),
    goRouter(
        path: '/${Routers.displayreview}',
        page: const DisplayReview(),
        name: Routers.displayreview),
    goRouter(
        path: '/${Routers.categorise}',
        page: const Categorise(),
        name: Routers.categorise),
    goRouter(
        path: '/${Routers.detils}', page: const Detils(), name: Routers.detils),
    goRouter(
        path: '/${Routers.changepassword}',
        page: const ChangePassword(),
        name: Routers.changepassword),
    goRouter(
        path: '/${Routers.restpassword}',
        page: const RestPassword(),
        name: Routers.restpassword),
    goRouter(
        path: '/${Routers.calender}',
        page: const Calender(),
        name: Routers.calender),
  ]);
}
