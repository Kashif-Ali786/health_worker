import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'lets_start.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,

      body: Container(
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: 80,bottom: 30),
                child: Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 38),
                )),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),

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
                    Spacer(),

                    Container(
                        margin: EdgeInsets.only(bottom: 40),
                        width: 400,
                        child: FloatingActionButton.extended(
                          backgroundColor:
                          Theme.of(context).primaryColor,
                          onPressed: () {
                            print('continue button');
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return LetsStart();
                            }
                            )
                            );
                          },
                          label: Text(
                            'Done',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
