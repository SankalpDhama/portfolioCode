import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:github_io/constants.dart';
import 'package:github_io/screens/components/skills.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../components/animated_progress_indicator.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'myInfo.dart';
import 'area_info.dart';

class SideMenu extends StatelessWidget {
  SideMenu({
    Key? key,
  }) : super(key: key);
  final Uri _linkedin = Uri.parse('https://www.linkedin.com/in/sankalp-dhama-31ba45204/');
  final Uri _leetcode = Uri.parse('https://leetcode.com/sankalp_dhama/');
  final Uri _facebook = Uri.parse('https://www.facebook.com/sankalp.dhama');
  final Uri _twitter = Uri.parse('hhttps://www.twitter.com/sankalpdhama');
  final Uri _github = Uri.parse('https://github.com/SankalpDhama');
  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
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
                          IconButton(onPressed: () => _launchUrl(_linkedin), icon: SvgPicture.asset("icons/logos/linkedin.svg"),
                          ),
                          IconButton(onPressed: ()=>_launchUrl(_github), icon: SvgPicture.asset("icons/logos/github.svg"),
                          ),
                          IconButton(onPressed: ()=>_launchUrl(_leetcode), icon: SvgPicture.asset("icons/logos/leetcode.svg"),
                          ),
                          IconButton(onPressed: ()=>_launchUrl(_facebook), icon: SvgPicture.asset("icons/logos/facebook.svg"),
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
