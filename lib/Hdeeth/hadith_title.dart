import 'package:flutter/material.dart';
import 'package:islami/Hdeeth/hadeeth.dart';

class HadithTitle extends StatelessWidget {
  final HadithData hadith;

  const HadithTitle(this.hadith, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "hadithContent", arguments: hadith);
      },
      child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(7),
          child: Text(
            hadith.title,
            style: const TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, fontFamily: "Inter"),
          )),
    );
  }
}
