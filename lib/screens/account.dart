import 'package:flutter/material.dart';


class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("Account"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left:20.0,bottom: 10.0,top: 20),
            child: Row(
              children: <Widget>[
                Container(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://dyl80ryjxr1ke.cloudfront.net/external_assets/hero_examples/hair_beach_v1785392215/original.jpeg'),
                    radius: 50,
                  ),
                ),
                Container(
                  height: 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                        child: Text(
                          "Lorum Ipsum",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 1),
                        child: Text("1234567"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 0),
                        child: Text("Lorumipusm@gmail.com"),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                ListTile(
                  leading:Icon(Icons.person_outline) ,
                  title:Text("Edit Account", style: TextStyle(fontSize: 18),),
                  trailing: Icon(Icons.keyboard_arrow_right) ,
                ),
                Divider(height: 0,),
                ListTile(
                  leading:Icon(Icons.lock_outline),
                  title:Text("Change Password", style: TextStyle(fontSize: 18)),
                  trailing: Icon(Icons.keyboard_arrow_right) ,
                ),
                Divider(height: 0,),
                ListTile(
                  leading:Icon(Icons.perm_device_information),
                  title:Text("About Eppione", style: TextStyle(fontSize: 18)
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right) ,
                ),
                Divider(height: 0,),
                ListTile(
                  leading:Icon(Icons.not_listed_location),
                  title:Text("FAQ's", style: TextStyle(fontSize: 18),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right) ,
                ),
                Divider(height: 0,),
                ListTile(
                  leading:Icon(Icons.call),
                  title:Text("Contact Us", style: TextStyle(fontSize: 18)
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right) ,
                ),
                Divider(height: 0,),
                ListTile(
                  leading:Icon(Icons.power_settings_new),
                  title:Text("Logout", style: TextStyle(fontSize: 18)
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right) ,
                ),
                Divider(height: 0,),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
