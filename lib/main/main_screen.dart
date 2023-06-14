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
        title: Text("bheesh"),
        // backgroundColor: bgColor,
        leading: Builder(builder: (context)=>IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: Icon(Icons.menu),
        ),)
      ),
      drawer: SideMenu(),
      // backgroundColor: Colors.purple,
      body: Center(
        child: Container(
          constraints: const BoxConstraints(),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
