import 'package:flutter/material.dart';
import 'package:portfolio/screen/home_Screen/componects/recommendation_card.dart';

import '../../../model/Recommendation.dart';
import '../../../utils/color_theme.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Recommendations",style: Theme.of(context).textTheme.headline6,),
          SizedBox(height: defaultPadding,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children:List.generate(demo_recommendations.length, (index) => Padding(
                padding: const EdgeInsets.only(right:defaultPadding),
                child: RecommendationCard(recommendation: demo_recommendations[index],),
              ),),
            ),
          )
        ],
      ),
    );
  }
}
