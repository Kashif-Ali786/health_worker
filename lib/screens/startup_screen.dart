import 'package:flutter/material.dart';
import 'package:flutterapp1/screens/sign_in.dart';

class Startup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
//        image: DecorationImage(
//          image: NetworkImage('https://image.shutterstock.com/image-vector/yes-icon-vector-illustration-style-260nw-571146769.jpg'),
//          fit: BoxFit.none
//        )
      ),
      child: GestureDetector(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Epyonne',style: TextStyle(
                fontSize: 52,
                decoration: TextDecoration.none,
                color: Colors.white
            )),
            Text('HEALTHCARE',style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w200,
                decoration: TextDecoration.none,
                color: Colors.white
            )
            )
          ],
        ),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SignIn();}
          ));

        }
      ),
    );
  }
}
