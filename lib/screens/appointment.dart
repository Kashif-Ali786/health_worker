import 'package:flutter/material.dart';
import 'package:flutterapp1/screens/past_tab.dart';
import 'package:flutterapp1/screens/scheduled.dart';


class Appointment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("Trip Details"),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: <Widget>[
            Container(
              constraints: BoxConstraints.expand(height: 50),
              margin: EdgeInsets.all(20.0),
              child: TabBar(
                unselectedLabelColor: Colors.grey,
                tabs: <Widget>[
                  Text(
                    'Scheduled',
                    style: TextStyle(fontSize: 22, color: Colors.black),
                  ),
                  Text(
                    'Past',
                    style: TextStyle(fontSize: 22, color: Colors.black),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: TabBarView(
                  children: <Widget>[
                    Scheduled(),
                    PastTab(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
