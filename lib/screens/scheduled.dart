import 'package:flutter/material.dart';

import 'calendars_screen.dart';
import 'home.dart';


class Scheduled extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Calendars(),
        Divider(),
        //timeline
        Padding(
          padding: EdgeInsets.only(left: 18.0, top: 20),
          child: Text(
            "Today's Timeline",
            style: TextStyle(fontSize: 18.0),
          ),
        ),
        GetListView(),
      ],
    );
  }
}
