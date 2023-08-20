import 'package:flutter/material.dart';
import 'package:github_io/responsive.dart';

import '../../../constants.dart';
import '../../../models/Projects.dart';
import 'ProjectCard.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "My Projects",
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        Responsive(
          mobile: ProjectGridView(crossAxisCount: 1,
          childAspectRatio: 2,),
          mobileLarge: ProjectGridView(
            crossAxisCount: 2,
            childAspectRatio: 1.7,
          ),
          tablet: ProjectGridView(
            childAspectRatio: 1.1,
          ),
          desktop: ProjectGridView(),
        )
      ],
    );
  }
}

class ProjectGridView extends StatelessWidget {
  const ProjectGridView({
    super.key,
    this.crossAxisCount = 2,
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
        // crossAxisSpacing: defaultPadding,
        // mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => ProjectCard(
        project: demo_projects[index],
      ),
    );
  }
}
