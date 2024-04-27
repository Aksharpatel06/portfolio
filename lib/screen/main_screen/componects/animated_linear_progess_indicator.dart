import 'package:flutter/material.dart';

import '../../../utils/color_theme.dart';

class AnimetedLinearProgressIndicator extends StatelessWidget {
  const AnimetedLinearProgressIndicator({
    super.key, required this.label, required this.percentage,
  });

  final String label;
  final double percentage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percentage),
        duration: defaultDuration,
        builder: (context, double value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(label,style: TextStyle(color: Colors.white),),
                Text((value*100).toInt().toString()+"%"),
              ],
            ),
            SizedBox(height: defaultPadding/2,),
            LinearProgressIndicator(
              value: value,
              color: primaryColor,
              backgroundColor: darkColor,
            ),
          ],
        ),
      ),
    );
  }
}
