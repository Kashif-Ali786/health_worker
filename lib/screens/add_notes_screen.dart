import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


import 'lets_start.dart';

class AddNotes extends StatefulWidget {
  @override
  _AddNotesState createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {

  File imageFile;

  Future<void>_showChoiceDialog(BuildContext context){
    return showDialog(context: context,builder: (BuildContext context){
      return AlertDialog(
        title: Text("Select a Choice!"),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                child: Text("Gallery"),
                onTap: _openGallery(),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
              ),
              GestureDetector(
                child: Text("Camera"),
                onTap: _openCamera(),
              )

            ],
          ),

        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Notes"),
        actions: <Widget>[
          GestureDetector(
              child: Icon(Icons.attach_file,),
            onTap: ()=> _showChoiceDialog(context),
          ),
          SizedBox(width: 50,),
        ],
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
                          hintText: 'Title',
                          prefixIcon: Icon(Icons.text_fields)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Description',
                            prefixIcon: Icon(Icons.text_fields)),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Text("No Image selected"),
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
                            'Save',
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

  _openGallery() async{
    var picture=await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState(() {
      imageFile=picture;
    });

  }

  _openCamera() async{
    var picture=await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState(() {
      imageFile=picture;
    });
  }
}
