import 'package:flutter/material.dart';
import 'package:islami/provider/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
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
                  settingsProvider.changeTheme(ThemeMode.light);
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    settingsProvider.isDark()
                        ? unselectedItem(AppLocalizations.of(context)!.light)
                        : selectedItem(AppLocalizations.of(context)!.light),
                  ],
                )),
            const SizedBox(height: 10),
            InkWell(
                onTap: () {
                  settingsProvider.changeTheme(ThemeMode.dark);
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    settingsProvider.isDark()
                        ? selectedItem(AppLocalizations.of(context)!.dark)
                        : unselectedItem(AppLocalizations.of(context)!.dark),
                  ],
                ))
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
