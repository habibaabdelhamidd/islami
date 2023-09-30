import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/Hdeeth/hadith_title.dart';

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
          color: Theme.of(context).primaryColor,
        ),
        const Text(
          "الاحاديث",
          style: TextStyle(fontSize: 25, fontFamily: "ElMessiri"),
        ),
        Divider(
          thickness: 3,
          color: Theme.of(context).primaryColor,
        ),
        Expanded(
            flex: 2,
            child: ahadeth.isEmpty
                ? const Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemBuilder: (context, index) {
                      return HadithTitle(ahadeth[index]);
                    },
                    itemCount: ahadeth.length))
      ],
    );
  }

  List<HadithData> ahadeth = [];

  loadhadeth() async {
    String fileContent =
        await rootBundle.loadString('lib/assets/content/ahadeth.txt');
    List<String> hadith = fileContent.trim().split('#');
    for (int i = 0; i < hadith.length; i++) {
      String singleHadith = hadith[i];
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

class HadithData {
  String title;
  String content;

  HadithData(this.title, this.content);
}