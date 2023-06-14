import 'package:flutter/material.dart';

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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: defaultPadding,),
          highLight(counter: AnimatedCounter(value: 30,text: "+",),label: "subscibers",),
          highLight(counter: AnimatedCounter(value: 40,text: "+",),label: "videos",),
          highLight(counter: AnimatedCounter(value: 80,text: "+",),label: "projects",),
          highLight(counter: AnimatedCounter(value: 69,text: "+",),label: "bitches",),
          SizedBox(width: defaultPadding,),
        ],
      ),
    );
  }
}

