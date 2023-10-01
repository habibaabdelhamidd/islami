import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChapterContent extends StatefulWidget {
  static const String routeName = "content";

  const ChapterContent({super.key});

  @override
  State<ChapterContent> createState() => _ChapterContentState();
}

class _ChapterContentState extends State<ChapterContent> {
  @override
  Widget build(BuildContext context) {
    ChapterContentDetails details =
        ModalRoute.of(context)?.settings.arguments as ChapterContentDetails;
    if (verses.isEmpty) {
      loadFile(details.index);
    }

    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("lib/assets/images/default_bg.png"),
              fit: BoxFit.fill),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(details.title),
          ),
          body: verses.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : Card(
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 5),
                        alignment: Alignment.center,
                        child: Text("${verses[index]}{${index + 1}}",
                            textDirection: TextDirection.rtl,
                            style: Theme.of(context).textTheme.titleMedium),
                      );
                    },
                    separatorBuilder: (context, index) => Container(
                      color: Theme.of(context).primaryColor,
                      width: double.infinity,
                      height: 2,
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                    ),
                    itemCount: verses.length,
                  ),
                ),
        ));
  }

  List<String> verses = [];

  loadFile(int index) async {
    String fileContent =
        await rootBundle.loadString("lib/assets/content/${index + 1}.txt");
    verses = fileContent.split("\n");
    setState(() {});
  }
}

class ChapterContentDetails {
  String title;
  int index;

  ChapterContentDetails(this.title, this.index);
}