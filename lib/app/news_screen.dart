import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewsFeedScreen extends StatelessWidget {
  NewsFeedScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(title),
            actions: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onPressed: null),
            ],
          ),
          body: ListView(
            children: <Widget>[
              Post(
                title: 'Sympathy',
                titleColor: Color(0xff508AB7),
                text:
                    'To John and Sarah Smithly in the death of her mother, Leslie Wilkens. There will be a graveside service on Monday, August 30 at 12:00 at Oak Crest Cemetery. In lieu of flowers, the family requests donations be made to Sr. Jude\'s Children\'s hospital.\n\nTo Ronnie Louis & family on the death of his mother, Jamie Louis. Her service was yesterday. His address is 6254 Gambit Street Parksville, AZ 73827.',
                date: DateTime.now(),
              ),
              Post(
                title: 'Prayer Request',
                text:
                    'Mark Davis is recovering at Victory Rehabilitation.\n\nSarah Carter mother of Julie Wallace, is battling some major health issues and would appreciate prayers and cards of encouragement. (623 E. 7thSt. - Nashville, AK  72547)',
                date: DateTime.now(),
              ),
              Post(
                title: 'Baby Shower',
                text:
                    'There will be a baby shower for Roger & Leah Roberts on Wednesday, September 5th, at 7:30 in the Fellowship Hall following class. They are expecting a girl (grandchild of Brad & Leslie Roberts) & are registered at Target and Amazon.   ',
                date: DateTime.now(),
              ),
              Post(
                title: 'Bridal Tea',
                text:
                    'There will be a Bridal Tea for Mary Cotton (daughter of Ray & Jules Cotton and granddaughter of Willie Cotton) and bride-elect of Michael Avery, on Sunday, August 14, in the Garden Room from 2:00 - 3:30. They are registered at Bed, Bath and Beyond.  Lead hostess is Sarah Kiltenberg.',
                date: DateTime.now(),
              ),
              Post(
                title: 'Sympathy',
                titleColor: Color(0xff508AB7),
                text:
                    'To John and Sarah Smithly in the death of her mother, Leslie Wilkens. There will be a graveside service on Monday, August 30 at 12:00 at Oak Crest Cemetery. In lieu of flowers, the family requests donations be made to Sr. Jude\'s Children\'s hospital.\n\nTo Ronnie Louis & family on the death of his mother, Jamie Louis. Her service was yesterday. His address is 6254 Gambit Street Parksville, AZ 73827.',
                date: DateTime.now(),
              ),
              Post(
                title: 'Prayer Request',
                text:
                    'Mark Davis is recovering at Victory Rehabilitation.\n\nSarah Carter mother of Julie Wallace, is battling some major health issues and would appreciate prayers and cards of encouragement. (623 E. 7thSt. - Nashville, AK  72547)',
                date: DateTime.now(),
              ),
              Post(
                title: 'Baby Shower',
                text:
                    'There will be a baby shower for Roger & Leah Roberts on Wednesday, September 5th, at 7:30 in the Fellowship Hall following class. They are expecting a girl (grandchild of Brad & Leslie Roberts) & are registered at Target and Amazon.   ',
                date: DateTime.now(),
              ),
              Post(
                title: 'Bridal Tea',
                text:
                    'There will be a Bridal Tea for Mary Cotton (daughter of Ray & Jules Cotton and granddaughter of Willie Cotton) and bride-elect of Michael Avery, on Sunday, August 14, in the Garden Room from 2:00 - 3:30. They are registered at Bed, Bath and Beyond.  Lead hostess is Sarah Kiltenberg.',
                date: DateTime.now(),
              ),
              Post(
                title: 'Sympathy',
                titleColor: Color(0xff508AB7),
                text:
                    'To John and Sarah Smithly in the death of her mother, Leslie Wilkens. There will be a graveside service on Monday, August 30 at 12:00 at Oak Crest Cemetery. In lieu of flowers, the family requests donations be made to Sr. Jude\'s Children\'s hospital.\n\nTo Ronnie Louis & family on the death of his mother, Jamie Louis. Her service was yesterday. His address is 6254 Gambit Street Parksville, AZ 73827.',
                date: DateTime.now(),
              ),
              Post(
                title: 'Prayer Request',
                text:
                    'Mark Davis is recovering at Victory Rehabilitation.\n\nSarah Carter mother of Julie Wallace, is battling some major health issues and would appreciate prayers and cards of encouragement. (623 E. 7thSt. - Nashville, AK  72547)',
                date: DateTime.now(),
              ),
              Post(
                title: 'Baby Shower',
                text:
                    'There will be a baby shower for Roger & Leah Roberts on Wednesday, September 5th, at 7:30 in the Fellowship Hall following class. They are expecting a girl (grandchild of Brad & Leslie Roberts) & are registered at Target and Amazon.   ',
                date: DateTime.now(),
              ),
              Post(
                title: 'Bridal Tea',
                text:
                    'There will be a Bridal Tea for Mary Cotton (daughter of Ray & Jules Cotton and granddaughter of Willie Cotton) and bride-elect of Michael Avery, on Sunday, August 14, in the Garden Room from 2:00 - 3:30. They are registered at Bed, Bath and Beyond.  Lead hostess is Sarah Kiltenberg.',
                date: DateTime.now(),
              ),
            ],
          )),
    );
  }
}

class Post extends StatelessWidget {
  Post({Key key, this.title, this.text, this.date, this.titleColor}) : super(key: key);

  final String title;
  final String text;
  final DateTime date;
  final Color titleColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 32, right: 32, top: 16, bottom: 16),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '$title',
                  style: TextStyle(color: titleColor, fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  DateFormat().format(date),
                  style: TextStyle(color: Colors.grey.shade400),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text('$text'),
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
      ),
    );
  }
}
