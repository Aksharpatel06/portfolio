import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/utils/color_theme.dart';

import 'componects/side_menu.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.childern});

  final List<Widget> childern;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints(
          maxWidth: maxWidth.toDouble(),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              flex: 2,
              child: SideMenu(),
            ),
            SizedBox(width: defaultPadding,),
            Expanded(
              flex: 7,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ...childern
                  ],
                ),
              ),
            ),
            SizedBox(width: defaultPadding,),
          ],
        ),
      ),
    );
  }
}
