import 'package:flutter/material.dart';

import 'models/hindu_cat_response.dart';

class HinduCard extends StatefulWidget {
  final List<HinduCatResponse>? personArr;
  // final int indexNo;
  final HinduCatResponse? selectedPerson;
  const HinduCard({Key? key, this.personArr, this.selectedPerson})
      : super(key: key);

  @override
  _HinduCardState createState() => _HinduCardState();
}

class _HinduCardState extends State<HinduCard> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.pink[200],
        child: Center(
          child: Text(
            "${widget.selectedPerson?.meaning}",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
