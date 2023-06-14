import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:github_io/screens/home/components/recommendationCard.dart';

import '../../../constants.dart';
import '../../../models/Recommendations.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Recommendations",style: Theme.of(context).textTheme.headline6,),
          const SizedBox(height: defaultPadding,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(demo_recommends.length, (index) => Padding(
                padding: const EdgeInsets.only(right:defaultPadding),
                child: RecommendationCard(recom: demo_recommends[index],),
              ),),
            ),
          ),
        ],
      ),
    );
  }
}
