
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'add_notes_screen.dart';

class NotesTab extends StatefulWidget {
  @override
  _NotesTabState createState() => _NotesTabState();
}

class _NotesTabState extends State<NotesTab> {

  TextEditingController _titleController=TextEditingController();
  TextEditingController _detailController=TextEditingController();

  List<String> listItem=['Kashif'];
//  List<String> subTitleList=['Kashif'];

  var taskList=List<Task>();


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
              itemCount: taskList.length,
              itemBuilder: (context,index){
//                String key = tasks.keys.elementAt(index);
//                String val=tasks.values.elementAt(index);
                return Column(
                  children: <Widget>[
                    Container(
                      margin:EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black12,
                      ),
                      child: ListTile(
                        title: Text(taskList[index].taskTitle,style: TextStyle(fontSize: 20),),
                        subtitle: Text(taskList[index].taskDetail),
                      ),
                    ),
                    Divider(),
                  ],
                );
              }),
        ),
        Container(
          alignment: Alignment.bottomRight,
          padding: EdgeInsets.all( 20),
          child: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) {
                return AddNotes();}));

//              createAlertDialog(context).then((onValue){
//                SnackBar snackbar=SnackBar(content: Text("text=> $onValue"),);
//                Scaffold.of(context).showSnackBar(snackbar);
//                print('$onValue');
//              });
            },
          ),
        ),

      ],

    );
  }

  Future<String> createAlertDialog(BuildContext context) {
    return showDialog(context: context,builder: (context){
      return AlertDialog(
        content: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration.collapsed(hintText: "Enter Title"),
              controller: _titleController,
              onSubmitted: (title){
                print("Text=> $title");
                _titleController.clear();
                setState(() {
                  taskList.add(Task(title,'',));
                });
              },
            ),
            TextField(
              decoration: InputDecoration.collapsed(hintText: "Enter details"),
              controller: _detailController,
              onSubmitted: (detail){
                print("Text=> $detail");
                setState(() {
                  taskList.add(Task('', detail));
                  print(taskList);
                });
              },
            )
          ],
        ),
        actions: <Widget>[
          MaterialButton(
            elevation: 5.0,
            child: Text("Sumbit"),
            onPressed: (){
              Navigator.of(context).pop(_titleController.text.toString());
            },
          )
        ],
      );
    });
  }

}



class Task{
  String taskTitle;
  String taskDetail;
  Image taskImage;
  Task(this.taskTitle,this.taskDetail,[this.taskImage]);

  void set setTitles(String title)
  {
    this.taskTitle=title;
  }
  void set setDetailes(String details)
  {
    this.taskDetail=details;
  }
  
  void set taskImages(Image img)
  {
    this.taskImage=img;
  }

  String getTitle()
  {
    return this.taskTitle;
  }
  String get getDetails
  {
    return this.taskDetail;
  }


}