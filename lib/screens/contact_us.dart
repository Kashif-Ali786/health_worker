import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'lets_start.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Us"),
      ),
      resizeToAvoidBottomInset : false,

      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 100, horizontal: 30),

                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Email',
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
                            hintText: 'Message',
                            prefixIcon: Icon(Icons.message)),
                      ),
                    ),
                    SizedBox(height: 50,),

                    Container(
                        margin: EdgeInsets.only(bottom: 40),
                        width: 400,
                        child: FloatingActionButton.extended(
                          backgroundColor:
                          Theme.of(context).primaryColor,
                          onPressed: () {
                            print('continue button');
                            Navigator.pop(context);
                          },
                          label: Text(
                            'Send Message',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
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

