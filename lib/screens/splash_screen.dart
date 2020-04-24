import 'package:splashscreen/splashscreen.dart';

import 'package:flutter/material.dart';
import 'package:flutterapp1/screens/sign_in.dart';

class Startup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 15,
      title: Text('Epyonee',style: TextStyle(fontSize: 52, decoration: TextDecoration.none, color: Colors.white)),
      backgroundColor: Theme.of(context).primaryColor,
      loaderColor: Colors.white,
      loadingText: Text("Please wait a moment",style: TextStyle(color: Colors.white),),
      navigateAfterSeconds: SignIn(),
    );
  }
}
