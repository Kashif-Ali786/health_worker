import 'package:flutter/material.dart';

import 'details_tab.dart';
import 'document_tab.dart';
import 'notes_tab.dart';

class Details extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DetailsState();
  }

}
class _DetailsState extends State<Details> {
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            moveToLastSreen();
          },
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Lorem Ipsum"),
            Text("Wed 12, March 2020",style: TextStyle(fontSize: 12),)
          ],
        ),
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 20,top: 30),
              constraints: BoxConstraints.expand(height: 60),
              child: Container(
                margin: EdgeInsets.only(left: 10,right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.grey[200],
                ),
                child: TabBar(
                  indicator: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: getBorderRadius(),
                  ),
                  unselectedLabelColor: Colors.black87,
                  tabs: <Widget>[
                    Text('Details',style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),),
                    Text('Document',style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),),
                    Text('Notes',style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),),
                  ],
                  onTap: (index){
                    setState(() {
                      _currentIndex = index;
                      print(_currentIndex);
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  //Details Tab
                  DetailsTab(),
                  //Document tab
                  DocumentTab(),
                  //Note Tab
                  NotesTab(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void moveToLastSreen() {
    Navigator.pop(context);
  }

  getBorderRadius() {
    if (_currentIndex == 0) {
      return BorderRadius.only(
          bottomLeft: Radius.circular(25.0,),
          topLeft: Radius.circular(25.0)
      );
    } else if (_currentIndex == 2) {
      return BorderRadius.only(
          bottomRight: Radius.circular(25.0
          ),
          topRight: Radius.circular(25.0)
      );
    }
    return BorderRadius.circular(0.0);
  }
}




