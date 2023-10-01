import 'package:flutter/material.dart';
import 'package:islami/Hdeeth/hadithdata.dart';

class HadithTitle extends StatelessWidget {
  final HadithData hadithData;

  const HadithTitle({super.key, required this.hadithData});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "hadithContent", arguments: hadithData);
      },
      child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(7),
          child: Text(hadithData.title,
              style: Theme.of(context).textTheme.titleSmall)),
    );
  }
}
