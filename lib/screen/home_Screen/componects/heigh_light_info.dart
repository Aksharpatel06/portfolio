import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';

import '../../../utils/color_theme.dart';
import 'animeted_counter.dart';
import 'heigh_light.dart';

class HeighLightInfo extends StatelessWidget {
  const HeighLightInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context) ? Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HeighLight(counter: AnimetedCounter(text: 'k+',value: 119,),label: "Subscribers",),
              HeighLight(counter: AnimetedCounter(text: '+',value: 40,),label: "Videos",),
            ],
          ),
          SizedBox(height: defaultPadding,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HeighLight(counter: AnimetedCounter(text: '+',value: 30,),label: "Github Projects",),
              HeighLight(counter: AnimetedCounter(text: 'k+',value: 13,),label: "Stars",),
            ],
          )
        ],
      ):Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeighLight(counter: AnimetedCounter(text: 'k+',value: 119,),label: "Subscribers",),
          HeighLight(counter: AnimetedCounter(text: '+',value: 40,),label: "Videos",),
          HeighLight(counter: AnimetedCounter(text: '+',value: 30,),label: "Github Projects",),
          HeighLight(counter: AnimetedCounter(text: 'k+',value: 13,),label: "Stars",),
        ],
      ),
    );
  }
}
