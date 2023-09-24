import 'package:flutter/material.dart';
import 'package:islami/Quran/chapterContent.dart';

class Chapters extends StatelessWidget {
  final String title;
  final int index;

  const Chapters({super.key, required this.title, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "content",
            arguments: ChapterContentDetails(title, index));
      },
      child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(7),
          child: Text(
            title,
            style: const TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, fontFamily: "Inter"),
          )),
    );
  }
}
