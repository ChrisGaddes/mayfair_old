import 'package:flutter/material.dart';

class MediaScreen extends StatelessWidget {
  MediaScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(title),
        ),
        body: Placeholder(
          color: Colors.green,
        ),
      ),
    );
  }
}
