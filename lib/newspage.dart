import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:namkaran/models/newsmodel.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  List<Articles> articles = [];
  callApi() async {
    var resp = await http.get(Uri.parse(
        "https://newsapi.org/v2/everything?q=apple&from=2021-09-12&to=2021-09-12&sortBy=popularity&apiKey=0a1ef010299444baa447b581232bf96c"));
    Newsrespone response = Newsrespone.fromJson(jsonDecode(resp.body));
    print(response.articles?.length);
    setState(() {
      articles = response.articles ?? [];
    });
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
      body: ListView.separated(
        itemBuilder: (ctx, index) {
          return ListTile(
            title: Text(articles[index].title ?? ""),
          );
        },
        separatorBuilder: (ctx, index) {
          return Divider();
        },
        itemCount: articles.length,
      ),
    );
  }
}
