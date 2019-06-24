import 'package:flutter/material.dart';

import 'bible_screen.dart';
import 'home_page.dart';
import 'settings_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  @override
  _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  // Initial tab index is 0, which is the HomePage
  int _currentTabIndex = 0;
  final List<Widget> _tabs = [
    HomePage(title: 'Home',),
    BibleScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _tabs[_currentTabIndex],
        bottomNavigationBar: bottomNavigationBar(),
      ),
    );
  }

  BottomNavigationBar bottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text("Home"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book),
          title: Text("Bible"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu),
          title: Text("Settings"),
        ),
      ],
      currentIndex: _currentTabIndex,
      onTap: onTabTapped,
      backgroundColor: Colors.grey.shade900,
      unselectedItemColor: Colors.grey.shade500,
      selectedItemColor: Colors.white,
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentTabIndex = index;
    });
  }
}
