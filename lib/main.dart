import 'package:flutter/material.dart';
import 'package:islami/Hdeeth/content.dart';
import 'package:islami/Quran/chapter_content.dart';
import 'package:islami/home.dart';
import 'package:islami/theme.dart';

void main() {
  runApp(const MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islami',
      theme: MyTheme.light,
      darkTheme: MyTheme.dark,
      themeMode: ThemeMode.dark,
      routes: {
        "home": (_) => const HomePage(),
        "content": (_) => const ChapterContent(),
        "hadithContent": (_) => const HadithContent(),
      },
      initialRoute: 'home',
    );
  }
}