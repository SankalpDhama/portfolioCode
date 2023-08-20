import 'package:flutter/material.dart';

class myInfo extends StatelessWidget {
  const myInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xFF242430),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(flex: 2),
            CircleAvatar(
              radius: 50,
              // backgroundColor: Colors.pinkAccent,
              backgroundImage: AssetImage("assets/images/sankalp_copy.png"),
            ),
            Text(
              "Sankalp",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "I am a 4th-year B.Tech student studing from University School of Information, Communication and Technology  ",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w200, height: 1.0),
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
