import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:geolocator/geolocator.dart';
import 'package:project/main.dart';

part 'welcom_state.dart';

class WelcomCubit extends Cubit<WelcomState> {
  WelcomCubit() : super(WelcomInitial());

  double? lat;
  double? lan;

  determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (serviceEnabled == false) {
      emit(WelcomServessDenalbe());
    } else if (serviceEnabled == true) {
      permission = await Geolocator.checkPermission();

      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        emit(WelcomServessNoPermasison());
      } else if (permission == LocationPermission.always) {
        var c1 = await Geolocator.getCurrentPosition().then((value) => value);
        sharedPref.setDouble('lat', c1.latitude);
        sharedPref.setDouble('long', c1.longitude);
      }
    }

    //   if (!serviceEnabled) {
    //     print('object');
    //     // Location services are not enabled don't continue
    //     // accessing the position and request users of the
    //     // App to enable the location services.
    //     return Future.error('Location services are disabled.');
    //   }

    //   permission = await Geolocator.checkPermission();
    //   if (permission == LocationPermission.denied) {
    //     permission = await Geolocator.requestPermission();
    //     if (permission == LocationPermission.denied) {
    //       // Permissions are denied, next time you could try
    //       // requesting permissions again (this is also where
    //       // Android's shouldShowRequestPermissionRationale
    //       // returned true. According to Android guidelines
    //       // your App should show an explanatory UI now.
    //       return Future.error('Location permissions are denied');
    //     }
    //   }

    //   if (permission == LocationPermission.deniedForever) {
    //     // Permissions are denied forever, handle appropriately.
    //     return Future.error(
    //         'Location permissions are permanently denied, we cannot request permissions.');
    //   }

    //   // When we reach here, permissions are granted and we can
    //   // continue accessing the position of the device.
    //   return await Geolocator.getCurrentPosition();
    // }
  }
}
