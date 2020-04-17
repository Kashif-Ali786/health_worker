import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';


import 'home.dart';
class MyEarnings extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            child: Icon(Icons.arrow_back_ios),
                onTap: (){

                },
        ),
        title: Text("My Earnings",style: TextStyle(fontWeight: FontWeight.w400),),
      ),
      body: Column(
        children: <Widget>[
            Container(
              margin: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],
              ),
              child: Column(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.all(10.0),

                      child: Text("Last 1 Month")),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.arrow_back_ios),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.all(10.0),
                          child: Text("\$15.4738.00",style: TextStyle(fontSize: 28),)
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.arrow_forward_ios),
                      )
                    ],
                  ),
                  Divider(),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.directions_car),
                        Text("200 Rides"),
                        Spacer(),
                        Icon(Icons.timer),
                        Text("20d 19h"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          Container(
            alignment: Alignment.bottomCenter,
              margin: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.grey[200],
              ),
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left:10,top:20.0),
                    child: Text("Wallet Balance History",style: TextStyle(fontSize: 18),),
              ),
                  Divider(),
                  BarChartApplication(),
            ],
          )),
        ],
      ),
//      bottomNavigationBar: ,
    );
  }

}

class Bar extends StatelessWidget {
  final double height;
  final String label;

  final int _baseDurationMs = 1000;
  final double _maxElementHeight = 100;

  Bar(this.height, this.label);

  @override
  Widget build(BuildContext context) {
    return ControlledAnimation(
      duration: Duration(milliseconds: (height * _baseDurationMs).round()),
      tween: Tween(begin: 0.0, end: height,),
      builder: (context, animatedHeight) {
        return Column(
          children: <Widget>[

            Container(
              margin: EdgeInsets.all(5.0),
              child:Text("$height",style: TextStyle(fontSize: 12),),
              height: (1.06 - animatedHeight) * _maxElementHeight,
            ),
            Container(
              width: 20,

              height: animatedHeight * _maxElementHeight,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
                child: Text(label)
            )
          ],
        );
      },
    );
  }
}
class BarChartApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Bar(0.3, "M"),
        Bar(0.5, "T"),
        Bar(0.7, "W"),
        Bar(0.8, "T"),
        Bar(0.9, "F"),
        Bar(0.00, "S"),
        Bar(0.00, "S"),
      ],
    );
  }
}