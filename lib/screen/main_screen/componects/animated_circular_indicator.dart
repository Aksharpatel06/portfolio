import 'package:flutter/material.dart';

import '../../../utils/color_theme.dart';

class AnimatedCircularProgessIndicator extends StatelessWidget {
  const AnimatedCircularProgessIndicator({
    super.key, required this.percetanges, required this.label,
  });

  final double percetanges;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percetanges),
            duration: defaultDuration,
            builder: (context,double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: value,
                  color: primaryColor,
                  backgroundColor: darkColor,
                ),
                Center(
                  child: Text((value * 100).toInt().toString() + "%",
                    style: Theme.of(context).textTheme.subtitle1,),
                )
              ],
            ),
          ),
        ),
        SizedBox(height: defaultPadding/2,),
        Text(label,maxLines: 1,overflow: TextOverflow.ellipsis,style: Theme.of(context).textTheme.subtitle2,)
      ],
    );
  }
}
