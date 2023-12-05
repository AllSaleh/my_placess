import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/feathers/add_place/view/add_place.dart';
import 'package:project/feathers/faviorte/view/faviorte.dart';
import 'package:project/feathers/home/view/home.dart';
import 'package:project/feathers/admin/admin_profile/view/adimn_profile.dart';
// import 'package:project/feathers/profile/user_profile/view/user_profile.dart';

part 'home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  HomeScreenCubit() : super(HomeScreenInitial());
  int currentIndex = 0;
  chaneIndext(int index) {
    currentIndex = index;
    emit(HomeScreenInitial());
  }

  List<Widget> pages = const [
    Home(),
    Faviorte(),
    AddPlace(),
    // UserProfile
    AdimnProfile(),
  ];
}
