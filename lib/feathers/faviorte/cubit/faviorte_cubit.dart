

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'faviorte_state.dart';

class FaviorteCubit extends Cubit<FaviorteState> {
  FaviorteCubit() : super(FaviorteInitial());
}
