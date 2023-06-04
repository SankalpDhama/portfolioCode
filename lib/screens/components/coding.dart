import 'package:flutter/material.dart';

import '../../components/animated_progress_indicator.dart';
import '../../constants.dart';
class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          thickness: 3 ,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text("Coding",style:Theme.of(context).textTheme.subtitle2,),
        ),
        AnimatedLinearProgress(percentage: 0.8,label: "Dart",),
        AnimatedLinearProgress(percentage: 0.9 ,label: "Java",),
        AnimatedLinearProgress(percentage: 0.7,label: "Data Structures And Algorithms",),
      ],
    );
  }
}

