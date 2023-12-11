abstract class Applinks {
  static const String baseUrl = 'http://192.168.225.108:8000/api';

  //auth
  static const String register = '$baseUrl/register';
  static const String login = '$baseUrl/login';
  static const String sendotp = '$baseUrl/send-otp';
  static const String checkOtp = '$baseUrl/check-otp';
  static const String restPass = '$baseUrl/reset-password';

  //placess
  static const String addPlacess = '$baseUrl/place';
  //faviorte
  static const String faviorte = '$baseUrl/favorite';
  static const String delete = '$baseUrl/favorite/';
  static const String addFaviorte = '$baseUrl/favorite/';
  static const String poupler = '$baseUrl/popular';

  //
  static const String showPlacessCategorie = '$baseUrl/place/category/';
  static const String detils = '$baseUrl/place/';

  //appoment

  static const String addAppoment = '$baseUrl/appointment';
  static const String showAppoment = '$baseUrl/appointment/?date=';

  //admin

  static const String reviewRequest = '$baseUrl/place/admin?is_approved=0';
  static const String approving = '$baseUrl/place/approve/';
  static const String showplace = '$baseUrl/place/admin/';
  static const String editPlace = '$baseUrl/place/';
  static const String deletePlace = '$baseUrl/place/admin/';
  static const String deleteImage = '$baseUrl/place/';
  static const String addImage = '$baseUrl/place/';

  //profile
  static const String getUserAccount = '$baseUrl/profile';
  // static const String getUserAccount = '$baseUrl/profile';
}
