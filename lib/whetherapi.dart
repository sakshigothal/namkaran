import 'dart:convert';
import 'dart:html';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:namkaran/models/whether_api_data.dart';

class WhetherApi extends StatefulWidget {
  const WhetherApi({ Key? key }) : super(key: key);

  @override
  _WhetherApiState createState() => _WhetherApiState();
}

class _WhetherApiState extends State<WhetherApi> {
  late String city;
  var key="042a10218a6134f1de90a2dfccfc7b07";
  var corddict={};
  var pp={};

  whetherdata(city) async{
  //   final para={"q": city,"appid":"042a10218a6134f1de90a2dfccfc7b07"};

  //  final uri= Uri.https("api.openweathermap.org","/data/2.5/weather",para);

  //  final response =await http.get(uri);

  var resp= await http.get(Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$key"));

  //  print(resp.body);
  Map<String,dynamic>corddict=jsonDecode(resp.body);
  print(corddict);
  WhetherjsonData wp=WhetherjsonData.fromJson(corddict);
  print(wp.name);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    whetherdata("mumbai");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body:Center(child: FutureBuilder(builder: (context,index){},),)
    );
  }

  Widget whetherbox(WhetherjsonData wheth){
    return Column(children: [
      Text("${wheth.name}"),
      Text("${wheth.sys}"),
      Text("${wheth.visibility}"),
      Text("${wheth.weather}"),
      Text("${wheth.wind}")
    ],);
  }
}