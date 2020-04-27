import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp1/screens/details.dart';
import 'package:flutterapp1/screens/splash_screen.dart';
import 'package:flutterapp1/screens/startup_screen.dart';


void main()=>runApp(MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Scheduling App",
      home:  SplashPage(),
      theme: ThemeData(
       primarySwatch: Colors.teal,

      ),
    );
  }

}
