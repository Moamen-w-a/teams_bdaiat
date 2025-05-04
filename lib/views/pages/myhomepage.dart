import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sidebar_with_animation/animated_side_bar.dart';

import 'home_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;

  List<Widget> pages = const [
    HomePage(),
    Center(child: Text("Insights Page")),
    Center(child: Text("Feature Page")),
    Center(child: Text("Payouts Page")),
    Center(child: Text("Settings Page")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideBarAnimated(
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            widthSwitch: 600,
            mainLogoImage: 'assets/images/im.png',
            borderRadius: 50,
            sidebarItems: [
              SideBarItem(
                iconSelected: CupertinoIcons.house_fill,
                iconUnselected: CupertinoIcons.house,
                text: 'Home',
              ),
              SideBarItem(
                iconSelected: Icons.widgets,
                iconUnselected: Icons.widgets_outlined,
                text: 'Widgets',
              ),
              SideBarItem(
                iconSelected: CupertinoIcons.lab_flask_solid,
                iconUnselected: CupertinoIcons.lab_flask,
                text: 'Link Plugins',
              ),
              SideBarItem(
                iconSelected: CupertinoIcons.layers_alt_fill,
                iconUnselected: CupertinoIcons.layers_alt,
                text: 'Ui Design App',
              ),
            ],
          ),
          Expanded(
            child: Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(bottom: 20, top: 40, left: 10),
              child: pages[selectedIndex],
            ),
          ),
        ],
      ),
    );
  }
}
