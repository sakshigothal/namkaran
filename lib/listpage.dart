import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:namkaran/common.dart';
import 'package:namkaran/models/hindu_cat_response.dart';

import 'namemeaning.dart';

class HinduListPage extends StatefulWidget {
  // final List<HinduCatResponse>? personArr;
  // final int indexNo;
  // final HinduCatResponse? selectedPerson;
  const HinduListPage({Key? key}) : super(key: key);

  @override
  _HinduListPageState createState() => _HinduListPageState();
}

class _HinduListPageState extends State<HinduListPage> {
  // HinduCatResponse? hcr;
  List<HinduCatResponse> personArr = [];
  List respArr = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    callApi();
  }

  callApi() async {
    var resp = await http.get(
      Uri.parse(
          "http://mapi.trycatchtech.com/v1/naamkaran/post_list_by_cat_and_gender?category_id=${Common.categoryId}Id&gender=${Common.gender}"),
    );
    print(resp.body);
    respArr = jsonDecode(resp.body);

    for (var item in respArr) {
      personArr.add(HinduCatResponse.fromJson(item));
    }
    // setState(() {
    //   hcr = HinduCatResponse.fromJson(json.decode(resp.body));
    // });
    // print(hcr);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.pink[200],
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  personArr[index].name,
                  // style: TextStyle(fontSize: 25),
                ),
                trailing: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => HinduCard(
                                    personArr: personArr,
                                    // indexNo: index,
                                    selectedPerson: personArr[index],
                                  )));
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.pink)),
                    child: Text("Meaning")),
              );
            },
            itemCount: personArr.length,
          )
          // Text("${hcr!.meaning}")
          ),
    );
  }
}



//${widget.personarr?[widget.indexno].meanig}