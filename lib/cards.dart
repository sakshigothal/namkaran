import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:namkaran/listpage.dart';

class CategoryCard extends StatefulWidget {
  const CategoryCard({Key? key}) : super(key: key);

  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.pink,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  showcard(),
                  SizedBox(height: 20),
                  showcard(),
                  SizedBox(height: 20),
                  showcard(),
                ],
              ),
            )),
      ),
    );
  }

  Widget showcard() {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          (MaterialPageRoute(
            builder: (BuildContext ctx) => HinduListPage(),
          )),
        );
      },
      child: Container(
        height: 300,
        width: 300,
        color: Colors.black,
        // child: Row(
        //   children: [
        //     ElevatedButton(onPressed: (){}, child: Text("Boy")),
        //     ElevatedButton(onPressed: (){}, child: Text("Girl")),
        //   ],
        // ),
      ),
    );
  }
}
