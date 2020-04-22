import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterapp1/screens/past_tab.dart';
import 'package:flutterapp1/screens/timeline.dart';
import 'package:flutterapp1/screens/details.dart';
import 'package:intl/intl.dart';
import 'dart:ui';
import 'package:table_calendar/table_calendar.dart';
import 'account.dart';
import 'appointment.dart';
import 'calendars_screen.dart';
import 'start_shift.dart';
import 'my_earnings.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  final pages = [Appointment(),ShiftStart(),MyEarnings(),Account()];
  int pageIndex=0;


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: pages[pageIndex],
        bottomNavigationBar: BottomNavigationBar(
            type:BottomNavigationBarType.fixed,
            backgroundColor: Colors.grey[200],
            currentIndex: pageIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.date_range),
                  title: Text("Appointment",)
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.local_library),
                title: Text("Schedule"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.euro_symbol),
                title: Text("My Earnings"),
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle),
                  title: Text("Account"))
            ],
            onTap: (index) {
              setState(() {
                pageIndex = index;
              });
            }
        ),
      ),
    );
  }

//  _showAddDialog() {
//    showDialog(
//        context: context,
//        builder: (contex) => AlertDialog(
//              content: TextField(
//                controller: _eventController,
//              ),
//              actions: <Widget>[
//                FlatButton(
//                  child: Text("save"),
//                  onPressed: () {
//                    if (_eventController.text.isEmpty) return;
//                    setState(() {
//                      if (_events[_calendarController.selectedDay] != null) {
//                        _events[_calendarController.selectedDay]
//                            .add(_eventController.text);
//                      } else {
//                        _events[_calendarController.selectedDay] = [
//                          _eventController.text
//                        ];
//                      }
//                      _eventController.clear();
//                      Navigator.pop(context);
//                    });
//                  },
//                )
//              ],
//            ));
//  }



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
                                  Text(
                                    "Trip to Lahore",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  ),
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









