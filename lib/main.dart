import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:namkaran/cards.dart';
import 'package:namkaran/itemsdata.dart';
import 'package:namkaran/localjsonreader.dart';
import 'package:namkaran/newsapp.dart';
import 'package:namkaran/newspage.dart';
import 'package:namkaran/splashnamkaram.dart';
import 'package:namkaran/videodemo.dart';

// import 'cards.dart';
import 'kalyanapi.dart';
import 'namemeaning.dart';
import 'listpage.dart';
import 'weatherpage.dart';
import 'whetherapi.dart';

// void main() {
//   runApp(MaterialApp(home: NewsApp()));
// }

// void main() {
//   runApp(MaterialApp(home: Cards()));
// }

// void main() {
//   runApp(MaterialApp(home: KalyanApiExample()));
// }

void main() {
  runApp(MaterialApp(home: ItemsData()));
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  TextEditingController city = TextEditingController();

  // final we = WeatherPage();
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext ctx) => Cards(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.pink,
        child: Center(child: Lottie.asset("assets/baby.json")),
      ),
    );
  }

  //weather api

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Container(
  //         height: double.infinity,
  //         width: double.infinity,
  //         color: Colors.pink,
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           crossAxisAlignment: CrossAxisAlignment.center,
  //           children: [
  //             Padding(
  //               padding: const EdgeInsets.all(8.0),
  //               child: TextField(
  //                 controller: city,
  //                 decoration: InputDecoration(
  //                     border: OutlineInputBorder(
  //                         borderRadius: BorderRadius.circular(40))),
  //               ),
  //             ),
  //             ElevatedButton(
  //                 onPressed: () {
  //                   print("${city.text}");

  //                   Navigator.pushReplacement(
  //                       context,
  //                       MaterialPageRoute(
  //                           builder: (BuildContext ctx) => WeatherPage()));
  //                 },
  //                 child: Text("Search"))
  //           ],
  //         )),
  //   );
  // }
}
