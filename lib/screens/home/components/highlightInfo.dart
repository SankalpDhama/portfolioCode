import 'package:flutter/material.dart';
import 'package:github_io/responsive.dart';

import '../../../components/AnimatedCounter.dart';
import '../../../constants.dart';
import 'highLights.dart';

class HighlightsInfo extends StatelessWidget {
  const HighlightsInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    highLight(
                      counter: AnimatedCounter(
                        value: 10,
                        text: "+",
                      ),
                      label: "blogs",
                    ),
                    highLight(
                      counter: AnimatedCounter(
                        value: 7,
                        text: "+",
                      ),
                      label: "projects",
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    highLight(
                      counter: AnimatedCounter(
                        value: 400,
                        text: "+",
                      ),
                      label: "Problem Solving",
                    ),
                    highLight(
                      counter: AnimatedCounter(
                        value: 1000,
                        text: "+",
                      ),
                      label: "Rating",
                    ),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: defaultPadding,
                ),
                highLight(
                  counter: AnimatedCounter(
                    value: 10,
                    text: "+",
                  ),
                  label: "blogs",
                ),
                highLight(
                  counter: AnimatedCounter(
                    value: 7,
                    text: "+",
                  ),
                  label: "projects",
                ),
                highLight(
                  counter: AnimatedCounter(
                    value: 400,
                    text: "+",
                  ),
                  label: "Problem Solving",
                ),
                highLight(
                  counter: AnimatedCounter(
                    value: 1000,
                    text: "+",
                  ),
                  label: "Rating",
                ),
                SizedBox(
                  width: defaultPadding,
                ),
              ],
            ),
    );
  }
}
