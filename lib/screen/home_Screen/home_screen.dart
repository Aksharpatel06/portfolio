import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/model/Recommendation.dart';
import 'package:portfolio/screen/main_screen/main_screen.dart';
import 'package:portfolio/utils/color_theme.dart';

import 'componects/heigh_light_info.dart';
import 'componects/home_banner.dart';
import 'componects/my_projects.dart';
import 'componects/recommendations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainScreen(childern: [

      //BACKGROUND IMAGES AND ANIMATED TEXT
      HomeBanner(),

      //HIGH LIGHTS INFO IN ROW
      HeighLightInfo(),

      //MY PROJECTS
      MyProjects(),

      //RECOMMENDATIONS
      Recommendations(),
    ]);
  }
}




