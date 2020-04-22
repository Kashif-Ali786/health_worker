import 'package:flutter/material.dart';

import 'calendars_screen.dart';
import 'details.dart';


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




class GetListView extends StatefulWidget {
  @override
  _GetListViewState createState() => _GetListViewState();
}

class _GetListViewState extends State<GetListView> {

  TimeOfDay timeOfDay;
  void initState() {
    super.initState();
    timeOfDay=TimeOfDay(hour: 00,minute: 00);
  }
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 15.0, right: 15.0, bottom: 15.0),
                  child: ListTile(
                      leading: Container(
                          width: 70,
                          alignment: Alignment.topLeft,
                          child: Text("${timeOfDay.format(context).toUpperCase()}")),
                      subtitle: Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.grey[200],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Trip to Lahore", style: TextStyle(fontSize: 20, color: Colors.black),),
                                  Text("From: Lahore"),
                                  Text("To: Karachi")
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return Details();
                            }));
                      }),
                ),
                Divider(),
              ],
            );
          },
        ));
  }
}

