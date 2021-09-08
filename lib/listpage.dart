import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:namkaran/models/hindu_cat_response.dart';

class HinduListPage extends StatefulWidget {
  const HinduListPage({ Key? key }) : super(key: key);

  @override
  _HinduListPageState createState() => _HinduListPageState();
}

class _HinduListPageState extends State<HinduListPage> {
  var contarr=[];
  
  // late List<HinduCatResponse> response;

callApi() async{
    var resp= await http.get(Uri.parse("http://mapi.trycatchtech.com/v1/naamkaran/post_list_by_cat_and_gender?category_id=8&gender=1"),);
    print(resp.body);
    List respnse=jsonDecode(resp.body);
    // HinduCatResponse hcr=HinduCatResponse.fromJson();
    // print(hcr);

    // contarr=json.decode(resp.body);
    // print("$contarr");
    // HinduCatResponse ss= HinduCatResponse.fromJson(response);
    // response=contarr[ss.meaning];
    // print(ss.categoryId);
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
        child: ListView.builder(itemCount: contarr.length,itemBuilder: (context,index){
          return ListTile(leading: Text(""),);
        })
      ),
    );
  }

  
}