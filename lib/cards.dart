import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:namkaran/chooosegirlorboy.dart';
import 'package:namkaran/common.dart';

import 'models/categorydata.dart';

class Cards extends StatefulWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  List<CategoryData> categorylist = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    callApi();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            for (var i = 0; i < categorylist.length; i++) showCards(indexno: i)
          ],
        ),
      )),
    );
  }

  Widget showCards({required int indexno}) {
    return Column(
      children: [
        Center(
          child: GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.purple[300]),
              height: 270,
              width: 270,
              child: Center(
                child: Text(
                  categorylist[indexno].catName,
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ),
            onTap: () {
              Common.categoryId = categorylist[indexno].id;
              Common.categoryName = categorylist[indexno].catName;
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext ctx) => ChooseGirlOrBoy()));
            },
          ),
        ),
        SizedBox(
          height: 30,
        )
      ],
    );
  }

  callApi() async {
    var resp = await http.get(
        Uri.parse("http://mapi.trycatchtech.com/v1/naamkaran/category_list"));
    print(resp.body);

    var category = jsonDecode(resp.body);
    print("list is $category");

    setState(() {
      for (var item in category) {
        categorylist.add(CategoryData.fromJson(item));
      }
    });
  }
}
