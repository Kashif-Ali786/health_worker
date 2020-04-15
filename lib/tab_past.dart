import 'package:flutter/material.dart';
import 'home.dart';
class PastTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Scheduling App",
      home:  getListView(),
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
    );
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
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
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
                  ),
                ),
                Divider(),

              ],
            );
          },
        ));
  }
}
