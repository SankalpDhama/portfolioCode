import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Recommendations.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    super.key,required this.recom,
  });
  final Recommend recom;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(recom.name!,style: Theme.of(context).textTheme.subtitle2,),
          Text(recom.source!,),
          const SizedBox(height: defaultPadding),
          Text(recom.text!,maxLines: 4,overflow: TextOverflow.ellipsis,style: TextStyle(height:1.5),),
        ],
      ),
    );
  }
}
