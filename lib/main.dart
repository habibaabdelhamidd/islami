import 'package:flutter/material.dart';
import 'package:islami/Hdeeth/content.dart';
import 'package:islami/Quran/chapter_content.dart';
import 'package:islami/home.dart';

void main() {
  runApp(const MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islami',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 40,
            )),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
            selectedIconTheme: IconThemeData(size: 30)),
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xb7935f00),
            primary: const Color(0xb7935f00),
            onPrimary: Colors.white),
        useMaterial3: true,
      ),
      routes: {
        "home": (_) => const HomePage(),
        "content": (_) => const ChapterContent(),
        "hadithContent": (_) => const HadithContent(),
      },
      initialRoute: 'home',
    );
  }
}