import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp1/screens/reset_password.dart';
import 'package:flutterapp1/screens/welcom_back.dart';

import 'lets_start.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.symmetric(vertical: 30),
                  child: Text(
                    "Epyonne",
                    style: TextStyle(fontSize: 38),
                  )),
              Container(
                margin: EdgeInsets.only(top: 10),
                constraints: BoxConstraints.expand(height: 50),
                child: TabBar(
                  labelColor: Colors.black87,
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  indicatorColor: Theme.of(context).primaryColor,
                  unselectedLabelColor: Colors.grey,
                  tabs: <Widget>[
                    Text(
                      'Sign In',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: TabBarView(
                    children: <Widget>[
                      //Sign In tab
                      SignInTab(),
                      SignUpTab(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


class SignInTab extends StatefulWidget {
  @override
  _SignInTabState createState() => _SignInTabState();
}

class _SignInTabState extends State<SignInTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
      child: ListView(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
                hintText: 'Email',
                prefixIcon: Icon(Icons.email)),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock_outline)),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 30),
              width: 300,
              child: FloatingActionButton.extended(
                backgroundColor:
                Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeBack()));
                },
                label: Text(
                  'Sign In',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              )),
          MaterialButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    return ResetPassword();
                  }));
            },
            child: Text(
              'Forgot Password?',
              style: TextStyle(
                  color: Theme.of(context).primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}

class SignUpTab extends StatefulWidget {
  @override
  _SignUpTabState createState() => _SignUpTabState();
}

class _SignUpTabState extends State<SignUpTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
      child:SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  hintText: 'Fullname',
                  prefixIcon: Icon(Icons.person_outline)),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Phone',
                    prefixIcon: Icon(Icons.call)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Email',
                    prefixIcon: Icon(Icons.email)
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Location',
                    prefixIcon: Icon(Icons.location_on)
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.lock_outline)),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 30),
                width: 400,
                child: FloatingActionButton.extended(
                  backgroundColor:
                  Theme.of(context).primaryColor,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>LetsStart()));
                  },
                  label: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

