abstract class Applinks {
  static const String baseUrl = 'http://10.0.2.2:8000/api';

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

}
