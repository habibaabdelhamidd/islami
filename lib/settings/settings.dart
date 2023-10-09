import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/settings/languageBottomSheet.dart';
import 'package:islami/settings/themeBottomSheet.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppLocalizations.of(context)!.theme,
              style: Theme.of(context).textTheme.titleSmall),
          InkWell(
            onTap: () {
              themeBottomSheet();
            },
            child: Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Theme.of(context).dividerColor,
                      width: 1,
                    )),
                child: Text("Light",
                    style: Theme.of(context).textTheme.labelSmall)),
          ),
          const SizedBox(height: 40),
          Text(AppLocalizations.of(context)!.language,
              style: Theme.of(context).textTheme.titleSmall),
          InkWell(
            onTap: () {
              languageBottomSheet();
            },
            child: Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Theme.of(context).dividerColor,
                      width: 1,
                    )),
                child: Text("English",
                    style: Theme.of(context).textTheme.labelSmall)),
          )
        ],
      ),
    );
  }

  themeBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return const ThemeBottomSheet();
        });
  }

  languageBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return const LanguageBottomSheet();
        });
  }
}
