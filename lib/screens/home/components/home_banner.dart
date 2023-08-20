import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:github_io/responsive.dart';

import '../../../constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context)?2:3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            "https://images.unsplash.com/photo-1692367764006-f940d670a235?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1009&q=80",            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Discover \nMy World",
                  style: Responsive.isDesktop(context)?Theme.of(context).textTheme.headline3!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white):Theme.of(context).textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                if(Responsive.isMobileLarge(context)) const SizedBox(height: defaultPadding/2,),
                AnimatedTextWidget(),
                SizedBox(height: defaultPadding),
                if(!Responsive.isMobileLarge(context))ElevatedButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: defaultPadding * 2,
                          vertical: defaultPadding),
                      backgroundColor: primaryColor),
                  child: Text("Explore Now",style: TextStyle(color: darkColor),),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      maxLines: 1,
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          if(!Responsive.isMobileLarge(context))FlutterYellowText(),
          if(!Responsive.isMobileLarge(context))SizedBox(width: defaultPadding / 2),
          Text("I build "),
          Responsive.isMobile(context)?Expanded(child: AnimatedText()):AnimatedText(),
          if(!Responsive.isMobileLarge(context))SizedBox(width: defaultPadding / 2),
          if(!Responsive.isMobileLarge(context))FlutterYellowText(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText("Responsive site",
            speed: Duration(milliseconds: 60)),
        TyperAnimatedText("complete website",
            speed: Duration(milliseconds: 60)),
        TyperAnimatedText("chat app with backend",
            speed: Duration(milliseconds: 60)),
      ],
    );
  }
}

class FlutterYellowText extends StatelessWidget {
  const FlutterYellowText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: "flutter",
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(
            text: ">",
          ),
        ],
      ),
    );
  }
}
