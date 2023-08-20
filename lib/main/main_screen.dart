import 'package:github_io/constants.dart';

import 'package:flutter/material.dart';
import 'package:github_io/responsive.dart';

import '../screens/components/sideMenu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sankalp Dhama"),
        backgroundColor: Color(0xFF242430),
        // leading: Builder(
        //   builder: (context) => IconButton(
        //     onPressed: () {
        //       Scaffold.of(context).openDrawer();
        //     },
        //     icon: Icon(Icons.safety_check),
        //   ),
        // ),
      ),
      drawer: Responsive.isDesktop(context)?null : SideMenu(),
      // backgroundColor: Colors.purple,
      body: Center(
        child: Container(
          constraints: const BoxConstraints(),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                Expanded(
                  flex: 2,
                  child: SideMenu(),
                ),
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
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
