import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

enum Status { loading, success, error }
Status status = Status.loading;
Future<List<Branch>> fetchAlbum() async {
  final response = await http.post(
    Uri.parse('http://api.chunon.me/getBranch'),
  );

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    status = Status.success;
    // List b = jsonDecode(response.body);
    // print(b);
    List<Branch> myModels = (jsonDecode(response.body) as List)
        .map((i) => Branch.fromJson(i))
        .toList();
    print(myModels);
    return myModels;
  } else {
    status = Status.error;
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Branch {
  String? branchID;
  String? branchName;
  String? branchAddress;
  String? branchBusinessTime;
  String? branchDistrict;

  Branch(
      {this.branchID,
        this.branchName,
        this.branchAddress,
        this.branchBusinessTime,
        this.branchDistrict});

  Branch.fromJson(Map<String, dynamic> json) {
    branchID = json['branchID'];
    branchName = json['branchName'];
    branchAddress = json['branchAddress'];
    branchBusinessTime = json['branchBusinessTime'];
    branchDistrict = json['branchDistrict'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['branchID'] = this.branchID;
    data['branchName'] = this.branchName;
    data['branchAddress'] = this.branchAddress;
    data['branchBusinessTime'] = this.branchBusinessTime;
    data['branchDistrict'] = this.branchDistrict;
    return data;
  }
}

// void main() => runApp(const MyApp());
Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late List<Branch> acc;

  @override
  void initState() {
    super.initState();
    // fetchAlbum().then((value) {
    //   acc = value;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
          // child: Text(Account.fromJson().accountID.toString()),
          // child: status == Status.success ? Text("Account ID = " + acc[0].branchID.toString()) : CircularProgressIndicator(),
          child: Text("testing"),
        ),
      ),
    );
  }
}
