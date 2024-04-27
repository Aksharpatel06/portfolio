import 'package:flutter/material.dart';

import '../../../utils/color_theme.dart';
import 'animated_linear_progess_indicator.dart';

class Coding extends StatelessWidget {
  const Coding({
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
            'Coding',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimetedLinearProgressIndicator(
          label: "C",
          percentage: 0.9,
        ),
        AnimetedLinearProgressIndicator(
          label: "C++",
          percentage: 0.85,
        ),
        AnimetedLinearProgressIndicator(
          label: "Dart",
          percentage: 0.8,
        ),
        AnimetedLinearProgressIndicator(
          label: "Python",
          percentage: 0.9,
        ),
        AnimetedLinearProgressIndicator(
          label: "Core Flutter",
          percentage: 0.85,
        ),
      ],
    );
  }
}
