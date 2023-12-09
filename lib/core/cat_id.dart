import 'package:project/core/app_assets.dart';
import 'package:project/main.dart';

String catId() {
  int? id = sharedPref.getInt('cat');
  if (id == 1) {
    return 'Natural Landscape';
  } else if (id == 2) {
    return 'Museums &Monuments';
  } else if (id == 3) {
    return 'Shopping';
  } else {
    return 'Restaurants & cafes';
  }
}

String catId2(int id) {
 
  if (id == 1) {
    return 'Natural Landscape';
  } else if (id == 2) {
    return 'Museums &Monuments';
  } else if (id == 3) {
    return 'Shopping';
  } else {
    return 'Restaurants & cafes';
  }
}

catImage() {
  int? id = sharedPref.getInt('cat');

  if (id == 1) {
    return AppAssets.natural;
  } else if (id == 2) {
    return AppAssets.museums;
  } else if (id == 3) {
    return AppAssets.shopping;
  } else {
    return AppAssets.restaurants;
  }
}
