import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami/Hdeeth/content.dart';
import 'package:islami/Quran/chapter_content.dart';
import 'package:islami/home.dart';
import 'package:islami/theme.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'provider/settings_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (buildContext) => SettingsProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  late SettingsProvider settingProvider;

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    sharedPref();
    return MaterialApp(
      title: 'Islami',
      theme: MyTheme.light,
      darkTheme: MyTheme.dark,
      themeMode: settingsProvider.currentTheme,
      routes: {
        "home": (_) => const HomePage(),
        "content": (_) => const ChapterContent(),
        "hadithContent": (_) => const HadithContent(),
      },
      home: const HomePage(),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      locale: Locale(settingsProvider.currentLang),
    );
  }

  sharedPref() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String lang = prefs.getString("lang") ?? 'ar';
    settingProvider.changeLang(lang);

    String theme = prefs.getString("theme") ?? 'light';
    if (theme == 'light') {
      settingProvider.changeTheme(ThemeMode.light);
    } else {
      settingProvider.changeTheme(ThemeMode.dark);
    }
  }
}