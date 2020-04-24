import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
      ),
      body: Container(
//        color: Colors.grey,
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: NetworkImage('https://st4.depositphotos.com/26272052/31143/v/1600/depositphotos_311433294-stock-illustration-white-line-first-aid-kit.jpg'),
              radius: 50,
            ),
            SizedBox(height: 10,),
            Text("Epyonee version 1.0.0.1",style: TextStyle(fontWeight: FontWeight.bold),),
            Divider(),
            Container(
//              color: Colors.grey[200],

              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 5,top: 20,bottom: 10),
                      child: Text("ABOUT",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
