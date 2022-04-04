import 'package:flutter/cupertino.dart';
import 'package:steadfast/themes/sharedpreference/theme_preference.dart';

class ThemeProvider extends ChangeNotifier{

  bool? _isDark;
  bool? get isDark=> _isDark;


  ThemeProvider(){
    getTheme();
  }

  getTheme()async{
    _isDark= await ThemePreferences().getTheme();
    notifyListeners();
  }
  changeTheme(bool isDark) {
    _isDark=isDark;
    ThemePreferences().setTheme(isDark);
    notifyListeners();
  }
}