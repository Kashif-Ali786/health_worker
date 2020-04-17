import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp1/screens/schedule_update.dart';
import 'package:table_calendar/table_calendar.dart';

class ShiftStart extends StatefulWidget {
  @override
  _ShiftStartState createState() => _ShiftStartState();
}

class _ShiftStartState extends State<ShiftStart> {

  CalendarController _calendarController;
  Map<DateTime, List<dynamic>> _events;
  TextEditingController _eventController;

  void initState() {
    super.initState();
    _calendarController = CalendarController();
    _events = {};
    _eventController = TextEditingController();
  }

  int val=0;
  final Map<int,Widget>TimeFormat=const<int,Widget>{
    0:Text("AM"),
    1:Text("PM"),

  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top:25.0),
            child: Image(
              width: 220,
              image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Icons8_flat_calendar.svg/1200px-Icons8_flat_calendar.svg.png'),
            ),
          ),
          Container(
            width: 280,
            alignment: Alignment.center,
              child: Text("Enter your working days and hours",style: TextStyle(fontSize: 22),)
          ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[400],
                borderRadius: BorderRadius.circular(10.0)
              ),
              margin: EdgeInsets.all(10.0),
              height: 5,
              width: 220,
            ),
//          Divider(thickness: 6,),
          getTableCalendar(),
          Container(
            child: Column(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.all(10.0),

                    child: Text("Shift Start",style: TextStyle(fontWeight: FontWeight.w300),)
                ),
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
                        margin: EdgeInsets.only(bottom:10.0),
                        child: Text("00:00",style: TextStyle(fontSize: 52),)
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.arrow_forward_ios),
                    )
                  ],
                ),
                Container(
                  child: CupertinoSlidingSegmentedControl(
                    backgroundColor: Theme.of(context).primaryColor,
                    thumbColor: Colors.white,
                    groupValue: val,
                    onValueChanged: (value){
                      setState(() {
                        val=value;
                      });
                    },
                    children:TimeFormat ,
                  ),
                )


              ],
            ),
          ),
          Container(
              margin: EdgeInsets.all( 30),
              width: 300,
              child: FloatingActionButton.extended(
                onPressed: (){
                  print('continue button');
//                  Navigator.push(context,
//                      MaterialPageRoute(builder: (context) {
//                        return Schedule();
//                      }));
                },
                label: Text('Continue'),
              )
          )


        ],
      ),
    );
  }

  Widget getTableCalendar() {
    return TableCalendar(
      events: _events,
      initialCalendarFormat: CalendarFormat.week,
      calendarStyle: CalendarStyle(
        highlightToday: true,
        highlightSelected: true,
        holidayStyle: TextStyle(fontSize: 18),
        weekendStyle: TextStyle(fontSize: 18),
        weekdayStyle: TextStyle(fontSize: 18),
        todayColor: Theme.of(context).primaryColor,
        selectedColor: Theme.of(context).primaryColor,
        todayStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          color: Colors.white,
        ),
      ),
      headerStyle: HeaderStyle(
        centerHeaderTitle: true,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.w300
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

}
