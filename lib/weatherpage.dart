import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:namkaran/models/whether_api_data.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({ Key? key }) : super(key: key);

  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {

  WhetherjsonData? weather;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    callApi();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }


  callApi() async {
      var resp= await http.get(Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=mumbai&appid=042a10218a6134f1de90a2dfccfc7b07"));
      print("${resp.body}");

      WhetherjsonData weather=WhetherjsonData.fromJson(jsonDecode(resp.body));
      print("${weather.coord.lat}");

  }
}