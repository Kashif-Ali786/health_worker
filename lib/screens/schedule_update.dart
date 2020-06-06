
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScheduleUpdate extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[350],
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Theme.of(context).primaryColor,
            onPressed: () {},
          )
      ),
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Container(
            margin: EdgeInsets.symmetric(vertical:65.0,horizontal: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.grey[350],
          ),
            child: Column(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                    child: Text("Schedule Update",
                      style: TextStyle(
                          fontSize: 22,
                          decoration: TextDecoration.none,
                        color: Colors.black87
                      ),
                    )
                ),
                Divider(color: Colors.black87,thickness: 1.5,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25,vertical: 15),
                  child: Row(
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(Icons.calendar_today,size: 14,),
                              Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5)
                              ),
                              Text(
                                "Wednesday, 12 March, 2020",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.none,
                                    color: Colors.black87
                                ),
                              ),
                            ],
                          ),
                          Container(
                              margin: EdgeInsets.symmetric(vertical: 8)
                          ),
                          Row(
                            children: <Widget>[
                              Icon(Icons.timer,size: 14,),
                              Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5)
                              ),
                              Text(
                                "04:30-9:30 PM",
                                style: TextStyle(
                                    fontSize: 12,

                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.none,
                                    color: Colors.black87
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Spacer(),
                      Expanded(
                        flex: 6,
                        child: FlatButton(
                          onPressed: (){},
                          textColor: Colors.black26,
                          color: Colors.white30,
                          padding: const EdgeInsets.all(4.0),
                          child: new Text(
                            "Edit",
                          ),
                        ),
                      ),                  ],
                  ),
                ),
                Divider(),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25,vertical: 15),
                  child: Row(
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(Icons.calendar_today,size: 14,),
                              Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5)
                              ),
                              Text(
                                "Wednesday, 12 March, 2020",
                                style: TextStyle(
                                    fontSize: 12,

                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.none,
                                    color: Colors.black87
                                ),
                              ),
                            ],
                          ),
                          Container(
                              margin: EdgeInsets.symmetric(vertical: 8)
                          ),
                          Row(
                            children: <Widget>[
                              Icon(Icons.timer,size: 14,),
                              Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5)
                              ),
                              Text(
                                "04:30-9:30 PM",
                                style: TextStyle(
                                    fontSize: 12,

                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.none,
                                    color: Colors.black87
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Spacer(),
                      Expanded(
                        flex: 6,
                        child: FlatButton(
                          onPressed: (){},
                          textColor: Colors.black26,
                          color: Colors.white30,
                          padding: const EdgeInsets.all(4.0),
                          child: new Text(
                            "Edit",
                          ),
                        ),
                      ),                  ],
                  ),
                ),
                Divider(thickness: 1,color: Colors.grey,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25,vertical: 15),
                  child: Row(
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(Icons.calendar_today,size: 14,),
                              Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5)
                              ),
                              Text(
                                "Wednesday, 12 March, 2020",
                                style: TextStyle(
                                    fontSize: 12,

                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.none,
                                    color: Colors.black87
                                ),
                              ),
                            ],
                          ),
                          Container(
                              margin: EdgeInsets.symmetric(vertical: 8)
                          ),
                          Row(
                            children: <Widget>[
                              Icon(Icons.timer,size: 14,),
                              Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5)
                              ),
                              Text(
                                "04:30-9:30 PM",
                                style: TextStyle(
                                    fontSize: 12,

                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.none,
                                    color: Colors.black87
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Spacer(),
                      Expanded(
                        flex: 6,
                        child: FlatButton(
                          onPressed: (){},
                          textColor: Colors.black26,
                          color: Colors.white30,
                          padding: const EdgeInsets.all(4.0),
                          child: new Text(
                            "Edit",
                          ),
                        ),
                      ),                  ],
                  ),
                ),
                Divider(),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25,vertical: 15),
                  child: Row(
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(Icons.calendar_today,size: 14,),
                              Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5)
                              ),
                              Text(
                                "Wednesday, 12 March, 2020",
                                style: TextStyle(
                                    fontSize: 12,

                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.none,
                                    color: Colors.black87
                                ),
                              ),
                            ],
                          ),
                          Container(
                              margin: EdgeInsets.symmetric(vertical: 8)
                          ),
                          Row(
                            children: <Widget>[
                              Icon(Icons.timer,size: 14,),
                              Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5)
                              ),
                              Text(
                                "04:30-9:30 PM",
                                style: TextStyle(
                                    fontSize: 12,

                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.none,
                                    color: Colors.black87
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Spacer(),
                      Expanded(
                        flex: 6,
                        child: FlatButton(
                          onPressed: (){},
                          textColor: Colors.black26,
                          color: Colors.white30,
                          padding: const EdgeInsets.all(4.0),
                          child: new Text(
                            "Edit",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(color: Colors.black87,thickness: 1.5,),
                MaterialButton(
                  onPressed: (){},
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                    child: Text("Confirm",
                      style: TextStyle(
                          fontSize: 22,
                          decoration: TextDecoration.none,
                          color: Theme.of(context).primaryColor
                      ),
                    ),
                  ),
                )
              ],
            ),
        ),
      ),
    );
  }

}