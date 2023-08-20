import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/animated_progress_indicator.dart';
import '../../constants.dart';

class skills extends StatelessWidget {
  const skills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(
          thickness: 3,
        ),
        Padding(
          padding:
          const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Skills",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: animatedProgressBar(
                percentage: 0.9,
                label: "Front End",
              ),
            ),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: animatedProgressBar(
                percentage: 0.8,
                label: "Back End",
              ),
            ),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: animatedProgressBar(
                percentage: 0.75,
                label: "Database",
              ),
            ),
          ],
        )
      ],
    );
  }
}


