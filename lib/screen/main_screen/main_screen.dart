import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/utils/color_theme.dart';

import 'componects/side_menu.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.childern});

  final List<Widget> childern;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:Responsive.isDesktop(context) ? null: AppBar(
        backgroundColor: bgcolor,
        leading: Builder(builder: (context) => IconButton(onPressed: () {
          Scaffold.of(context).openDrawer();
        },icon: const Icon(Icons.menu),)),
      ),
      drawer: SideMenu(),
      body: Container(
        constraints: BoxConstraints(
          maxWidth: maxWidth.toDouble(),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             if(Responsive.isDesktop(context))
               const Expanded(
                 flex: 2,
                 child: SideMenu(),
               ),
            const SizedBox(width: defaultPadding,),
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
            const SizedBox(width: defaultPadding,),
          ],
        ),
      ),
    );
  }
}
