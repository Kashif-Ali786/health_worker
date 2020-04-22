import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'account.dart';
import 'appointment.dart';
import 'shift_screen.dart';
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










