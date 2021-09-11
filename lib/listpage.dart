import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:namkaran/models/hindu_cat_response.dart';

class HinduListPage extends StatefulWidget {
  const HinduListPage({Key? key}) : super(key: key);

  @override
  _HinduListPageState createState() => _HinduListPageState();
}

class _HinduListPageState extends State<HinduListPage> {
  HinduCatResponse? hcr;
  List<HinduCatResponse> hinduresp=[];
  List hindu=[];

  callApi() async {
    var resp = await http.get(
      Uri.parse(
          "http://mapi.trycatchtech.com/v1/naamkaran/post_list_by_cat_and_gender?category_id=8&gender=1"),
    );
    print(resp.body);
    // List response=jsonDecode(resp.body);
     setState(() {
       hcr = HinduCatResponse.fromJson(json.decode(resp.body));
     });
    print(hcr);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    callApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(child: Text("${hcr?.meaning}")),
        // Text("${hcr!.meaning}")
      ),
    );
  }
}



//${widget.personarr?[widget.indexno].meanig}