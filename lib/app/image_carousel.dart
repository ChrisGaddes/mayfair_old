import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imageList = [
  'https://s3.amazonaws.com/media.cloversites.com/72/724cd0d1-a3ca-4ea5-be63-bc808094147b/gallery/slides/4ce0f6a5-2846-4c32-b914-383ee4771ccc.jpeg',
  'https://s3.amazonaws.com/media.cloversites.com/72/724cd0d1-a3ca-4ea5-be63-bc808094147b/gallery/slides/6bb1515c-28d4-4152-8103-806f0ebbf36b.jpg',
  'https://s3.amazonaws.com/media.cloversites.com/72/724cd0d1-a3ca-4ea5-be63-bc808094147b/gallery/slides/a41c360d-3dfa-4f10-8c0c-8ab080cd364c.jpg',
  'https://s3.amazonaws.com/media.cloversites.com/72/724cd0d1-a3ca-4ea5-be63-bc808094147b/gallery/slides/caa2af5e-0ca6-44f5-8158-76e912a49865.jpg',
  'https://s3.amazonaws.com/media.cloversites.com/72/724cd0d1-a3ca-4ea5-be63-bc808094147b/gallery/slides/823b7085-9835-4758-ab26-99f1920ed8f4.jpeg',
  'https://s3.amazonaws.com/media.cloversites.com/72/724cd0d1-a3ca-4ea5-be63-bc808094147b/gallery/slides/151591f8-23f2-4e29-8272-726c5f0fd1d2.jpg',
  'https://s3.amazonaws.com/media.cloversites.com/72/724cd0d1-a3ca-4ea5-be63-bc808094147b/gallery/slides/2206241f-1625-46bc-bd9b-d911726c60f1.jpeg',
  'https://s3.amazonaws.com/media.cloversites.com/72/724cd0d1-a3ca-4ea5-be63-bc808094147b/gallery/slides/71afb0f6-c05d-4f98-abe0-22323f7c4f94.png',
  'https://s3.amazonaws.com/media.cloversites.com/72/724cd0d1-a3ca-4ea5-be63-bc808094147b/gallery/slides/891c1272-e3ae-456c-baed-d4c56e64b78f.jpeg',
  'https://s3.amazonaws.com/media.cloversites.com/72/724cd0d1-a3ca-4ea5-be63-bc808094147b/gallery/slides/1a4088bf-3ab7-4c90-ba56-7f8e75710546.jpg',
  'https://s3.amazonaws.com/media.cloversites.com/72/724cd0d1-a3ca-4ea5-be63-bc808094147b/gallery/slides/ad97a446-3990-423b-a655-93b6bf4fa211.jpeg',
  'https://s3.amazonaws.com/media.cloversites.com/72/724cd0d1-a3ca-4ea5-be63-bc808094147b/gallery/slides/cdfd2a50-5a02-470e-a3fd-1b2c8f46f642.png',
  'https://s3.amazonaws.com/media.cloversites.com/72/724cd0d1-a3ca-4ea5-be63-bc808094147b/gallery/slides/f6ec2d33-e0d6-4dc4-9177-e9e9156feefb.jpg',
  'https://s3.amazonaws.com/media.cloversites.com/72/724cd0d1-a3ca-4ea5-be63-bc808094147b/gallery/slides/ac84a1cd-a39a-4d00-8c09-d0834a4bfde0.JPG',
  'https://s3.amazonaws.com/media.cloversites.com/72/724cd0d1-a3ca-4ea5-be63-bc808094147b/gallery/slides/c1aa1d26-07c8-4827-b058-ae977e7b0227.jpeg',
  'https://s3.amazonaws.com/media.cloversites.com/72/724cd0d1-a3ca-4ea5-be63-bc808094147b/gallery/slides/2e9fa556-a209-4817-acb9-4f1d22830ea1.jpg',
];

final Widget placeholder = Container(color: Colors.grey);

final List child = map<Widget>(
  imageList,
  (index, i) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
        child: Stack(children: <Widget>[
          Image.network(
            i,
            fit: BoxFit.cover,
          ),
        ]),
      ),
    );
  },
).toList();

List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }

  return result;
}

class ImageCarousel extends StatefulWidget {
  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CarouselSlider(
        items: child,
        viewportFraction: 1.0,
        autoPlay: true,
        enlargeCenterPage: false,
        onPageChanged: (index) {
          setState(() {
            _current = index;
          });
        },
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: map<Widget>(
          imageList,
          (index, url) {
            return Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ? Color(0xff0179CA) //Color.fromRGBO(0, 0, 0, 0.9)
                      : Color.fromRGBO(0, 0, 0, 0.2)),
            );
          },
        ),
      ),
    ]);
  }
}
