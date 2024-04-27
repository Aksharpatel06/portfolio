import 'package:flutter/material.dart';

import '../../../utils/color_theme.dart';

class AnimetedCounter extends StatelessWidget {
  const AnimetedCounter({
    super.key, required this.value,this.text,
  });

  final int value;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: IntTween(begin: 0, end: value),
      duration: defaultDuration,
      builder: (context, value, child) => Text(
        '$value$text',
        style: Theme.of(context)
            .textTheme
            .headline6!
            .copyWith(color: primaryColor),
      ),
    );
  }
}
