import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/main_screen.dart';
import '../../components/AnimatedCounter.dart';
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
      ],
    );
  }
}

