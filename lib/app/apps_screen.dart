import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AppsScreen extends StatelessWidget {
  AppsScreen({Key key, this.title}) : super(key: key);

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
        appBar: AppBar(
          centerTitle: true,
          title: Text(title),
        ),
        body: Container(
          child: FlatButton(
            onPressed: () {
              _launchUrl(
                url: 'youversion://bible',
              );
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.network(
                  'https://www.bible.com/assets/icons/bible/200/en-df9e42178ce28600ec4049a9dc80d818.png',
                ),
                Text(
                  'Open Bible',
                  style: TextStyle(fontSize: 20),
                ),
              ],
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
