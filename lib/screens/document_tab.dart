import 'package:flutter/material.dart';



class DocumentTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
