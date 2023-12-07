import 'package:project/main.dart';

bool inAdmin() {
  if (sharedPref.getBool('adimn') == true) {
    return true;
  } else if (sharedPref.getBool('adimn') == null) {
    return false;
  } else {
    return false;
  }
}

bool haveAcountFunctions() {
  if (sharedPref.getBool('haveaccount') == true) {
    return true;
  } else {
    return false;
  }
}

int? accountId() {
  return sharedPref.getInt('id');
}
