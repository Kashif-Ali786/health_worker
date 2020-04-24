
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotesTab extends StatefulWidget {
  @override
  _NotesTabState createState() => _NotesTabState();
}

class _NotesTabState extends State<NotesTab> {

  TextEditingController _textEditingController=TextEditingController();
  List<String> listItem=['Kashif'];
//  List<String> subTitleList=['Kashif'];


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
              itemCount: listItem.length,
              itemBuilder: (context,index){
                return Column(
                  children: <Widget>[
                    Container(
                      margin:EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black12,
                      ),
                      child: ListTile(
                        title: Text(listItem[index],style: TextStyle(fontSize: 20),),
                        subtitle: Text("lorum ipsum gas aliquana boudsljsd"),
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
              createAlertDialog(context).then((onValue){
                SnackBar snackbar=SnackBar(content: Text("text=> $onValue"),);
                Scaffold.of(context).showSnackBar(snackbar);
                print('$onValue');
              });
            },
          ),
        ),

      ],

    );
  }

  Future<String> createAlertDialog(BuildContext context) {
    return showDialog(context: context,builder: (context){
      return AlertDialog(
        content: TextField(
          decoration: InputDecoration.collapsed(hintText: "Enter Title"),
          controller: _textEditingController,
          onSubmitted: (text){
            print("Text=> $text");
            _textEditingController.clear();
            setState(() {
              listItem.add(text);
            });
          },
        ),
        actions: <Widget>[
          MaterialButton(
            elevation: 5.0,
            child: Text("Sumbit"),
            onPressed: (){
              Navigator.of(context).pop(_textEditingController.text.toString());
            },
          )
        ],
      );
    });
  }

}



