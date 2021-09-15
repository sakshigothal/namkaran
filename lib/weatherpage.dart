import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:namkaran/models/whether_api_data.dart';

import 'main.dart';

class WeatherPage extends StatefulWidget {
  // final String temp;

  const WeatherPage({
    Key? key,
  }) : super(key: key);

  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  TextEditingController cityname = TextEditingController();
  WhetherjsonData? weather;

  // double temp = double.("${weather?.main.temp}");
  final ss = SplashScreen;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    callApi(cityname.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          fit: StackFit.expand,
          children: [
            //  var temp = double.parse("${weather?.main.temp}");
            Image.network(
              "https://i.pinimg.com/originals/b8/93/ff/b893ffb85b82a1fe0287f220f2ceec2f.jpg",
              fit: BoxFit.fill,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: cityname,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40))),
                  ),
                ),
                ElevatedButton(
                    onPressed: () async {
                      callApi(cityname.text);

                      var resp = await http.get(Uri.parse(
                          "https://api.openweathermap.org/data/2.5/weather?q=${cityname.text}&appid=e9939d08886031d2fb120bbb47f87654"));
                      // print("${resp.body}");

                      setState(() {
                        weather =
                            WhetherjsonData.fromJson(jsonDecode(resp.body));
                      });
                      print("${weather?.coord.lat}");
                    },
                    child: Text("Search")),
                Text(
                  "${weather?.name}",
                  style: TextStyle(fontSize: 50, color: Colors.white),
                ),
                Text(
                  "${weather?.weather[0].main}",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                Text("${weather?.main.temp} C",
                    style: TextStyle(fontSize: 25, color: Colors.white))
              ],
            ),
          ],
        ),
      ),
    );
  }

  void callApi(String city) async {
    //  final location = callApi(city);

    var resp = await http.get(Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=${cityname.text}&appid=e9939d08886031d2fb120bbb47f87654"));
    // print("${resp.body}");

    setState(() {
      weather = WhetherjsonData.fromJson(jsonDecode(resp.body));
    });
    print("${weather?.coord.lat}");
  }
}
