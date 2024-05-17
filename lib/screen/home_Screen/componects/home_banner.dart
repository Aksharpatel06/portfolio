import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/responsive.dart';

import '../../../utils/color_theme.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 :3 ,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'asset/image/bg.jpeg',
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Discover My Amazing \nArt Space!',
                  style:Responsive.isDesktop(context) ? Theme.of(context).textTheme.headline3!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white):Theme.of(context).textTheme.headline5!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                if(!Responsive.isMobileLarge(context))
                  const SizedBox(height: defaultPadding/2,),
                const MyBuildAnimatedText(),
                if(!Responsive.isMobileLarge(context))
                    SizedBox(height: defaultPadding,),
                if(!Responsive.isMobileLarge(context))
                  CupertinoButton(
                    padding: const EdgeInsets.symmetric(
                        horizontal: defaultPadding*2,
                        vertical: defaultPadding/2
                    ),
                    color: primaryColor,
                    onPressed: () {},
                    child: const Text('EXPLORE NOW',style: TextStyle(color: darkColor),))
              ],
            ),
          )
        ],
      ),
    );
  }
}





class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      maxLines: 1,
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          if(!Responsive.isMobileLarge(context))
            const FlutterCodedText(),
          if(!Responsive.isMobileLarge(context))
            const SizedBox(
              width: defaultPadding / 2,
            ),
          const Text('I build '),
          (Responsive.isMobileLarge(context))?Expanded(child: AnimetedTexts()):AnimetedTexts(),
          if(!Responsive.isMobileLarge(context))
            const SizedBox(
              width: defaultPadding / 2,
            ),
          if(!Responsive.isMobileLarge(context))
            const FlutterCodedText(),
        ],
      ),
    );
  }
}

class AnimetedTexts extends StatelessWidget {
  const AnimetedTexts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          'responsive web and mobile app.',
          speed: const Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          'complete e-Commerce app UI.',
          speed: const Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          'chat app with dark and light thme.',
          speed: const Duration(milliseconds: 60),
        ),
      ],
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text.rich(TextSpan(text: '<', children: [
      TextSpan(text: "Flutter", style: TextStyle(color: primaryColor)),
      TextSpan(text: ">", style: TextStyle(color: primaryColor)),
    ]));
  }
}