import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:namkaran/models/items.dart';
import 'package:http/http.dart' as http;

class ItemsData extends StatefulWidget {
  const ItemsData({Key? key}) : super(key: key);

  @override
  _ItemsDataState createState() => _ItemsDataState();
}

class _ItemsDataState extends State<ItemsData> {
  UserDataRes? user;
  List<UserDataRes> data = [];
  var jdecode = [];
  callApi() async {
    var resp = await http.get(
        Uri.parse("https://random-data-api.com/api/users/random_user?size=3"));
    print(resp);
    jdecode = jsonDecode(resp.body);
    setState(() {
      // user = UserDataRes.fromJson(jsonDecode(resp.body));
      for (var item in jdecode) {
        data.add(UserDataRes.fromJson(item));
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    callApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("${user?.address.city}"),
        ),
      ),
    );
  }
}
