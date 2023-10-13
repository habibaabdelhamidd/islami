import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider extends ChangeNotifier {

  ThemeMode currentTheme = ThemeMode.light;
  String currentLang = "en";

  changeTheme(ThemeMode newTheme) async {
    if (currentTheme == newTheme) return;
    currentTheme = newTheme;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("theme", newTheme == ThemeMode.dark ? 'dark' : 'light');
    notifyListeners();
  }

  String changeBg() {
    return currentTheme == ThemeMode.dark
        ? "lib/assets/images/dark_bg.png"
        : "lib/assets/images/default_bg.png";
  }

  bool isDark() {
    return currentTheme == ThemeMode.dark;
  }

  changeLang(String newLang) async {
    if (currentLang == newLang) return;
    currentLang = newLang;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("lang", newLang);
    notifyListeners();
  }
}