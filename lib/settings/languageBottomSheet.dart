import 'package:flutter/material.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(30),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            selectedItem("English"),
            const SizedBox(height: 10),
            unselectedItem("العربية")
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
