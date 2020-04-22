import 'package:flutter/material.dart';
import 'package:flutterapp1/screens/sign_in.dart';

class ResetPassword extends StatelessWidget {
  reset() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Reset Password'),
      ),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'To reset your password, enter the email you use to login to your account.',
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 32),
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
                      'Reset Password',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                  ))        ],
          )),
    );
  }
}