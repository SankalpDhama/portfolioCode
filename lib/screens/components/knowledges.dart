import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
class Knowledges extends StatelessWidget {
  const Knowledges({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start ,
      children: [
        Divider(
          thickness: 0.3,
        ),
        Padding(
          padding: const EdgeInsets.symmetric( vertical: defaultPadding),
          child: Text("Knowledge",style: Theme.of(context).textTheme.subtitle2,),
        ),
        KnowledgeText( text: "Low Level Design & Software Development",),
        KnowledgeText( text: "C, C++, Python",),
        KnowledgeText( text: "Object Oriented Programming, MySql, Operating Systems, Computer Networks, Database Management Systems",),
        KnowledgeText( text: "GitHub,GitLab,Android Studio,Visual Studio Code",),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding/2 ),
      child: Row(
        children: [SvgPicture.asset("icons/check.svg"),
          SizedBox(width: defaultPadding/2,),
          Flexible(child: Text(text,)),
        ],
      ),
    );
  }
}
