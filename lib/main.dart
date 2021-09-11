import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'cards.dart';
import 'listpage.dart';
import 'weatherpage.dart';
import 'whetherapi.dart';

void main() {
  runApp(MaterialApp(home: HinduListPage()));
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Future.delayed(Duration(seconds: 3), () {
  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(
  //         builder: (BuildContext ctx) => HinduListPage(),
  //       ),
  //     );
  //   });
  // }

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
}
