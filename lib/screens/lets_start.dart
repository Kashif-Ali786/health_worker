import 'package:flutter/material.dart';
import 'package:flutterapp1/screens/home.dart';

class LetsStart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                child:Image(
                  image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/2/28/Ambulance_and_Female_Doctor_Cartoon.svg/1200px-Ambulance_and_Female_Doctor_Cartoon.svg.png'),
                )
            ),
            Container(
                margin: EdgeInsets.only(top: 70),
                width: 300,
                child: FloatingActionButton.extended(
                  backgroundColor: Theme.of(context).primaryColor,
                  onPressed: () {
                    print('continue button');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return Home();
                        }));
                  },
                  label: Text('Let\'s Start ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                )),

          ],
        ),
      ),
    );
  }
}
