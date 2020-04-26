import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



import 'lets_start.dart';
import 'notes_tab.dart';

class AddNotes extends StatefulWidget {
  @override
  _AddNotesState createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {
  TextEditingController _textEditingController=TextEditingController();
   String detail;
   String title;
   Notes notes=Notes();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Notes"),
        actions: <Widget>[
          GestureDetector(
              child: Icon(Icons.attach_file,),
     //       onTap: ()=> _showChoiceDialog(context),
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
                      controller: _textEditingController,
                      decoration: InputDecoration(
                          hintText: 'Title',
                          prefixIcon: Icon(Icons.text_fields)
                      ),
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
                            String textToSend = _textEditingController.text;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NotesTab(text: textToSend,),));
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


//  File imageFile;
//  Future<void>_showChoiceDialog(BuildContext context){
//    return showDialog(context: context,builder: (BuildContext context){
//      return AlertDialog(
//        title: Text("Select a Choice!"),
//        content: SingleChildScrollView(
//          child: ListBody(
//            children: <Widget>[
//              GestureDetector(
//                child: Text("Gallery"),
//                onTap: _openGallery(),
//              ),
//              Padding(
//                padding: EdgeInsets.all(8.0),
//              ),
//              GestureDetector(
//                child: Text("Camera"),
//                onTap: _openCamera(),
//              )
//
//            ],
//          ),
//
//        ),
//      );
//    });
//  }
//
//  _openGallery() async{
//    var picture=await ImagePicker.pickImage(source: ImageSource.gallery);
//    this.setState(() {
//      imageFile=picture;
//    });
//
//  }
//
//  _openCamera() async{
//    var picture=await ImagePicker.pickImage(source: ImageSource.camera);
//    this.setState(() {
//      imageFile=picture;
//    });
//  }
}

class Notes{
  String taskTitle;
  String taskDetail;
  Image taskImage;
  Notes({this.taskTitle,this.taskDetail});

}