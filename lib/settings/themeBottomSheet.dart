import 'package:flutter/material.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(30),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            selectedItem("Light"),
            const SizedBox(height: 10),
            unselectedItem("Dark")
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
