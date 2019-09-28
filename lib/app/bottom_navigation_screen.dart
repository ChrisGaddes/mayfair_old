import 'package:flutter/material.dart';
import 'package:mayfair/app/authentication_screen.dart';
import 'news_screen.dart';
import 'home_page.dart';
import 'media_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  @override
  _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  // Initial tab index is 0, which is the HomePage
  int _currentTabIndex = 0;
  final List<Widget> _tabs = [
    HomePage(title: 'Home'),
    MediaScreen(title: 'Media'),
    NewsFeedScreen(title: 'Feed'),
    AuthenticationScreen(),
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
      elevation: 0.0,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.play_circle_filled),
          title: Text("Media"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.rss_feed),
          title: Text('News'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.lock),
          title: Text('Login'),
        ),
      ],
      currentIndex: _currentTabIndex,
      onTap: onTabTapped,
      backgroundColor: Colors.white,
      //Colors.grey.shade900
      unselectedItemColor: Colors.grey.shade600,
      selectedItemColor: Color(0xff508AB7),//Color(0xff0179CA), //Color(0xff6DBCB6),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentTabIndex = index;
    });
  }
}
