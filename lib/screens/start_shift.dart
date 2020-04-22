import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class ShiftStart extends StatefulWidget {
  @override
  _ShiftStartState createState() => _ShiftStartState();
}

class _ShiftStartState extends State<ShiftStart> {

  TimeOfDay startTimeOfDay;
  TimeOfDay endTimeOfDay;

  CalendarController _calendarController;
  Map<DateTime, List<dynamic>> _events;
  TextEditingController _eventController;

  void initState() {
    super.initState();
    _calendarController = CalendarController();
    _events = {};
    _eventController = TextEditingController();
    startTimeOfDay=TimeOfDay(hour: 00,minute: 00);
    endTimeOfDay=TimeOfDay(hour: 00,minute: 00);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[

          Container(
              margin: EdgeInsets.only(top:35.0),

              width: 280,
            alignment: Alignment.center,
              child: Text("Select your working days and hours",textAlign: TextAlign.center ,style: TextStyle(fontSize: 22),)
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
          Divider(),
          Column(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.alarm),
                title: Text("Shift Start"),
                trailing: Text(" ${startTimeOfDay.format(context).toUpperCase()}"),
                onTap: _pickStartTime,
              ),
              ListTile(
                leading: Icon(Icons.alarm),
                title: Text("Shift End"),
                trailing: Text(" ${endTimeOfDay.format(context).toUpperCase()}"),
                onTap: _pickEndTime,
              ),
            ],
          ),
          Container(
              margin: EdgeInsets.all( 20),
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
      rowHeight: 50,
      events: _events,
      calendarStyle: CalendarStyle(
        highlightToday: true,
        highlightSelected: true,
        holidayStyle: TextStyle(fontSize: 16),
        weekendStyle: TextStyle(fontSize: 16),
        weekdayStyle: TextStyle(fontSize: 16),
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


  _pickStartTime() async{
    TimeOfDay startTime=await showTimePicker(
        context: context, initialTime: TimeOfDay(hour: 00,minute: 00));
    if(startTime!=null)
      {
        setState(() {
          startTimeOfDay=startTime;
        });
      }
  }
  _pickEndTime() async{
    TimeOfDay endTime=await showTimePicker(
        context: context, initialTime: endTimeOfDay);
    if(endTime!=null)
    {
      setState(() {
        endTimeOfDay=endTime;
      });
    }
  }
}
