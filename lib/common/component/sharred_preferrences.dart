import 'package:shared_preferences/shared_preferences.dart';

saveEmail(String email) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('email', email);
}

getEmail()async{
  String email;
  final prefs = await SharedPreferences.getInstance();
  email = prefs.getString('email') ?? "";
  return email;
}

getRefreshToken()async{
  String refreshToken;
  final prefs = await SharedPreferences.getInstance();
  refreshToken = (prefs.getString('refreshToken') ?? "");
  return refreshToken;
}

getAccessToken()async{
  String accessToken;
  final prefs = await SharedPreferences.getInstance();
  accessToken = (prefs.getString('accessToken') ?? "");
  return accessToken;
}

saveAccessToken(String? accessToken) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('accessToken', accessToken!);
}

saveRefreshToken(String? refreshToken) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('refreshToken', refreshToken!);
}


