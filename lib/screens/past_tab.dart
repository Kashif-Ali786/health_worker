import 'package:flutter/material.dart';
import 'package:flutterapp1/screens/start_shift.dart';


class PastTab extends StatefulWidget {
  @override
  _PastTabState createState() => _PastTabState();
}

class _PastTabState extends State<PastTab> {

  DateTime _dateTime;
  // String fomattedDate=DateFormat.yMMMd().format(_dateTime);
  TimeOfDay _timeOfDay;


  @override
  void initState() {
    super.initState();
    _dateTime=DateTime.now();
    _timeOfDay=TimeOfDay.now();
  }
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
                                    "${_dateTime.month}, ${_dateTime.day} | ${_timeOfDay.format(context).toUpperCase()}",
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
