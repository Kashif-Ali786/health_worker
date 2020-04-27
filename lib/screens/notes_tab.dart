
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'add_notes_screen.dart';

//class NotesTab extends StatefulWidget {
////  final Notes notes;
////  var taskList=List<Notes>();
//
////  NotesTab({Key key, @required this.taskList}) : super(key: key);
//
//  @override
//  _NotesTabState createState() => _NotesTabState();
//}

class NotesTab extends StatelessWidget {

//  var taskList=List<Notes>();
  final List<Notes> taskList;

  NotesTab({Key key, @required this.taskList}) : super(key: key);

  TextEditingController _titleController=TextEditingController();
  TextEditingController _detailController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        getData(),
        Container(
          alignment: Alignment.bottomRight,
          padding: EdgeInsets.all( 20),
          child: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: ()async {
              var result=await Navigator.push(context, MaterialPageRoute(builder: (context) => AddNotes()));
              Scaffold.of(context).showSnackBar(SnackBar(content: Text("${result}"),duration: Duration(seconds: 10),));

//              createAlertDialog(context).then((onValue){
//                SnackBar snackbar=SnackBar(content: Text("Note Saved"),);
//                Scaffold.of(context).showSnackBar(snackbar);
//                print('$onValue');
//              });
            },
          ),
        ),

      ],

    );
  }

//  Future<String> createAlertDialog(BuildContext context) {
//    return showDialog(context: context,builder: (context){
//      return AlertDialog(
//        content: Container(
//          height: 100,
//          width: 420,
//          child: Column(
//            children: <Widget>[
//              TextField(
//                decoration: InputDecoration  (
//                    hintText: "Title",
//                    prefixIcon: Icon(Icons.text_rotation_none)
//                ),
//                controller: _titleController,
//              ),
//              TextField(
//                decoration: InputDecoration(
//                    hintText: "Description",
//                    hintMaxLines: 3,
//                    prefixIcon: Icon(Icons.text_rotation_none)
//                ),
//                controller: _detailController,
//              )
//            ],
//          ),
//        ),
//        actions: <Widget>[
//          MaterialButton(
//            elevation: 5.0,
//            child: Text("Cancel",style: TextStyle(color: Colors.blue)),
//            onPressed: (){
//              Navigator.pop(context);
//            },
//          ),
//          MaterialButton(
//            elevation: 5.0,
//            child: Text("Submit",style: TextStyle(color: Theme.of(context).primaryColor)),
//            onPressed: (){
//              setState(()=>task.add(Notes(taskTitle: _titleController.text,taskDetail: _detailController.text)));
//              Navigator.pop(context);
//              _titleController.clear();
//              _detailController.clear();
//            },
//          ),
//        ],
//      );
//    });
//  }

  Widget getData() {
    if(taskList==null) {
      return Text("no data");
    }else {
          return Expanded(
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
          );
        }
  }

}


//
//class Note{
//  String taskTitle;
//  String taskDetail;
//  Image taskImage;
//  Note(this.taskTitle,this.taskDetail,[this.taskImage]);
//}