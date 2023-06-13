import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/main_screen.dart';
import 'package:portfolio/models/Projects.dart';
import 'package:portfolio/models/Recommendations.dart';
import '../../components/AnimatedCounter.dart';
import 'components/MyProject.dart';
import 'components/ProjectCard.dart';
import 'components/Recommendations.dart';
import 'components/highlightInfo.dart';
import 'components/home_banner.dart';
import 'components/recommendationCard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighlightsInfo(),
        MyProjects(),
        Recommendations(),
      ],
    );
  }
}
