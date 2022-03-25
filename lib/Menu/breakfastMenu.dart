import 'package:flutter/material.dart';
import '../Var/navigationBar.dart';
import '../Var/var.dart';
import '../main.dart';

class BreakfastMenuPage extends StatefulWidget {
  @override
  BreakfastMenuPageState createState() => BreakfastMenuPageState();

  BreakfastMenuPage() {
    print("BreakfastMenuPage");
  }
}

class BreakfastMenuPageState extends State<BreakfastMenuPage> {
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
                colors: <Color>[Colors.black12, Colors.white70],
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: Text(
              "啖啖肉",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext ctx, index) {
                return GestureDetector(
                  onTap: () {},
                  child: Card(
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(
                          left: 20, top: 10, bottom: 5, right: 0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 7,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    meatList[index].meatName.toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ),
                                // Container(
                                //   padding: EdgeInsets.symmetric(vertical: 5),
                                //   alignment: Alignment.centerLeft,
                                //   child: Text(
                                //     "Payment: ",
                                //     style: TextStyle(
                                //         fontWeight: FontWeight.bold,
                                //         fontSize: 15),
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: <Widget>[
                                meatList[index].meatImage.toString() != ""
                                    ? Container(
                                        padding: EdgeInsets.only(bottom: 5),
                                        child: CircleAvatar(
                                          radius: 35,
                                          backgroundImage: NetworkImage(
                                              meatList[index]
                                                  .meatImage
                                                  .toString()),
                                        ),
                                      )
                                    : Container(),
                                Text(
                                  "\$" +
                                      meatList[index].price!.toStringAsFixed(2),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            // color: Colors.black54,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Colors.black87,
                  Colors.black54,
                ],
              ),
            ),
            // padding: EdgeInsets.only(left: 20),
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  // color: Colors.black87,
                  child: IconButton(
                    icon: Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  flex: 9,
                  child: Text(
                    "未選擇任何商品",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
                GestureDetector(
                  onTap: (){

                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    color: Color.fromRGBO(248, 91, 111, 1),
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Text(
                      "去下單",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
