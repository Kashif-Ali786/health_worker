import 'package:flutter/material.dart';

class Details extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DetailsState();
  }

}
class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            moveToLastSreen();
          },
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Lorem Ipsum"),
            Text("Wed 12, March 2020",style: TextStyle(fontSize: 12),)
          ],
        ),
      ),
      body: getAllTabBars(),
    );
  }

  void moveToLastSreen() {
    Navigator.pop(context);
  }

  Widget getNotesTab() {
    return ListView(
      children: <Widget>[
        Container(
          margin:EdgeInsets.only(left: 10,bottom: 10,right: 20,top: 40),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black12,
          ),
          child: ListTile(
            title: Text("lorum ipsum",style: TextStyle(fontSize: 20),),
            subtitle: Text("lorum ipsum gas aliquana boudsljsd"),
          ),
        ),
        Divider(),
        Container(

          margin:EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black12,
          ),
          child: ListTile(
            title: Text("lorum ipsum",style: TextStyle(fontSize: 20),),
            trailing: Icon(Icons.do_not_disturb_alt),
          ),
        ),
        Divider(),
        Container(
          margin:EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black12,
          ),
          child: ListTile(
            title: Text("lorum ipsum",style: TextStyle(fontSize: 20),),
            subtitle: Text("lorum ipsum gas aliquana boudsljsd"),
          ),
        ),
        Divider(),
        Container(
          margin:EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black12,
          ),
          child: ListTile(
            title: Text("lorum ipsum",style: TextStyle(fontSize: 20),),
            subtitle: Text("lorum ipsum gas aliquana boudsljsd"),
          ),
        ),
             Container(
               alignment: Alignment.bottomRight,
               padding: EdgeInsets.only(right: 20),
               child: FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: (){},
            ),
             ),



      ],
    );
  }

  Widget getDetailsTab() {
    return ListView(
      children: <Widget>[
        Container(
          margin:EdgeInsets.only(top: 15),
          child: ListTile(
            leading: Icon(Icons.watch_later),
            title: Text("04:22 - 07:30 PM", style: TextStyle(color: Colors.black54),),
          ),
        ),
        Divider(),
        Container(
          margin:EdgeInsets.only(top: 5),
          child: ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text("Wed 12, March 2020", style: TextStyle(color: Colors.black54)),
          ),
        ),
        Divider(),
        Container(
          child:ListTile(
              leading: Icon(Icons.location_on),
              subtitle: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 70,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                height:35,
                                child: Text("From: ",)),
                            Container(
                                height:35,
                                child: Text("To: "))
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                height:35,
                                child: Text("Lorem I dummy text. New text",)),
//                            Divider(),
                            Container(
                                height:35,
                                child: Text("Lorem Ipsum is simply dummy text. New Teext"))

                          ],
                        ),
                      )

                    ],
                  )
                ],
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Details();
                }));
              }
          ),

        ),


        Divider(),
        Container(
          margin:EdgeInsets.only(top: 5),
          child: ListTile(
            leading: Icon(Icons.event_note),
            title: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.", style: TextStyle(color: Colors.black54)),
          ),
        ),
        Container(
            margin: EdgeInsets.all( 30),
            child: FloatingActionButton.extended(onPressed: (){}, label: Text('Track your trip'),))

      ],
    );
  }

  Widget getAllTabBars() {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 30),
            constraints: BoxConstraints.expand(height: 60),
            child: Container(
              margin: EdgeInsets.only(left: 10,right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.black12,
              ),
              child: TabBar(
                indicator: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25.0),topLeft: Radius.circular(25.0))
                ),
                unselectedLabelColor: Colors.black87,
                tabs: <Widget>[
                  Text('Details',style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),),
                  Text('Document',style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),),
                  Text('Notes',style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: TabBarView(
                children: <Widget>[
                  //Details Tab
                  getDetailsTab(),
                  getDocumentTab(),
                  //Note Tab
                   getNotesTab(),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget getDocumentTab() {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(30),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        Container(
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Theme.of(context).primaryColor,width: 3),
                    borderRadius: BorderRadius.circular(10.0)
                ),
                padding: const EdgeInsets.all(30),
                margin: const EdgeInsets.only(top: 25.0,left: 30.0,right: 30.0,bottom: 10),
                child: Image(
                  image:  AssetImage("assets/images/icons-lady.png"),
                ),
              ),
              Text("Medical History")

            ],
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Theme.of(context).primaryColor,width: 3),
                    borderRadius: BorderRadius.circular(10.0)
                ),
                padding: const EdgeInsets.all(30),
                margin: const EdgeInsets.only(top: 25.0,left: 30.0,right: 30.0,bottom: 10),
                child: Image(
                  image:  AssetImage("assets/images/icons-lady.png"),
                ),
              ),
              Text("Medical History")

            ],
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Theme.of(context).primaryColor,width: 3),
                    borderRadius: BorderRadius.circular(10.0)
                ),
                padding: const EdgeInsets.all(30),
                margin: const EdgeInsets.only(top: 30.0,left: 30.0,right: 30.0,bottom: 10),
                child: Image(
                  image:  AssetImage("assets/images/icons-lady.png"),
                ),
              ),
              Text("Medical History")

            ],
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Theme.of(context).primaryColor,width: 3),
                    borderRadius: BorderRadius.circular(10.0)
                ),
                padding: const EdgeInsets.all(30),
                margin: const EdgeInsets.only(top: 30.0,left: 30.0,right: 30.0,bottom: 10),
                child: Image(
                  image:  AssetImage("assets/images/icons-lady.png"),
                ),
              ),
              Text("Medical History")

            ],
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Theme.of(context).primaryColor,width: 3),
                    borderRadius: BorderRadius.circular(10.0)
                ),
                padding: const EdgeInsets.all(30),
                margin: const EdgeInsets.only(top: 30.0,left: 30.0,right: 30.0,bottom: 10),
                child: Image(
                  image:  AssetImage("assets/images/icons-lady.png"),
                ),
              ),
              Text("Medical History")

            ],
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Theme.of(context).primaryColor,width: 3),
                    borderRadius: BorderRadius.circular(10.0)
                ),
                padding: const EdgeInsets.all(30),
                margin: const EdgeInsets.only(top: 30.0,left: 30.0,right: 30.0,bottom: 10),
                child: Image(
                  image:  AssetImage("assets/images/icons-lady.png"),
                ),
              ),
              Text("Medical History")

            ],
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Theme.of(context).primaryColor,width: 3),
                    borderRadius: BorderRadius.circular(10.0)
                ),
                padding: const EdgeInsets.all(30),
                margin: const EdgeInsets.only(top: 30.0,left: 30.0,right: 30.0,bottom: 10),
                child: Image(
                  image:  AssetImage("assets/images/icons-lady.png"),
                ),
              ),
              Text("Medical History")

            ],
          ),
        ),

      ],
    );

  }
}