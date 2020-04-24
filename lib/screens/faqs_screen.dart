import 'package:flutter/material.dart';

class FAQs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FAQ's"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
//        color: Colors.grey,
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: NetworkImage('https://st4.depositphotos.com/26272052/31143/v/1600/depositphotos_311433294-stock-illustration-white-line-first-aid-kit.jpg'),
              radius: 50,
            ),
            Divider(),
            Container(
//              color: Colors.grey[200],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Q1: How to use Eppyonee? ",style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged"),
                  Divider(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
