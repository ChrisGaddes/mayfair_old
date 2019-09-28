import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import 'image_carousel.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            'Mayfair',
            style: TextStyle(color: Colors.black),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                showLicensePage(context: context);
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ImageCarousel(),
              SizedBox(height: 13),
//              MayfairTextLogo(),
//              SizedBox(height: 30),
              LoveFirstMotto(),
              SizedBox(height: 13),
              Divider(),
              SizedBox(height: 13),
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 32),
                child: ServiceTimesWidget(),
              ),
              SizedBox(height: 13),
              Divider(),
              LocationAndContactWidget(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class MayfairTextLogo extends StatelessWidget {
  const MayfairTextLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: 'MAYFAIR',
            style: TextStyle(
              fontFamily: 'Oswald',
              fontWeight: FontWeight.bold,
              fontSize: 21,
              color: Colors.black,
            ),
          ),
          TextSpan(
            text: 'CHURCH OF CHRIST',
            style: TextStyle(
              fontFamily: 'Oswald',
              fontWeight: FontWeight.w200,
              fontSize: 21,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class LoveFirstMotto extends StatelessWidget {
  const LoveFirstMotto({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            'LOVE FIRST:',
            style: TextStyle(fontSize: 25, color: Colors.grey.shade600),
          ),
          SizedBox(height: 10),
          Text(
            'FOLLOW JESUS + LOVE GOD + LOVE OTHERS',
            style: TextStyle(fontSize: 15, color: Colors.grey.shade600),
          ),
        ],
      ),
    );
  }
}

class ServiceTimesWidget extends StatelessWidget {
  const ServiceTimesWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Sunday',
              style: TextStyle(
                  color: Color(0xff508AB7),

                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ],
        ),
        SizedBox(
          height: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              '9:00 AM',
              style: TextStyle(color: Colors.grey.shade600, fontSize: 18),
            ),
            Text(
              'Worship Service',
              style: TextStyle(color: Colors.grey.shade600, fontSize: 18),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              '10:30 AM',
              style: TextStyle(color: Colors.grey.shade600, fontSize: 18),
            ),
            Text(
              'Classes & Groups',
              style: TextStyle(color: Colors.grey.shade600, fontSize: 18),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              '5:00 PM',
              style: TextStyle(color: Colors.grey.shade600, fontSize: 18),
            ),
            Text(
              'Evening Service',
              style: TextStyle(color: Colors.grey.shade600, fontSize: 18),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Wednesday',
              style: TextStyle(
                  color: Color(0xff508AB7),
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ],
        ),
        SizedBox(
          height: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              '6:30 PM',
              style: TextStyle(color: Colors.grey.shade600, fontSize: 18),
            ),
            Text(
              'Classes & Groups',
              style: TextStyle(color: Colors.grey.shade600, fontSize: 18),
            ),
          ],
        )
      ]),
    );
  }
}

class LocationAndContactWidget extends StatelessWidget {
  const LocationAndContactWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        InkWell(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  _launchAddressInMaps(
                    address:
                        'Mayfair+Church+of+Christ%2C+Carl+T+Jones+Drive+Southeast%2C+Huntsville%2C+AL',
                  );
                },
                color: Color(0xff0179CA),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                colorBrightness: Brightness.dark,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.directions,
                      size: 20,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text('Directions'),
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                '1095 Carl T Jones Dr.\nHuntsville, Al 35802',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          onLongPress: () {
            Clipboard.setData(ClipboardData(
                text: '1095 Carl T Jones Dr.\nHuntsville, Al 35802'));
            Scaffold.of(context)
                .showSnackBar(SnackBar(content: Text('Copied to clipboard')));
          },
          onTap: () {
            _launchAddressInMaps(
              address:
                  'Mayfair+Church+of+Christ%2C+Carl+T+Jones+Drive+Southeast%2C+Huntsville%2C+AL',
            );
          },
        ),
        SizedBox(
          height: 10,
        ),
        InkWell(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  launch('mailto:ask@mayfair.org');
                },
                color: Colors.grey.shade600,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                colorBrightness: Brightness.dark,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      size: 20,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text('Contact'),
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'ask@mayfair.org',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          onLongPress: () {
            Clipboard.setData(ClipboardData(
                text: '1095 Carl T Jones Dr.\nHuntsville, Al 35802'));
            Scaffold.of(context)
                .showSnackBar(SnackBar(content: Text('Copied to clipboard')));
          },
          onTap: () {
            _launchAddressInMaps(
              address:
                  'Mayfair+Church+of+Christ%2C+Carl+T+Jones+Drive+Southeast%2C+Huntsville%2C+AL',
            );
          },
        ),
        SizedBox(
          height: 10,
        ),
        InkWell(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  launch("tel://2568814651");
                },
                color: Colors.grey.shade600,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                colorBrightness: Brightness.dark,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.call,
                      size: 20,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text('Call'),
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                '(256) 881-4651',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          onLongPress: () {
            Clipboard.setData(ClipboardData(text: '(256) 881-4651'));
            Scaffold.of(context)
                .showSnackBar(SnackBar(content: Text('Copied to clipboard')));
          },
          onTap: () {
            launch("tel://2568814651");
          },
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

void _launchAddressInMaps({String address}) async {
  final url = 'https://www.google.com/maps/search/?api=1&query=$address';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

