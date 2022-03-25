import 'package:flutter/material.dart';
import 'Menu/breakfastMenu.dart';
import 'Var/navigationBar.dart';
import 'Var/var.dart';
import 'test.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(
    MaterialApp(
      home: new HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return NavigationBarPage(
    );
  }
}
