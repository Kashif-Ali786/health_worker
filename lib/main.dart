
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp1/screens/sign_in.dart';
import 'package:flutterapp1/screens/startup_screen.dart';
import 'screens/home.dart';
import 'screens/timeline.dart';

void main()=>runApp(MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Scheduling App",
      home:  Startup(),
      theme: ThemeData(
       primarySwatch: Colors.teal,

      ),
    );
  }

}
