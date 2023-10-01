import 'package:flutter/material.dart';
import 'package:islami/Quran/chapter_content.dart';

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
      child: Row(
        children: [
          Expanded(
            child: Text(
              "${index + 1}",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          Container(
            width: 3,
            height: 50,
            color: Theme.of(context).dividerColor,
          ),
          Expanded(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }
}
