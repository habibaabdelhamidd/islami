import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Image(image: AssetImage("lib/assets/images/radio_image.png")),
        Text("اذاعة القران الكريم",
            style: Theme.of(context).textTheme.titleMedium),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.skip_previous,
              color: Theme.of(context).dividerColor,
              size: 50,
            ),
            Icon(Icons.play_arrow,
                color: Theme.of(context).dividerColor, size: 60),
            Icon(Icons.skip_next,
                color: Theme.of(context).dividerColor, size: 50),
          ],
        )
      ],
    );
  }
}
