import 'package:flutter/material.dart';
import 'package:namkaran/common.dart';
import 'package:namkaran/listpage.dart';

class ChooseGirlOrBoy extends StatefulWidget {
  const ChooseGirlOrBoy({Key? key}) : super(key: key);

  @override
  _ChooseGirlOrBoyState createState() => _ChooseGirlOrBoyState();
}

class _ChooseGirlOrBoyState extends State<ChooseGirlOrBoy> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                    color: Colors.amber,
                  ),
                  child: Center(
                    child: Text(
                      "Girls",
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
                onTap: () {
                  Common.gender = "2";
                  print(Common.gender);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext ctx) => HinduListPage()));
                },
              ),
              SizedBox(
                width: 30,
              ),
              GestureDetector(
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                    color: Colors.amber,
                  ),
                  child: Center(
                    child: Text(
                      "Boys",
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
                onTap: () {
                  Common.gender = "1";
                  print(Common.gender);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext ctx) => HinduListPage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
