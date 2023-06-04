import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/screens/components/skills.dart';

import '../../components/animated_progress_indicator.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'myInfo.dart';
import 'area_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xFF242430),
        child: Column(
          children: [
            myInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    areaInfo(
                      title: "Residence",
                      text: "Uttar Pradesh",
                    ),
                    areaInfo(
                      title: "City",
                      text: "Vasundhara",
                    ),
                    areaInfo(
                      title: "Age",
                      text: "20",
                    ),
                    skills(),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    Coding(),
                    Knowledges(),
                    Divider(
                      thickness: 0.3,
                    ),
                    SizedBox(height: defaultPadding/2 ,),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [Text("Download CV",style: TextStyle(color: Theme.of(context).textTheme.bodyText1!.color),
                          ),
                            SizedBox(width: defaultPadding/2),
                            SvgPicture.asset("icons/download.svg"),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top:defaultPadding/2 ),
                       color: Color(0xFF24240),
                      child:Row(
                        children: [
                          Spacer(),
                          IconButton(onPressed: (){}, icon: SvgPicture.asset("icons/linkedin.svg"),
                          ),
                          IconButton(onPressed: (){}, icon: SvgPicture.asset("icons/github.svg"),
                          ),
                          IconButton(onPressed: (){}, icon: SvgPicture.asset("icons/dribble.svg"),
                          ),
                          IconButton(onPressed: (){}, icon: SvgPicture.asset("icons/twitter.svg"),
                          ),
                          Spacer(),
                        ],
                      )
                    ),
                   ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
