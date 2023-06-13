import 'package:portfolio/constants.dart';

import 'package:flutter/material.dart';

import 'screens/components/sideMenu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key,required this.children}) : super(key: key);
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.purple,
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: SideMenu(),
              ),
              // Spacer(flex: 1,),
              Expanded(
                flex: 7,
                child: SingleChildScrollView(child: Column(
                  children: [...children],
                ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
