import 'package:flutter/material.dart';
import 'package:github_io/main/main_screen.dart';
import 'components/MyProject.dart';
import 'components/Recommendations.dart';
import 'components/highlightInfo.dart';
import 'components/home_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighlightsInfo(),
        MyProjects(),
        // Recommendations(),
      ],
    );
  }
}
