import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'lets_start.dart';
import 'notes_tab.dart';

class AddNotes extends StatefulWidget {
  @override
  _AddNotesState createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {

  final taskList=List<Notes>();

  TextEditingController _titleController=TextEditingController();
  TextEditingController _detailController=TextEditingController();

  File imageFile;
  Widget _decideImageView(){
    if(imageFile==null) {
        return Text("No Selected Image");
    } else {
        return Image.file(imageFile,width: 350,height: 350,);
    }
  }

   Notes notes=Notes();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Note"),
        actions: <Widget>[
          GestureDetector(
              child: Icon(Icons.attach_file,),
            onTap: ()=> _showChoiceDialog(context),
          ),
          SizedBox(width: 50,),
        ],
      ),
      resizeToAvoidBottomInset : false,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: ListView(
                children: <Widget>[
                  _decideImageView(),
                  SizedBox(height: 16,),
                  TextField(
                    controller: _titleController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Title',
                    ),
                  ),
                  Container(
                    child: TextField(
                      controller: _detailController,
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Description',
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                      margin: EdgeInsets.only(bottom: 40),
                      width: 400,
                      child: FloatingActionButton.extended(
                        backgroundColor:
                        Theme.of(context).primaryColor,
                        onPressed: () {
//                          setState(() {
//                            final note=Notes(taskTitle: _titleController.text,taskDetail: _detailController.text);
//                            Navigator.pop(context,NotesTab(notes:note));
//                            print(note.taskTitle);
//                            print(note.taskDetail);
//                          });
                          setState(()=>taskList.add(Notes(taskTitle: _titleController.text,taskDetail: _detailController.text)));
//                          Navigator.pop(context,NotesTab(taskList: taskList,));
                          Navigator.of(context).pop(taskList);
                          print("Title=>${taskList[0].taskTitle}");
                          print("Detail=>${taskList[0].taskDetail}");
                          _titleController.clear();
                          _detailController.clear();
                        },
                        label: Text('Save', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                      )
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }


  Future<void>_showChoiceDialog(BuildContext context){
    return showDialog(context: context,builder: (BuildContext context){
      return AlertDialog(
        title: Text("Select a Choice!"),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                child: Text("Gallery"),
                onTap: _openGallery,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
              ),
              GestureDetector(
                child: Text("Camera"),
                onTap: _openCamera,
              )

            ],
          ),

        ),
      );
    });
  }

  _openGallery() async{
    var picture=await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState(() {
      imageFile=picture;
    });
    Navigator.of(context).pop();

  }

  _openCamera() async{
    var picture=await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState(() {
      imageFile=picture;
    });
    Navigator.of(context).pop();

  }
}

class Notes{
  String taskTitle;
  String taskDetail;
  Image taskImage;
  Notes({this.taskTitle,this.taskDetail,this.taskImage});

}