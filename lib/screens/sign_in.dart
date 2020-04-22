import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp1/screens/sign_up.dart';
import 'package:flutterapp1/screens/welcom_back.dart';

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
                  margin: EdgeInsets.symmetric(vertical: 50),
                  child: Text(
                    "Epyonne",
                    style: TextStyle(fontSize: 38),
                  )),
              Container(
                margin: EdgeInsets.only(top: 30),
                constraints: BoxConstraints.expand(height: 60),
                child: TabBar(
                  labelColor: Colors.black87,
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  indicatorColor: Theme.of(context).primaryColor,
                  unselectedLabelColor: Colors.grey,
                  tabs: <Widget>[
                    Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                    Text(
                      'Sign In',
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
                      //Details Tab
                      GestureDetector(
                        child: Center(child: Text("Sign Up")),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return SignUp();
                            }),
                          );
                        },
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
                        child: Column(
                          children: <Widget>[
                            TextField(
                              decoration: InputDecoration(
                                  hintText: 'Fullname',
                                  prefixIcon: Icon(Icons.person_outline)),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(top: 10),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: 'Password',
                                      prefixIcon: Icon(Icons.lock_outline)),
                                ),
                              ),
                            ),
                            Spacer(),
                            Expanded(
                              child: Container(
                                  margin: EdgeInsets.all(20),
                                  width: 300,
                                  child: FloatingActionButton.extended(
                                    backgroundColor:
                                    Theme.of(context).primaryColor,
                                    onPressed: () {
                                      print('continue button');
                                      Navigator.push(context,
                                          MaterialPageRoute(
                                              builder: (context) {
                                                return WelcomeBack();
                                              }));
                                    },
                                    label: Text(
                                      'Sign In',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24),
                                    ),
                                  )),
                            ),
                            MaterialButton(
                              onPressed: () {},
                              child: Text(
                                'Forgot Password?',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor),
                              ),
                            ),
                          ],
                        ),
                      ),
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
