import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:timeago/timeago.dart' as timeago;

class MediaScreen extends StatelessWidget {
  MediaScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

//    TextEditingController textController = TextEditingController();

    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
//              Container(
//                height: 32,
//                margin:
//                    EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 16),
//                child: Align(alignment: Alignment.centerRight,
//                  child: TextField(
//                    expands: true,
//                    minLines: null,
//                    maxLines: null,
//                    controller: textController,
//                    decoration: InputDecoration.collapsed(hintText: 'Search'),
//                  ),
//                ),
//              ),
              MediaItem(
                screenWidth: width,
                speakerName: 'Jason Bybee',
                title: 'The Heart (Psalms)',
                subtitle: '',
                description: '',
                series: 'Lead Strong',
                date: DateTime.parse('2019-06-09T14:30:00.00Z'),
                partNumber: 5,
                pictureUri:
                    'https://s3.amazonaws.com/media.cloversites.com/72/724cd0d1-a3ca-4ea5-be63-bc808094147b/gallery/slides/9e56692d-d80d-42f8-8431-7e6b9eb14538.jpeg',
                mediaLength: Duration(
                  hours: 1,
                  minutes: 5,
                  seconds: 30,
                ),
                numberOfViews: 521,
              ),
              MediaItem(
                screenWidth: width,
                speakerName: 'Noah Merritt',
                title:
                    'Allowing God\'s Truth To Encompass Your Lifefhdddddddddddddddddddddddddddddddddddddd',
                subtitle: '',
                description: '',
                series: 'Lead Strong',
                date: DateTime.parse('2019-06-02T14:30:00.00Z'),
                partNumber: 4,
                pictureUri:
                    'https://s3.amazonaws.com/media.cloversites.com/72/724cd0d1-a3ca-4ea5-be63-bc808094147b/gallery/slides/9e56692d-d80d-42f8-8431-7e6b9eb14538.jpeg',
                mediaLength: Duration(
                  hours: 0,
                  minutes: 47,
                  seconds: 15,
                ),
                numberOfViews: 484,
              ),
              MediaItem(
                screenWidth: width,
                speakerName: 'Jason Bybee',
                title: 'The Power of Modeling',
                subtitle: '',
                description: '',
                series: 'Lead Strong',
                date: DateTime.parse('2019-05-19T14:30:00.00Z'),
                partNumber: 3,
                pictureUri:
                    'https://s3.amazonaws.com/media.cloversites.com/72/724cd0d1-a3ca-4ea5-be63-bc808094147b/gallery/slides/9e56692d-d80d-42f8-8431-7e6b9eb14538.jpeg',
                mediaLength: Duration(
                  hours: 0,
                  minutes: 45,
                  seconds: 55,
                ),
                numberOfViews: 341,
              ),
              MediaItem(
                screenWidth: width,
                speakerName: 'Jason Bybee',
                title: 'Leading With Love',
                subtitle: '',
                description: '',
                series: 'Lead Strong',
                date: DateTime.parse('2019-05-12T14:30:00.00Z'),
                partNumber: 2,
                pictureUri:
                    'https://s3.amazonaws.com/media.cloversites.com/72/724cd0d1-a3ca-4ea5-be63-bc808094147b/gallery/slides/9e56692d-d80d-42f8-8431-7e6b9eb14538.jpeg',
                mediaLength: Duration(
                  hours: 0,
                  minutes: 45,
                  seconds: 55,
                ),
                numberOfViews: 256,
              ),
              MediaItem(
                screenWidth: width,
                speakerName: 'Jason Bybee',
                title: 'The Heart (Psalms)',
                subtitle: '',
                description: '',
                series: 'Lead Strong',
                date: DateTime.parse('2019-06-09T14:30:00.00Z'),
                partNumber: 5,
                pictureUri:
                    'https://s3.amazonaws.com/media.cloversites.com/72/724cd0d1-a3ca-4ea5-be63-bc808094147b/gallery/slides/9e56692d-d80d-42f8-8431-7e6b9eb14538.jpeg',
                mediaLength: Duration(
                  hours: 1,
                  minutes: 5,
                  seconds: 30,
                ),
                numberOfViews: 521,
              ),
              MediaItem(
                screenWidth: width,
                speakerName: 'Noah Merritt',
                title:
                    'Allowing God\'s Truth To Encompass Your Lifefhdddddddddddddddddddddddddddddddddddddd',
                subtitle: '',
                description: '',
                series: 'Lead Strong',
                date: DateTime.parse('2019-06-02T14:30:00.00Z'),
                partNumber: 4,
                pictureUri:
                    'https://s3.amazonaws.com/media.cloversites.com/72/724cd0d1-a3ca-4ea5-be63-bc808094147b/gallery/slides/9e56692d-d80d-42f8-8431-7e6b9eb14538.jpeg',
                mediaLength: Duration(
                  hours: 0,
                  minutes: 47,
                  seconds: 15,
                ),
                numberOfViews: 484,
              ),
              MediaItem(
                screenWidth: width,
                speakerName: 'Jason Bybee',
                title: 'The Power of Modeling',
                subtitle: '',
                description: '',
                series: 'Lead Strong',
                date: DateTime.parse('2019-05-19T14:30:00.00Z'),
                partNumber: 3,
                pictureUri:
                    'https://s3.amazonaws.com/media.cloversites.com/72/724cd0d1-a3ca-4ea5-be63-bc808094147b/gallery/slides/9e56692d-d80d-42f8-8431-7e6b9eb14538.jpeg',
                mediaLength: Duration(
                  hours: 0,
                  minutes: 45,
                  seconds: 55,
                ),
                numberOfViews: 341,
              ),
              MediaItem(
                screenWidth: width,
                speakerName: 'Jason Bybee',
                title: 'Leading With Love',
                subtitle: '',
                description: '',
                series: 'Lead Strong',
                date: DateTime.parse('2019-05-12T14:30:00.00Z'),
                partNumber: 2,
                pictureUri:
                    'https://s3.amazonaws.com/media.cloversites.com/72/724cd0d1-a3ca-4ea5-be63-bc808094147b/gallery/slides/9e56692d-d80d-42f8-8431-7e6b9eb14538.jpeg',
                mediaLength: Duration(
                  hours: 0,
                  minutes: 45,
                  seconds: 55,
                ),
                numberOfViews: 256,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MediaItem extends StatelessWidget {
  const MediaItem({
    Key key,
    @required this.screenWidth,
    @required this.speakerName,
    @required this.title,
    @required this.subtitle,
    @required this.description,
    @required this.series,
    @required this.date,
    @required this.partNumber,
    @required this.pictureUri,
    @required this.mediaLength,
    @required this.numberOfViews,
  }) : super(key: key);

  final String speakerName;
  final String title;
  final String subtitle;
  final String description;
  final String series;
  final DateTime date;
  final int partNumber;
  final String pictureUri;
  final Duration mediaLength;
  final int numberOfViews;

  final double standardMargin = 16.0;
  final double screenWidth;
  final double fractionOfScreenWidthForVideo =
      2 / 5; // Fraction of screen width to be used by video preview
  final double videoAspectRatio = 16 / 9;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(standardMargin),
            width: screenWidth * fractionOfScreenWidthForVideo,
            height:
                screenWidth * fractionOfScreenWidthForVideo / videoAspectRatio,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(16.0),
              ),
              child: Container(
                child: Stack(
                  children: <Widget>[
                    CachedNetworkImage(
                      imageUrl: pictureUri,
                      imageBuilder: (context, imageProvider) => Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      placeholder: (context, url) =>
                          CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        color: Colors.grey.withOpacity(0.7),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 4, right: 4, top: 4, bottom: 4),
                          child: Text(
                            '${mediaLength.inHours.remainder(60)}:${mediaLength.inMinutes.remainder(60)}:${mediaLength.inSeconds.remainder(60)}',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
//                  Center(
//                    child: Icon(
//                      Icons.play_arrow, color: Colors.white,
//                      size: 40,
//                    ),
//                  ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: screenWidth *
                  fractionOfScreenWidthForVideo /
                  videoAspectRatio,
              margin: EdgeInsets.only(
                  left: 0.0, right: 16.0, top: 16.0, bottom: 16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '$series',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        Text(
                          'Part $partNumber: $title',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                              color: Colors.grey.shade700, fontSize: 14),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          '$speakerName',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          '$numberOfViews views',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(' - '),
                        Text(
                          timeago.format(date),
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
