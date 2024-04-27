import 'package:flutter/material.dart';

import '../../../model/Project.dart';
import '../../../utils/color_theme.dart';


class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key, required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondaryColor,
      padding: EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(project.title!,maxLines: 2,overflow: TextOverflow.ellipsis,style: Theme.of(context).textTheme.subtitle2,),
          Spacer(),
          Text(project.description!,maxLines: 4,overflow: TextOverflow.ellipsis,style: TextStyle(height: 1.5),),
          Spacer(),
          TextButton(onPressed: () {

          },child: Text("Read More >> ",style: TextStyle(color: primaryColor),))
        ],
      ),
    );
  }
}