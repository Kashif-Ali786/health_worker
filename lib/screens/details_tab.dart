
import 'package:flutter/material.dart';
import 'package:flutterapp1/screens/timeline.dart';

import 'details.dart';

class DetailsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          margin:EdgeInsets.only(top: 15),
          child: ListTile(
            leading: Icon(Icons.watch_later),
            title: Text("04:22 - 07:30 PM", style: TextStyle(color: Colors.black54),),
          ),
        ),
        Divider(),
        Container(
          margin:EdgeInsets.only(top: 5),
          child: ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text("Wed 12, March 2020", style: TextStyle(color: Colors.black54)),
          ),
        ),
        Divider(),
        Container(
          child:ListTile(
              leading: Icon(Icons.location_on),
              subtitle: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 70,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                height:35,
                                child: Text("From: ",)),
                            Container(
                                height:35,
                                child: Text("To: "))
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                height:35,
                                child: Text("Lorem I dummy text. New text",)),
//                            Divider(),
                            Container(
                                height:35,
                                child: Text("Lorem Ipsum is simply dummy text. New Teext"))

                          ],
                        ),
                      )

                    ],
                  )
                ],
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Details();
                }));
              }
          ),

        ),


        Divider(),
        Container(
          margin:EdgeInsets.only(top: 5),
          child: ListTile(
            leading: Icon(Icons.event_note),
            title: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.", style: TextStyle(color: Colors.black54)),
          ),
        ),
        Container(
            margin: EdgeInsets.all( 30),
            child: FloatingActionButton.extended(
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return BadgeTimeline();
                    }));
              },
              label: Text('Track your trip'),))

      ],
    );
  }
}
