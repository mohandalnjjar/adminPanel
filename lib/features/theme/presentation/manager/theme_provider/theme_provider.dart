import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  static const _themeStatus = "themeStatus";
  bool _darkTheme = false;
  bool get getIsDarkTheme => _darkTheme;

  Future<void> setDarkTheme({required bool themeValue}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setBool(_themeStatus, themeValue);

    _darkTheme = themeValue;

    notifyListeners();
  }

  Future<bool> getTheme() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    _darkTheme = pref.getBool(_themeStatus) ?? false;

    notifyListeners();

    return _darkTheme;
  }
}
