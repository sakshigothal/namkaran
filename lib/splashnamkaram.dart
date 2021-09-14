import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NamkaranSplashScreen extends StatefulWidget {
  const NamkaranSplashScreen({Key? key}) : super(key: key);

  @override
  _NamkaranSplashScreenState createState() => _NamkaranSplashScreenState();
}

class _NamkaranSplashScreenState extends State<NamkaranSplashScreen> {
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
