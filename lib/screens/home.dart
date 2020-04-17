import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterapp1/screens/timeline.dart';
import 'package:flutterapp1/screens/details.dart';
import 'dart:ui';
import 'package:table_calendar/table_calendar.dart';
import 'start_shift.dart';
import 'my_earnings.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  int _currentIndex = 0;

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
      onDaySelected: (date, events) {
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
          todayDayBuilder: (context, date, events) => Container(
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
              )),
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
                  PastTab(),
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
    if (_currentIndex == 0)
    {
      return getTabBarView();
    }
    else if (_currentIndex == 2)
    {
      return SettingTab();
    }
//    else if(_currentIndex==1)
//      {
//        return BadgeTimeline();
//      }
  }

  Widget getScaffoldData() {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Trip Details"),
        ),
        body: getParticularView(),
        bottomNavigationBar: getBottomNavBar(),
      ),
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
          GetListView(),
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

  Widget getBottomNavBar() {
    return BottomNavigationBar(
        backgroundColor: Colors.grey[200],
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
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
        }
        );
  }
}

class PastTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) {
        return Column(
          children: <Widget>[
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(top: 15),
                child: ListTile(
                  leading: Container(
                    height: 90,
                    width: 65,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("assets/images/icons-lady.png"),
                      backgroundColor: Theme.of(context).primaryColor,
                    ),
                  ),
                  title: Text("Lorum Ipsum", style: TextStyle(fontSize: 24)),
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
                                Padding(
                                  padding:
                                  const EdgeInsets.symmetric(vertical: 5.0),
                                  child: Text(
                                    "Monday, 25 March -03:33pm",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black),
                                  ),
                                ),
                                Text("From: Lahore"),
                                Text("To: Karachi"),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: Colors.grey[200],
                                  ),
                                  padding: EdgeInsets.all(3.0),
                                  child: Text(
                                    "At the Clinic",
                                    style: TextStyle(fontSize: 20),
                                  ),
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
                      child: Icon(Icons.done, color: Colors.white),
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          shape: BoxShape.circle),
                    ),
                  ),
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ShiftStart();
                }));
                print("List Tapped");
              },
            ),
            Divider(),
          ],
        );
      },
    );
  }
}

class GetListView extends StatelessWidget {
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
                          child: Text("00:00 PM")),
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

class SettingTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(30.0),
          child: Row(
            children: <Widget>[
              Container(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://dyl80ryjxr1ke.cloudfront.net/external_assets/hero_examples/hair_beach_v1785392215/original.jpeg'),
                  radius: 50,
                ),
              ),
              Container(
                height: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                      child: Text(
                        "Lorum Ipsum",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 1),
                      child: Text("1234567"),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 0),
                      child: Text("Lorumipusm@gmail.com"),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical:5.0),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left:30,right: 12),
                child: Icon(Icons.person_outline),
              ),
              Container(
//                padding:const EdgeInsets.symmetric(horizontal: 15),
//                margin: EdgeInsets.symmetric( horizontal: 5),
                child: Text("Edit Account", style: TextStyle(fontSize: 18),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 180),
                child: Icon(Icons.keyboard_arrow_right),
              ),
            ],
          ),
        ),
        Divider(),
        Container(
          margin: EdgeInsets.symmetric(vertical:5.0,),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left:30,right: 12),
                child: Icon(Icons.lock_outline),
              ),
              Container(
                child: Text("Change Password", style: TextStyle(fontSize: 18),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 130),
                child: Icon(Icons.keyboard_arrow_right),
              ),
            ],
          ),
        ),
        Divider(),
        Container(
          margin: EdgeInsets.symmetric(vertical:5.0,),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left:30,right: 12),
                child: Icon(Icons.next_week),
              ),
              Container(
                child: Text("My Earnings", style: TextStyle(fontSize: 18),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MyEarnings();
                  }
                  )
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(left: 180),
                  child: Icon(Icons.keyboard_arrow_right,),
                ),
              ),
            ],
          ),

        ),
        Divider(),
        Container(
          margin: EdgeInsets.symmetric(vertical:5.0,),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left:30,right: 12),
                child: Icon(Icons.perm_device_information),
              ),
              Container(
                child: Text("About Eppione", style: TextStyle(fontSize: 18),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 160),
                child: Icon(Icons.keyboard_arrow_right),
              ),
            ],
          ),
        ),
        Divider(),
        Container(
          margin: EdgeInsets.symmetric(vertical:5.0,),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left:30,right: 12),
                child: Icon(Icons.not_listed_location),
              ),
              Container(
                child: Text("FAQ's", style: TextStyle(fontSize: 18),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 238),
                child: Icon(Icons.keyboard_arrow_right),
              ),
            ],
          ),
        ),
        Divider(),
        Container(
          margin: EdgeInsets.symmetric( vertical:5.0,),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left:30,right: 12),
                child: Icon(Icons.call),
              ),
              Container(
                child: Text("Contact Us", style: TextStyle(fontSize: 18),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 188),
                child: Icon(Icons.keyboard_arrow_right),
              ),
            ],
          ),
        ),
        Divider(),
        Container(
          margin: EdgeInsets.symmetric(vertical:5.0,),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left:30,right: 12),
                child: Icon(Icons.power_settings_new),
              ),
              Container(
                child: Text("Logout", style: TextStyle(fontSize: 18),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 223),
                child: Icon(Icons.keyboard_arrow_right),
              ),
            ],
          ),
        ),
        Divider(),


      ],
    );
  }
}



