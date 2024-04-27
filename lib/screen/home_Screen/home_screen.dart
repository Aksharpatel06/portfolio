import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/screen/main_screen/main_screen.dart';

import 'componects/heigh_light_info.dart';
import 'componects/home_banner.dart';
import 'componects/my_projects.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScreen(childern: [
      HomeBanner(),
      HeighLightInfo(),
      MyProjects(),
    ]);
  }
}


