import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:namkaran/models/newsdata.dart';

class NewsApp extends StatefulWidget {
  const NewsApp({Key? key}) : super(key: key);

  @override
  _NewsAppState createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> {
  NewsData? news;
  late Map data;
  // List<NewsData> newslist= new List<NewsData>;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    apiCall();
  }

  apiCall() async {
    Map sss;
    var resp = await http.get(Uri.parse(
        "https://newsapi.org/v2/everything?q=tesla&from=2021-08-14&sortBy=publishedAt&apiKey=4298627224554a7d9ab8f95ca7177f74"));

    // print(resp.body);

    data = jsonDecode(resp.body);
    // articallist = Article.fromJson(jsonDecode(resp.body)) as List<Article>;

    setState(() {
      data = jsonDecode(resp.body);
      for (var item in data["articles"]) {
        print(item);
      }
    });
    print("data is $data");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          // child: ,
          ),
    );
  }
}
