import 'package:project/main.dart';

bool isAdmin() {
  if (sharedPref.getBool('adimn') == true) {
    return true;
  } else if (sharedPref.getBool('adimn') == null) {
    return false;
  } else {
    return false;
  }
}

haveAcountFunctions() {
  if (sharedPref.getBool('haveaccount') == true) {
    return true;
  } else {
    return false;
  }
}

int? accountId() {
  return sharedPref.getInt('id');
}

String gender() {
  if (sharedPref.getString('gender') == 'mali') {
    return 'mail';
  } else {
    return 'female';
  }
}

isChange() {
  if (sharedPref.getBool('change') == true) {
    return true;
  } else {
    return false;
  }
}
