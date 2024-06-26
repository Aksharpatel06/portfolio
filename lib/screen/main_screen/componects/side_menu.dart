import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/utils/color_theme.dart';
import 'area_info_text.dart';
import 'coding.dart';
import 'knowledge.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      child: Column(
        children: [
          const MyInfo(),
          Expanded(
              child: SingleChildScrollView(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                const AreaInfoText(
                  title: "Residence",
                  text: "Gujarat",
                ),
                const AreaInfoText(
                  title: "City",
                  text: "Surat",
                ),
                const AreaInfoText(
                  title: "Age",
                  text: "19",
                ),
                const Skills(),
                const SizedBox(
                  height: defaultPadding,
                ),
                const Coding(),
                const Knowledges(),
                const Divider(),
                const SizedBox(
                  height: defaultPadding / 2,
                ),
                TextButton(
                  onPressed: () {},
                  child: FittedBox(
                    child: Row(
                      children: [
                        Text(
                          "DOWNLOAD CV",
                          style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color),
                        ),
                        const SizedBox(
                          width: defaultPadding / 2,
                        ),
                        SvgPicture.asset('asset/icon/download.svg')
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: defaultPadding),
                  color: const Color(0xff24242E),
                  child: Row(
                    children: [
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                        },
                        icon: SvgPicture.asset('asset/icon/linkedin.svg'),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('asset/icon/github.svg'),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('asset/icon/twitter.svg'),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('asset/icon/behance.svg'),
                      ),
                      const Spacer(),
                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
