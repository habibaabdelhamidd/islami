import 'package:flutter/material.dart';
import 'package:islami/Hdeeth/hadithdata.dart';

class HadithContent extends StatelessWidget {
  static const String routeName = "hadithContent";

  const HadithContent({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadithData;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("lib/assets/images/default_bg.png"),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.title),
        ),
        body: Card(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Text(
              args.content,
              textDirection: TextDirection.rtl,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
            )),
      ),
    );
  }
}
