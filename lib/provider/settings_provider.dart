import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {

  ThemeMode currentTheme = ThemeMode.light;
  String currentLang = "en";

  changeTheme(ThemeMode newTheme) {
    if (currentTheme == newTheme) return;
    currentTheme = newTheme;
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

  changeLang(String newLang) {
    if (currentLang == newLang) return;
    currentLang = newLang;
    notifyListeners();
  }
}