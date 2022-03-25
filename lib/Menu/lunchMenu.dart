
import 'package:flutter/material.dart';
import '../Var/navigationBar.dart';
import '../Var/var.dart';
import '../main.dart';

class LunchMenuPage extends StatefulWidget {
  @override
  LunchMenuPageState createState() => LunchMenuPageState();

  BreakfastMenuPage(){
    print("BreakfastMenuPage");
  }
}

class LunchMenuPageState extends State<LunchMenuPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 10,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Colors.black12,
                  Colors.white70
                ],
              ),
            ),

          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: Text(
              "丸及腸類",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),

        ],
      ),
    );
  }
}
