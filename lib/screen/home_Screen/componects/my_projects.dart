import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screen/home_Screen/componects/project_card.dart';

import '../../../model/Project.dart';
import '../../../utils/color_theme.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Projects',
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(
          height: defaultPadding,
        ),
        Responsive(
          mobile: ProjectOfGridView(crossAxisCount: 1,childAspectRatio: 1.55,),
          mobileLarge: ProjectOfGridView(crossAxisCount: 2,),
          tablet: ProjectOfGridView(childAspectRatio: 1.0,),
          desktop: ProjectOfGridView(),
        )
      ],
    );
  }
}

class ProjectOfGridView extends StatelessWidget {
  const ProjectOfGridView({
    super.key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  });

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: demo_projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: childAspectRatio,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: defaultPadding),
      itemBuilder: (context, index) => ProjectCard(
        project: demo_projects[index],
      ),
    );
  }
}
