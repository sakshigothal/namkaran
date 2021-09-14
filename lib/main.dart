import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:namkaran/cards.dart';

// import 'cards.dart';
import 'namemeaning.dart';
import 'listpage.dart';
import 'weatherpage.dart';
import 'whetherapi.dart';

// void main() {
//   runApp(MaterialApp(home: HinduListPage()));
// }

void main() {
  runApp(MaterialApp(home: Cards()));
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  TextEditingController city = TextEditingController();

  // final we = WeatherPage();
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

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Container(
  //       height: double.infinity,
  //       width: double.infinity,
  //       color: Colors.pink,
  //       child: Center(child: Lottie.asset("assets/baby.json")),
  //     ),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.pink,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: city,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40))),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    print("${city.text}");

                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext ctx) => WeatherPage()));
                  },
                  child: Text("Search"))
            ],
          )),
    );
  }
}
