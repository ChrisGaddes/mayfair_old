import 'package:flutter/material.dart';

class PlaybackScreen extends StatelessWidget {
  PlaybackScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(),
          body: Container(
            child: Column(
              children: <Widget>[
                MediaPlayer(),
                Container(
                    child: Column(
                      children: <Widget>[],
                    ))
              ],
            ),
          )),
    );
  }
}

class MediaPlayer extends StatelessWidget {
  const MediaPlayer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
          color: Colors.red,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                child: Icon(
                  Icons.replay_30,
                  size: 50,
                ),
                onTap: () {},
              ),
              SizedBox(
                width: 20,
              ),
              InkWell(
                child: Icon(
                  Icons.play_arrow,
                  size: 50,
                ),
                onTap: () {},
              ),
              SizedBox(
                width: 20,
              ),
              InkWell(
                child: Icon(
                  Icons.forward_30,
                  size: 50,
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
