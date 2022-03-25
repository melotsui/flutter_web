
import 'package:flutter/material.dart';
import '../Var/navigationBar.dart';
import '../Var/var.dart';
import '../main.dart';

class TeaMenuPage extends StatefulWidget {
  @override
  TeaMenuPageState createState() => TeaMenuPageState();

  BreakfastMenuPage(){
    print("BreakfastMenuPage");
  }
}

class TeaMenuPageState extends State<TeaMenuPage> {
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
              "海鮮類",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),

        ],
      ),
    );
  }
}
