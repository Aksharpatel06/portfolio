import 'package:flutter/material.dart';

import '../../../utils/color_theme.dart';
import 'animated_circular_indicator.dart';

class Skills extends StatelessWidget {
  const Skills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Skills',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: [
            Expanded(child: AnimatedCircularProgessIndicator(percetanges: 0.8,label: "Flutter",)),
            SizedBox(width: defaultPadding,),
            Expanded(child: AnimatedCircularProgessIndicator(percetanges: 0.72,label: "PHP",)),
            SizedBox(width: defaultPadding,),
            Expanded(child: AnimatedCircularProgessIndicator(percetanges: 0.65,label: "Figma",)),
          ],
        )
      ],
    );
  }
}
