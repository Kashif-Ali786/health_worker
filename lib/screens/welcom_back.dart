import 'package:flutter/material.dart';
import 'package:flutterapp1/screens/home.dart';

class WelcomeBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                  child:Image(
                    image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR9yHwpz5YrzFecV-huDwjTwbsYHh9glTomOLdc6A21bHwiMoPE&usqp=CAU'),
                  )
              ),
              Container(
                  margin: EdgeInsets.only(top: 40,bottom: 10),
                  child: Text(
                    "Welcome Back",
                    style: TextStyle(fontSize: 32),
                  )),
              Container(
                  child: Text(
                    "Lorem Ipsum",
                    style: TextStyle(fontWeight: FontWeight.w300,fontSize: 20),
                  )),

              Container(
                  margin: EdgeInsets.only(top: 70),
                  width: 300,
                  child: FloatingActionButton.extended(
                    backgroundColor: Theme.of(context).primaryColor,
                    onPressed: () {
                      print('continue button');
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return Home();
                      }));
                    },
                    label: Text('Next',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                  )),

            ],
          ),
        ),
      ),
    );
  }
}
