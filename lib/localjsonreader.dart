import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:namkaran/models/userdata.dart';

class LocalJsonReader extends StatefulWidget {
  const LocalJsonReader({Key? key}) : super(key: key);

  @override
  _LocalJsonReaderState createState() => _LocalJsonReaderState();
}

class _LocalJsonReaderState extends State<LocalJsonReader> {
  var response;
  UserData? user;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    var resp = await rootBundle.loadString("assets/user.json");
    print("Resp is $resp");
    setState(() {
      user = UserData.fromJson(jsonDecode(resp));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return ListTile(
              title: Text("${user?.items[index].username}"),
            );
          },
          itemCount: user?.items.length,
        ),
      ),
    );
  }
}
