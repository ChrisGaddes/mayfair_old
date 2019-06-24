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
        statusBarColor: Colors.grey.shade900,
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
        appBarTheme: AppBarTheme(
            brightness: Brightness.dark, color: Colors.grey.shade900),
      ),
      debugShowCheckedModeBanner: false,
      home: BottomNavigationScreen(),
    );
  }
}
