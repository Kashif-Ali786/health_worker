import 'package:flutter/material.dart';
import 'package:flutterapp1/screens/account.dart';
import 'package:flutterapp1/screens/sign_in.dart';

class ChangePassword extends StatelessWidget {
  reset() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
            child: Icon(Icons.arrow_back_ios,),
          onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Account();}
          )),
        ),
        title: Text('Change Password'),

      ),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  hintText: 'Current Password',
                  prefixIcon: Icon(Icons.lock_outline),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: 'New Password',
                  prefixIcon: Icon(Icons.lock_outline),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  prefixIcon: Icon(Icons.lock_outline),
                ),
              ),
              SizedBox(height: 10),
              Container(
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
                                return SignIn();
                              }));
                    },
                    label: Text(
                      'Change Password',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ))        ],
          )),
    );
  }
}