import 'package:flutter/material.dart';
import 'package:islami/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
        padding: const EdgeInsets.all(30),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
                onTap: () {
                  settingsProvider.changeLang("en");
                  Navigator.pop(context);
                },
                child: settingsProvider.currentLang == "en" ?
                selectedItem("English")
                    : unselectedItem("English")),
            const SizedBox(height: 10),
            InkWell(
                onTap: () {
                  settingsProvider.changeLang("ar");
                  Navigator.pop(context);
                },
                child: settingsProvider.currentLang == "ar" ?
                selectedItem("العربية")
                    : unselectedItem("العربية"))
          ],
        ));
  }

  Widget selectedItem(String text) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(text,
          style: Theme.of(context)
              .textTheme
              .labelSmall
              ?.copyWith(color: Theme.of(context).dividerColor)),
      Icon(Icons.check, color: Theme.of(context).dividerColor)
    ]);
  }

  Widget unselectedItem(String text) {
    return Text(text, style: Theme.of(context).textTheme.labelSmall);
  }
}
