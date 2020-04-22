import 'package:flutter/material.dart';


class NotesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          margin:EdgeInsets.only(left: 10,bottom: 10,right: 20,top: 40),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black12,
          ),
          child: ListTile(
            title: Text("lorum ipsum",style: TextStyle(fontSize: 20),),
            subtitle: Text("lorum ipsum gas aliquana boudsljsd"),
          ),
        ),
        Divider(),
        Container(

          margin:EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black12,
          ),
          child: ListTile(
            title: Text("lorum ipsum",style: TextStyle(fontSize: 20),),
            trailing: Icon(Icons.do_not_disturb_alt),
          ),
        ),
        Divider(),
        Container(
          margin:EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black12,
          ),
          child: ListTile(
            title: Text("lorum ipsum",style: TextStyle(fontSize: 20),),
            subtitle: Text("lorum ipsum gas aliquana boudsljsd"),
          ),
        ),
        Divider(),
        Container(
          margin:EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black12,
          ),
          child: ListTile(
            title: Text("lorum ipsum",style: TextStyle(fontSize: 20),),
            subtitle: Text("lorum ipsum gas aliquana boudsljsd"),
          ),
        ),
        Container(
          alignment: Alignment.bottomRight,
          padding: EdgeInsets.only(right: 20),
          child: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: (){},
          ),
        ),



      ],
    );
  }
}
