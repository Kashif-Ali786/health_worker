import 'package:flutter/material.dart';

class BadgeTimeline extends StatefulWidget {
  @override
  BadgeTimelineState createState() => new BadgeTimelineState();
}

class BadgeTimelineState extends State<BadgeTimeline>
    with TickerProviderStateMixin {
  ScrollController _scrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: () {
            goToLastScreen();
          },
        ),
        title: Text("Trip Status"),
      ),
      body: ListView(
        children: <Widget>[
          //ID of Traveller
          getTravellerID(),
          Divider(),
          //timeline heading
          getTimelineHeading(),
          Container(
            margin: EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                MyTimeLine(),
                //vertical line
                VerticalLine(),
                MyTimeLine(),
                //vertical line
                VerticalLine(),
                MyTimeLine(),
                //vertical line
                VerticalLine(),
                MyTimeLine(),
                //vertical line
                VerticalLine(),
                MyTimeLine(),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 9),
                  height: 60.0,
                  width: 2.5,
                  color: Colors.grey,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      width: 20,
                      child: Icon(Icons.done, size: 15, color: Colors.grey),
                      decoration: BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Text("Heading text",
                            style: TextStyle(fontSize: 12))),
                    Container(
                        margin: EdgeInsets.only(left: 150),
                        child:
                        Text("00:00 am", style: TextStyle(fontSize: 12))),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getTravellerID() {
    return Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 60.0, top: 20.0, bottom: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                  child: Text(
                    "Order ID : 6B98-3645",
                    style: TextStyle(fontSize: 18),
                  )),
              Center(child: Text("Wed 12, March 2020")),
            ],
          ),
        )
      ],
    );
  }

  Widget getTimelineHeading() {
    return Padding(
      padding: EdgeInsets.only(left: 60.0, top: 15.0),
      child: Text(
        "Trip Status",
        style: TextStyle(fontSize: 18),
      ),
    );
  }

  void goToLastScreen() {
    Navigator.pop(context);
  }
}

class MyTimeLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              width: 20,
              child: Icon(Icons.done, size: 15, color: Colors.white),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  shape: BoxShape.circle),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Heading text",
                style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
        Container(
          child: Text(
            "00:00 am",
            style: TextStyle(fontSize: 12),
          ),
        ),
      ],
    );
  }
}

class VerticalLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 9),
      height: 60.0,
      width: 2.5,
      color: Theme.of(context).primaryColor,
    );
  }
}