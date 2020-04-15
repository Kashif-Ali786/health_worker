import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterapp1/timeline.dart';
import 'package:flutterapp1/details.dart';
import 'dart:ui';
import 'package:table_calendar/table_calendar.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  int _currentIndex = 0;
  var _badgeTimeline = new BadgeTimeline();

  CalendarController _calendarController;
  Map<DateTime, List<dynamic>> _events;
  TextEditingController _eventController;

  void initState() {
    super.initState();
    _calendarController = CalendarController();
    _events = {};
    _eventController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return getScaffoldData();
  }

  _showAddDialog() {
    showDialog(
        context: context,
        builder: (contex) => AlertDialog(
              content: TextField(
                controller: _eventController,
              ),
              actions: <Widget>[
                FlatButton(
                  child: Text("save"),
                  onPressed: () {
                    if (_eventController.text.isEmpty) return;
                    setState(() {
                      if (_events[_calendarController.selectedDay] != null) {
                        _events[_calendarController.selectedDay]
                            .add(_eventController.text);
                      } else {
                        _events[_calendarController.selectedDay] = [
                          _eventController.text
                        ];
                      }
                      _eventController.clear();
                      Navigator.pop(context);
                    });
                  },
                )
              ],
            ));
  }

  Widget getListView() {
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
                      child: Text("00:00 PM")),
                  subtitle: Container(
                    padding: EdgeInsets.all(10.0),

                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(5.0),
                      color: Colors.black12,

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

  Widget getTableCalendar() {
    return TableCalendar(
      events: _events,
      initialCalendarFormat: CalendarFormat.week,
      calendarStyle: CalendarStyle(
          todayColor: Theme.of(context).primaryColor,
          selectedColor: Theme.of(context).primaryColor,
          todayStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Colors.white,
          ),

      ),
      headerStyle: HeaderStyle(
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        formatButtonVisible: false,
      ),
      startingDayOfWeek: StartingDayOfWeek.monday,
      onDaySelected: (date, events){
        print(date.toIso8601String());
      },
      builders: CalendarBuilders(
          selectedDayBuilder: (context, date, events) => Container(
                margin: const EdgeInsets.all(4.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  date.day.toString(),
                  style: TextStyle(color: Colors.white),
                ),
              ),
        todayDayBuilder:  (context, date, events) => Container(
          margin: const EdgeInsets.all(4.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Text(
            date.day.toString(),
            style: TextStyle(color: Colors.white),
          ),
        )

      ),
      calendarController: _calendarController,
    );
//    _selectedEvents.map((event)=>ListTile(
//      title: Text(event),
//    )
  }

  Widget getTabBarView() {
    return DefaultTabController(
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
                  'Past',
                  style: TextStyle(fontSize: 22, color: Colors.black),
                ),
                Text(
                  'Schedule',
                  style: TextStyle(fontSize: 22, color: Colors.black),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: TabBarView(
                children: <Widget>[
                  getPastTab(),
                  getScheduleTab(),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget getParticularView() {
    if (_currentIndex == 0) {
      return getTabBarView();
    } else if (_currentIndex == 2) {
      return Center(
        child: Text("Setting"),
      );
    }
  }

  Widget getScaffoldData() {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Trip Details"),
        ),
        body: getParticularView(),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.grey[200],
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  title: Text(
                    "Profile",
                  )),
              BottomNavigationBarItem(
                icon: Icon(Icons.local_library),
                title: Text("Task"),
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), title: Text("Setting"))
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
              if (_currentIndex == 1) {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return BadgeTimeline();
                }));
              }
            }),
      ),
    );
  }

  Widget getPastTab() {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) {
        return Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 15),
              child: ListTile(
                leading: Container(
                  height: 90,
                  width: 70,
                  child: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: FittedBox(
                      fit: BoxFit.fitHeight,
                      child: Image(
                        image:  AssetImage("assets/images/icons-lady.png"),
                      ),
                    ),
                  ),
                ),
                title: Text("Lorum Ipsum",style: TextStyle(fontSize: 24)),
                subtitle: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Monday, 25 March -03:33pm", style: TextStyle(fontSize: 16, color: Colors.black),),
                              Text("From: Lahore"),
                              Text("To: Karachi"),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius:BorderRadius.circular(5.0),
                                  color: Colors.black12,
                                ),
                                padding: EdgeInsets.all(3.0),
                                child: Text("At the Clinic",style: TextStyle(fontSize: 20),),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                trailing: Container(
                  margin: EdgeInsets.only(top: 30),
                  alignment: Alignment.center,
                  width: 50,
                  child: Container(
                    width: 50,
                    height: 70,

                    child:Icon(Icons.done,color: Colors.white),
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        shape: BoxShape.circle),
                  ),
                ) ,
              ),
            ),
            Divider(),
            Container(
              child: ListTile(
                leading: Container(
                  height: 90,
                  width: 70,
                  child: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: FittedBox(
                      fit: BoxFit.fitHeight,
                      child: Image(
                        image:  AssetImage("assets/images/icons-lady.png"),
                      ),
                    ),
                  ),
                ),
                title: Text("Lorum Ipsum",style: TextStyle(fontSize: 24)),
                subtitle: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Monday, 25 March -03:33pm", style: TextStyle(fontSize: 16, color: Colors.black),),
                              Text("From: Lahore"),
                              Text("To: Karachi"),
                              Container(
                                padding: EdgeInsets.all(3.0),
                                decoration: BoxDecoration(
                                  borderRadius:BorderRadius.circular(5.0),
                                  color: Colors.black12,

                                ),
                                child: Text("At the Clinic",style: TextStyle(fontSize: 20),),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                trailing: Container(
                  margin: EdgeInsets.only(top: 30),
                  alignment: Alignment.center,
                  width: 50,
                  child: Container(
                    width: 50,
                    height: 70,

                    child:Icon(Icons.done,color: Colors.white),
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        shape: BoxShape.circle),
                  ),
                ) ,
              ),
            ),
            Divider(),

          ],
        );
      },
    );

  }

 Widget getScheduleTab() {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          getTableCalendar(),
          Divider(),
          //timeline
          Padding(
            padding: EdgeInsets.only(left: 18.0, top: 20),
            child: Text(
              "Today's Timeline",
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          getListView(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: _showAddDialog,
              ),
            ),
          )
        ],
      ),
    );

  }
}

