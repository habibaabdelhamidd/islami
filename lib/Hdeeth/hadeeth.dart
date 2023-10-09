import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/Hdeeth/hadith_title.dart';
import 'package:islami/Hdeeth/hadithdata.dart';

class HadithTab extends StatefulWidget {
  const HadithTab({super.key});

  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  @override
  Widget build(BuildContext context) {
    if (ahadeth.isEmpty) {
      loadhadeth();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            flex: 1, child: Image.asset("lib/assets/images/hadeth_logo.png")),
        Divider(
          thickness: 3,
          color: Theme.of(context).dividerColor,
        ),
        Text(
          AppLocalizations.of(context)!.hadith,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Divider(
          thickness: 3,
          color: Theme.of(context).dividerColor,
        ),
        Expanded(
            flex: 2,
            child: ahadeth.isEmpty
                ? const Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemBuilder: (context, index) {
                      return HadithTitle(
                        hadithData: ahadeth[index],
                      );
                    },
                    itemCount: ahadeth.length))
      ],
    );
  }

  List<HadithData> ahadeth = [];

  loadhadeth() async {
    String fileContent =
        await rootBundle.loadString('lib/assets/content/ahadeth.txt');
    List<String> hadithList = fileContent.trim().split('#');
    for (int i = 0; i < hadithList.length; i++) {
      String singleHadith = hadithList[i];
      List<String> hadithTitle = singleHadith.trim().split('\n');
      String title = hadithTitle[0];
      hadithTitle.remove(0);
      String content = hadithTitle.join('\n');
      HadithData hadithData = HadithData(title, content);
      ahadeth.add(hadithData);
    }
    setState(() {});
  }
}