import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'lets_start.dart';

class EditAccount extends StatefulWidget {
  @override
  _EditAccountState createState() => _EditAccountState();
}

class _EditAccountState extends State<EditAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Account"),
      ),
      resizeToAvoidBottomInset : false,

      body: Container(
        child: Column(
          children: <Widget>[
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
                            Navigator.pop(context);
                          },
                          label: Text(
                            'Update',
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
