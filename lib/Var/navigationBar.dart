import 'package:flutter/material.dart';
import 'package:test_web/test.dart';

import '../Menu/TeaMenu.dart';
import '../Menu/breakfastMenu.dart';
import '../Menu/dinnerMenu.dart';
import '../Menu/lunchMenu.dart';
import '../Menu/nightSnackMenu.dart';
import '../main.dart';
import '../Var/var.dart';

class NavigationBarPage extends StatefulWidget {
  @override
  NavigationBarPageState createState() => NavigationBarPageState();
  String? title;
}

class NavigationBarPageState extends State<NavigationBarPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    List<Widget> _kTabPages = [
      BreakfastMenuPage(),
      LunchMenuPage(),
      TeaMenuPage(),
      DinnerMenuPage(),
      NightSnackMenuPage(),
    ];

    List<Tab> _kTabs = [
      // Tab(text: '啖啖肉'),
      Tab(
        child: Text(
          "啖啖肉",
          // style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      Tab(
        child: Text(
          "丸及腸類",
          // style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      Tab(
        child: Text(
          "海鮮類",
          // style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      Tab(
        child: Text(
          "蔬菜類",
          // style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      Tab(
        child: Text(
          "啤酒",
          // style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    ];

    return DefaultTabController(
      length: _kTabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "友鋒味串燒 Fung BBQ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Color.fromRGBO(248, 91, 111, 1), Color.fromRGBO(248, 91, 111, 1),],
              ),
            ),
          ),
          // backgroundColor: Color.fromRGBO(248, 91, 111, 1),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {}, //TODO  do something
            ),
          ],
          bottom: TabBar(
            isScrollable: true,
            tabs: _kTabs,
            indicatorColor: Colors.white,
          ),
        ),
        body: TabBarView(
          children: _kTabPages,
        ),
      ),
    );
  }
}
