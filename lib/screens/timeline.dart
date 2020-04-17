import 'package:flutter/material.dart';
import 'home.dart';

class BadgeTimeline extends StatefulWidget {
  @override
  BadgeTimelineState createState() => new BadgeTimelineState();
}

class BadgeTimelineState extends State<BadgeTimeline> with TickerProviderStateMixin {
  ScrollController _scrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: (){
            goToLastScreen();
          },
        ),
        title: Text("Track Trip"),
      ),
      body:  ListView(
        children: <Widget>[
          //ID of Traveller
          getTravellerID(),
          Divider(),
          //timeline heading
          getTimeline(),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: MyTimeLine(),
          ),
          MyTimeLine(),
          MyTimeLine(),

        ],
      ),
    );
  }

  Widget getTravellerID() {
    return Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 60.0,top: 20.0,bottom: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: <Widget>[
              Center(child: Text("Order ID : 6B98-3645", style: TextStyle(fontSize: 18),)),
              Center(child: Text("Wed 12, March 2020")),

            ],
          ),
        )
      ],
    );
  }

  Widget getTimeline() {
    return Padding(
      padding: EdgeInsets.only(left: 60.0,top: 20.0,bottom: 20.0),
      child: Text("Track Trip",style: TextStyle(fontSize: 18),
      ),
    );

  }

  void goToLastScreen() {
    Navigator.push(context,MaterialPageRoute(builder: (context)=>Home()));
  }
}

class getVerticalSeparator extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      width: 1.0,
      color: Theme.of(context).primaryColor,
    );
  }
}

class MyTimeLine extends StatefulWidget{
  @override
  _TimeLineState createState() => _TimeLineState();
}

class _TimeLineState extends State<MyTimeLine>{
//list for traveller
//  List<Widget> _travelStatus=[
//    Container(
//      child: ,
//    )
//    "Start Trip",
//    "On My Way",
//    "Arrived At Location",
//    "On way to Doctor",
//
//  ];
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 30.0,
                child: Center(
                  child: Stack(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 12.0),
                        child: getVerticalSeparator(),
                      ),
                      Container(
                        padding: EdgeInsets.only(),
                        child:Icon(Icons.done,color: Colors.white),
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            shape: BoxShape.circle),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 20.0, top: 5.0),
                          child: Text('Header Text',),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 180.0, top: 5.0),
                          child: Text('00:00 am',),
                        ),
                      ],
                    )

                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

