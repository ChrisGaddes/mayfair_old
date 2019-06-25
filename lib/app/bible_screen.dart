import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BibleScreen extends StatelessWidget {
  BibleScreen({Key key, this.title}) : super(key: key);

  final String title;

  // YouVersion Url Schemes:
  // youversion://events
  // youversion://bible
  // youversion://reading-plans/discover
  // youversion://videos
  // youversion://moments
  // youversion://compare
  // youversion://verse-of-the-day/.*/.*
  // youversion://reading-plans/.*/together/.*/invitation

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            child: RaisedButton(
              onPressed: () {
                _launchUrl(
                  url: 'youversion://bible',
                );
              },
              child: Text('Open Bible'),
            ),
          ),
        ),
      ),
    );
  }
}

void _launchUrl({String url}) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
