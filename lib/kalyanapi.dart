import 'dart:convert';
// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:namkaran/models/kalyanapiexample.dart';

class KalyanApiExample extends StatefulWidget {
  const KalyanApiExample({Key? key}) : super(key: key);

  @override
  _KalyanApiExampleState createState() => _KalyanApiExampleState();

  static KalyanApiExample? fromJson(JsonCodec json) {}
}

class _KalyanApiExampleState extends State<KalyanApiExample> {
  KalyanApiExample? kalyandata;
  var dict = {};
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    callapi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }

  callapi() async {
    Map<String, dynamic> keys = {
      "request": "home_page",
      "device_type": "android",
      "country": "india"
    };
    var resp = await http.post(
        Uri.parse("https://www.kalyanmobile.com/apiv1_staging/home_page.php"),
        body: keys);

    Map<String, dynamic> result = json.decode(resp.body);
    print(result);

    // setState(() {
    //   kalyandata = KalyanApiExample.fromJson(json.decode(resp.body));
    // });

    // print("${kalyandata.}");
  }
}
