import 'package:flutter/material.dart';
import '../Var/navigationBar.dart';
import '../Var/var.dart';
import '../main.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:another_flushbar/flushbar_route.dart';

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
          Flexible(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext ctx, index) {
                return GestureDetector(
                  onTap: () {
                    // Flushbar(
                    //   // There is also a messageText property for when you want to
                    //   // use a Text widget and not just a simple String
                    //   message: 'Hello from a Flushbar',
                    //   // Even the button can be styled to your heart's content
                    //   mainButton: FlatButton(
                    //     child: Container(
                    //       width: MediaQuery.of(context).size.width * 0.4,
                    //       child: Divider(
                    //         thickness: 3,
                    //         color: Colors.grey,
                    //       ),
                    //     ),
                    //
                    //     onPressed: () { print("Simple snackbar example");},
                    //   ),
                    //   // duration: Duration(seconds: 3),
                    //   // Show it with a cascading operator
                    // )..show(context);
                    showModalBottomSheet(
                      useRootNavigator: true,
                      context: context,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20)),
                      ),
                      backgroundColor: Colors.white,
                      builder: (BuildContext context) => SingleChildScrollView(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(top: 5),
                                width: MediaQuery.of(context).size.width * 0.3,
                                child: Divider(
                                  thickness: 3,
                                  color: Colors.grey,
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    padding: EdgeInsets.symmetric(vertical: 5),
                                    child: Text(
                                      meatList[index].meatName.toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Column(
                                    children: <Widget>[
                                      Container(
                                        alignment: Alignment.centerRight,
                                        padding: EdgeInsets.symmetric(),
                                        child: Text(
                                          "HK\$" +
                                              meatList[index]
                                                  .price!
                                                  .toStringAsFixed(1),
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                              color: Colors.grey),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "HK\$" +
                                              meatList[index]
                                                  .price!
                                                  .toStringAsFixed(1),
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Row(
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: () {},
                                      child: CircleAvatar(
                                        backgroundColor:
                                            Color.fromRGBO(248, 91, 111, 1),
                                        radius: 12,
                                        child: Icon(
                                          Icons.remove,
                                          size: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Text(
                                        "1",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: CircleAvatar(
                                        backgroundColor:
                                            Color.fromRGBO(248, 91, 111, 1),
                                        radius: 12,
                                        child: Icon(
                                          Icons.add,
                                          size: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary:
                                                Color.fromRGBO(248, 91, 111, 1),
                                            textStyle: TextStyle(fontSize: 12)),
                                        onPressed: () {},
                                        child: Text('加入購物車'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
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
                                //   alignment: Alignment.centerLeft,
                                //   height: 15,
                                // //  https://cdn.imgbin.com/3/12/4/hot-tag-hot-label-xThTT8aE.jpg
                                //   decoration: BoxDecoration(
                                //     image: DecorationImage(
                                //       image: NetworkImage('https://cdn.imgbin.com/3/12/4/hot-tag-hot-label-xThTT8aE.jpg'),
                                //       fit: BoxFit.contain,
                                //     ),
                                //   ),
                                // )
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
                                      meatList[index].price!.toStringAsFixed(1),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    // fontSize: 15,
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
                  padding: EdgeInsets.symmetric(horizontal: 15),
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
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
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
