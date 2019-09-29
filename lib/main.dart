import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app/bottom_navigation_screen.dart';
import 'common_widgets/ios_scroll_behavior.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.white, //Colors.grey.shade900,
        systemNavigationBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark// Colors.grey.shade900,
      ),
    );
    return MaterialApp(
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: IosScrollBehavior(), // Uses iOS overscroll on all platforms
          child: child,
        );
      },
      title: 'Mayfair',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        accentColor: Colors.grey,
        primaryColor: Colors.blueGrey,
        appBarTheme: AppBarTheme(
            brightness: Brightness.light, color: Colors.white ), //grey.shade900),
      ),
      debugShowCheckedModeBanner: false,
      home: BottomNavigationScreen(),
    );
  }
}
