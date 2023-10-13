import 'package:flutter/material.dart';
import 'package:islami/Hdeeth/hadithdata.dart';
import 'package:islami/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class HadithContent extends StatelessWidget {
  static const String routeName = "hadithContent";

  const HadithContent({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    var args = ModalRoute
        .of(context)
        ?.settings
        .arguments as HadithData;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(settingsProvider.changeBg()),
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
